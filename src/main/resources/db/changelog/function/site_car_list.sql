-- с точки зрения оптимизации - запрос не корректный
-- смотря как принято
-- либо разбить эту функцию на 4е разные
-- либо сюда "напихать" кучу if для каждого случая, и опять же вызывать либо частные случаи, либо прям выборки тут писать
-- тем более двигатели нужны только когда они заданы, а из-за них приходится использовать distinct

create or replace function site.car_list(in in_brand_id int, in in_model_id int, in in_car_id int, in in_engine_id int )
    returns table(car_id int, engine_id int)
as $$
    select distinct
        c.id as car_id,
        e.id as engine_id
    from
        site.car c
        inner join site.car_model m
            on m.id = c.car_model_id
        inner join site.car_brand b
            on b.id = m.car_brand_id
        left join site.car_engine e
            on e.car_id = c.id
            and in_engine_id is not null
    where
        (in_brand_id is not null and b.id = in_brand_id)
        or
        (in_model_id is not null and m.id = in_model_id)
        or
        (in_car_id is not null and c.id = in_car_id)
        or
        (in_engine_id is not null and e.id is not null and e.id = in_engine_id)
        or
        (in_brand_id is null and in_model_id is null and in_car_id is null and in_engine_id is null)

$$ language sql;
