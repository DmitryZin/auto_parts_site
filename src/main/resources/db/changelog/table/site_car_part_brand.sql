create table if not exists site.car_part_brand(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    part_brand_name         varchar(64)     not null,
    constraint pk__site__car_part_brand primary key (id)
);
