create table if not exists site.color(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    color_name              varchar(64)     not null,
    constraint pk__site__color primary key (id)
);

comment on table site.color             is 'Доступные цвета запчастей';
comment on column site.color.id         is 'Идентификатор таблицы';
comment on column site.color._ins_date  is 'Время добавления записи';
comment on column site.color.color_name is 'Наименование цвета';