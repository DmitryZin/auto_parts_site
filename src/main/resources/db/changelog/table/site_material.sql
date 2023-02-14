create table if not exists site.material(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    material_name           varchar(64)     not null,
    constraint pk__site__material primary key (id)
);

