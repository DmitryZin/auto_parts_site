create table if not exists site.car_engine(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_id                  int             not null,
    engine_name             varchar(64)     not null,
    constraint pk__site__car_engine primary key (id),
    constraint fk__site__car_engine__car_id___site__car foreign key (car_id) references site.car(id)
);
create index if not exists "ix__site__car_engine__car_id" on site.car_engine(car_id);
