create table if not exists site.car_brand(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    brand_name              varchar(64)     not null,
    constraint pk__site__car_brand primary key (id)
);

create unique index uix__site__car_brand__brand_name on site.car_brand(brand_name);

comment on table site.car_brand                 is 'Марка автомобиля';
comment on column site.car_brand.id             is 'Идентификатор таблицы';
comment on column site.car_brand._ins_date      is 'Время добавления записи';
comment on column site.car_brand.brand_name     is 'Наименование марки автомобиля';
