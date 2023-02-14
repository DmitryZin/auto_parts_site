create table if not exists site.car_part_group(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    part_group_name         varchar(64)     not null,
    constraint pk__site__car_part_group primary key (id)
);

