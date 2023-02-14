create table if not exists site.car_part(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_model_id            int             not null,
    car_engine_id           int             null,
    country_id              int             not null,
    car_part_brand_id       int             not null,
    car_part_group_id       int             not null,
    vendor_code             varchar(255)    null,
    sku                     varchar(255)    null,
    part_name               varchar(255)    not null,
    price                   money           null null constraint ch__car_part_price_positive check (price >= 0.00::money),
    rating                  numeric(6, 1)   null,
    key_features            jsonb           null,
    quantity_in_stock       int             null,
    constraint pk__site__car_part primary key (id),
    constraint fk__site__car_part__car_model_id___site__car_model foreign key (car_model_id) references site.car_model(id),
    constraint fk__site__car_part__car_engine_id___site__car_engine foreign key (car_engine_id) references site.car_engine(id),
    constraint fk__site__car_part__country_id___site__country foreign key (country_id) references site.country(id),
    constraint fk__site__car_part__car_part_brand_id___car_part_brand foreign key (car_part_brand_id) references site.car_part_brand(id),
    constraint fk__site__car_part__car_part_group_id___site__car_part_group foreign key (car_part_group_id) references site.car_part_group(id)
);