create or replace function site.car_part_analog_list(in in_page_num int, in in_page_count int, in in_car_part_id int )
    returns table(id int, sku varchar(255), part_name varchar(255), price decimal(12, 2), rating numeric(6, 1),
                  brand_name varchar(64), country_name varchar(64), car_brand varchar(64), car_model varchar(64),
                  manufacture_year_start int, manufacture_year_end int, engine_name varchar(64), key_features text,
                  quantity_in_stock int, description text, vendor_code varchar(255), images text, colors text, materials text,
                  group_name varchar(64))
as $$
    select
        cp.id                       as id,
        cp.sku                      as sku,
        cp.part_name                as part_anme,
        cp.price                    as price,
        cp.rating                   as rating,
        b.brand_name                as brand_name,
        cn.country_name             as country_name,
        b.brand_name                as car_brand,
        m.model_name                as car_model,
        c.manufacture_year_start    as manufacture_year_start,
        c.manufacture_year_end      as manufacture_year_end,
        e.engine_name               as engine_name,
        cp.key_features             as key_features,
        cp.quantity_in_stock        as quantity_in_stock,
        d.description               as description,
        cp.vendor_code              as vendor_code,
        i.images                    as images,
        clr.color                   as colors,
        cm.material                 as materials,
        cg.part_group_name          as group_name
    from
        site.car_part cp
        inner join site.car_part orn
            on orn.car_id = cp.car_id
            and orn.id <> cp.id
            and orn.car_part_group_id = cp.car_part_group_id
            and (orn.car_engine_id is null or cp.car_engine_id is null or orn.car_engine_id = cp.car_engine_id)
        inner join site.car c
                   on c.id = cp.car_id
        inner join site.car_model m
                   on m.id = c.car_model_id
        inner join site.car_brand b
                   on b.id = m.car_brand_id
        inner join site.country cn
                   on cn.id = cp.country_id
        inner join site.car_part_brand cb
                   on cb.id = cp.car_part_brand_id
        inner join site.car_part_group cg
                   on cg.id = cp.car_part_group_id
        left join site.car_engine e
                  on e.id = cp.car_engine_id
        left join site.car_part_description d
                  on d.id = cp.id
        left join lateral (
        select json_agg(json_build_object('image_url', ci.url)) as images
        from
            site.car_part_image ci
        where ci.car_part_id = cp.id
        ) i on 1 = 1
        left join lateral (
        select json_agg(json_build_object('color', c.color_name)) as color
        from
            site.car_part_color cl
                inner join site.color c
                           on c.id = cl.color_id
        where
                cl.car_part_id = cp.id
        ) clr on 1 = 1
        left join lateral (
        select json_agg(json_build_object('material', m.material_name)) as material
        from
            site.car_part_material cm
                inner join site.material m
                           on m.id = cm.material_id
        where
                cm.car_part_id = cp.id
        ) cm on 1 = 1
    where orn.id = in_car_part_id
order by
    cp.id
limit in_page_count
    offset ((in_page_num - 1) * in_page_count);
$$ language sql;