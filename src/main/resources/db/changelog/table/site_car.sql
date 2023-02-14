create table if not exists site.car(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    manufacture_year_start  int             not null constraint ch__positive__manufacture_year_start check (manufacture_year_start > 0),
    manufacture_year_end    int             null constraint ch__manufacture_year_end check (manufacture_year_end is null or manufacture_year_end > car.manufacture_year_start),
    car_model_id            int             not null,
    constraint pk__site__car primary key (id),
    constraint fk__site__car__car_model_id___site__car_model foreign key (car_model_id) references site.car_model(id)
);
create index if not exists "ix__site__car__car_model_id" on site.car(car_model_id);


comment on table site.car                           is 'Детализация модели автомобиля до года выпуска';
comment on column site.car.id                       is 'Идентификатор таблицы';
comment on column site.car._ins_date                is 'Время добавления записи';
comment on column site.car.manufacture_year_start   is 'Год начала выпуска';
comment on column site.car.manufacture_year_end     is 'Год завершения выпуска';
comment on column site.car.car_model_id             is 'Детализация какой модели';
