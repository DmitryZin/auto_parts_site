create table if not exists site.car_part(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_id                  int             not null,
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
    -- sale new hot и т.п. пропустил сознательно, особо на "показания" навыков/умений не влияет
    constraint pk__site__car_part primary key (id),
    constraint fk__site__car_part__car_id___site__car_model foreign key (car_id) references site.car(id),
    constraint fk__site__car_part__car_engine_id___site__car_engine foreign key (car_engine_id) references site.car_engine(id),
    constraint fk__site__car_part__country_id___site__country foreign key (country_id) references site.country(id),
    constraint fk__site__car_part__car_part_brand_id___car_part_brand foreign key (car_part_brand_id) references site.car_part_brand(id),
    constraint fk__site__car_part__car_part_group_id___site__car_part_group foreign key (car_part_group_id) references site.car_part_group(id)
);



comment on table site.car_part                      is 'Запасные части';
comment on column site.car_part.id                  is 'Идентификатор таблицы';
comment on column site.car_part._ins_date           is 'Время добавления записи';
comment on column site.car_part.car_id              is 'Модель какой марки';
comment on column site.car_part.car_engine_id       is 'Подходит для какого двигателя (для простоты только для одного)';
comment on column site.car_part.country_id          is 'Страна производства';
comment on column site.car_part.car_part_brand_id   is 'Производитель';
comment on column site.car_part.car_part_group_id   is 'К какой группе относится - для подбора аналогов';
comment on column site.car_part.vendor_code         is 'Код производителя';
comment on column site.car_part.sku                 is 'Артикул';
comment on column site.car_part.part_name           is 'Наименование запчасти';
comment on column site.car_part.price               is 'Цена запчасти';
comment on column site.car_part.rating              is 'Рейтинг запчасти';
comment on column site.car_part.key_features        is 'Доп параметры запчасти';
comment on column site.car_part.quantity_in_stock   is 'Остаток на складе';