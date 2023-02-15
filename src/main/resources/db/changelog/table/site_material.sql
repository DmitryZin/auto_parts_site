create table if not exists site.material(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    material_name           varchar(64)     not null,
    constraint pk__site__material primary key (id)
);

create unique index uix__site__material__material_name on site.material(material_name);

comment on table site.material                  is 'Доступные материалы запчастей';
comment on column site.material.id              is 'Идентификатор таблицы';
comment on column site.material._ins_date       is 'Время добавления записи';
comment on column site.material.material_name   is 'Наименование материалаgit';