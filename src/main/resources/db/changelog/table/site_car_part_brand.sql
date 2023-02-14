create table if not exists site.car_part_brand(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    part_brand_name         varchar(64)     not null,
    constraint pk__site__car_part_brand primary key (id)
);

comment on table site.car_part_brand                    is 'Производители запасных частей';
comment on column site.car_part_brand.id                is 'Идентификатор таблицы';
comment on column site.car_part_brand._ins_date         is 'Время добавления записи';
comment on column site.car_part_brand.part_brand_name   is 'Наименование производителя';