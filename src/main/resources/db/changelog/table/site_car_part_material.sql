create table if not exists site.car_part_material(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_part_id             int             not null,
    material_id             int             not null,
    constraint pk__site__car_part_material primary key (id),
    constraint fk__site__car_part_material__car_part_id___site__car_part foreign key (car_part_id) references site.car_part(id),
    constraint fk__site__car_part_material__material_id___site__material foreign key (material_id) references site.material(id)
);

create index if not exists "ix__site__car_part_material__car_part_id" on site.car_part_material(car_part_id);

-- аналогично, считаем что по материалом никто не ищет, индекс не нужен


comment on table site.car_part_material                 is 'Из каких материалов состоит зап.часть';
comment on column site.car_part_material.id             is 'Идентификатор таблицы';
comment on column site.car_part_material._ins_date      is 'Время добавления записи';
comment on column site.car_part_material.car_part_id    is 'К какой запчасти относится запись';
comment on column site.car_part_material.material_id    is 'Ссылка на материал';