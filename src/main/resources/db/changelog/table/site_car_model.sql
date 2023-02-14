create table if not exists site.car_model(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_brand_id            int             not null,
    model_name              varchar(64)     not null,
    constraint pk__site__car_model primary key (id),
    constraint fk__site__car_model__car_brand_id___site__car_brand foreign key (car_brand_id) references site.car_brand(id)
);

create index if not exists "ix__site__car_model__bcar_brand_id" on site.car_model(car_brand_id);

comment on table site.car_model                 is 'Модель автомобиля';
comment on column site.car_model.id             is 'Идентификатор таблицы';
comment on column site.car_model._ins_date      is 'Время добавления записи';
comment on column site.car_model.car_brand_id   is 'Модель какой марки';
comment on column site.car_model.model_name     is 'Наименование модели автомобиля';