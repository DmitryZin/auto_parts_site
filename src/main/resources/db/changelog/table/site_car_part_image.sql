create table if not exists site.car_part_image(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_part_id             int             not null,
    url                     varchar(255)    not null,
    constraint pk__site__car_part_image primary key (id),
    constraint fk__site__car_part_image__car_part_id___site__car_part foreign key (car_part_id) references site.car_part(id)
);

create index if not exists "ix__site__car_part_image__car_part_id" on site.car_part_image(car_part_id);