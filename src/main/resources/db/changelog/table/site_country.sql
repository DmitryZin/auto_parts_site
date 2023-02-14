create table if not exists site.country(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    country_name            varchar(64)     not null,
    constraint pk__site__country primary key (id)
);


comment on table site.country               is 'Доступные страны';
comment on column site.country.id           is 'Идентификатор таблицы';
comment on column site.country._ins_date    is 'Время добавления записи';
comment on column site.country.country_name is 'Наименование страны';