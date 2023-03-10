create table if not exists site.car_part_color(
    id                      int             not null generated always as identity,
    _ins_date               timestamp       not null default current_timestamp,
    car_part_id             int             not null,
    color_id                int             not null,
    constraint pk__site__car_part_color primary key (id),
    constraint fk__site__car_part_color__car_part_id___site__car_part foreign key (car_part_id) references site.car_part(id),
    constraint fk__site__car_part_color__color_id___site__color foreign key (color_id) references site.color(id)
);

create index if not exists "ix__site__car_part_color__car_part_id" on site.car_part_color(car_part_id);

-- считаем, что по цвету запчасти никто не ищет

comment on table site.car_part_color                    is 'Какие цвета есть на зап.части';
comment on column site.car_part_color.id                is 'Идентификатор таблицы';
comment on column site.car_part_color._ins_date         is 'Время добавления записи';
comment on column site.car_part_color.car_part_id       is 'Ссылка на зап. часть';
comment on column site.car_part_color.color_id          is 'Какой цвет содержится';