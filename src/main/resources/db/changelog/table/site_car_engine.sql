create table if not exists site.car_engine(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_id                  int             not null,
    engine_name             varchar(64)     not null,
    constraint pk__site__car_engine primary key (id),
    constraint fk__site__car_engine__car_id___site__car foreign key (car_id) references site.car(id)
);
create index if not exists "ix__site__car_engine__car_id" on site.car_engine(car_id);


comment on table site.car_engine                is 'Доступные двигателя автомобиля';
comment on column site.car_engine.id            is 'Идентификатор таблицы';
comment on column site.car_engine._ins_date     is 'Время добавления записи';
comment on column site.car_engine.car_id        is 'Двигатели какой конкретно модели';
comment on column site.car_engine.engine_name   is 'Наименование двигателя модели автомобиля (*)условно объем и мощность)';