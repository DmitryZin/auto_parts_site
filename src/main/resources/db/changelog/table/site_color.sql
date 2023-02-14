create table if not exists site.color(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    color_name              varchar(64)     not null,
    constraint pk__site__color primary key (id)
);

