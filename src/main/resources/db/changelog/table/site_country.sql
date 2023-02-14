create table if not exists site.country(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    country_name            varchar(64)     not null,
    constraint pk__site__country primary key (id)
);

