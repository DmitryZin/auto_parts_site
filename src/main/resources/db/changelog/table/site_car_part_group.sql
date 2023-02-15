create table if not exists site.car_part_group(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    part_group_name         varchar(64)     not null,
    constraint pk__site__car_part_group primary key (id)
);

create unique index uix__site__car_part_group__part_group_name on site.car_part_group(part_group_name);

comment on table site.car_part_group                    is 'Группы запчастей';
comment on column site.car_part_group.id                is 'Идентификатор таблицы - совпадает с идентификатором описываемой запчасти';
comment on column site.car_part_group._ins_date         is 'Время добавления записи';
comment on column site.car_part_group.part_group_name   is 'Наименование группы';