create table if not exists site.car_part_description(
    id                      int             not null,
    _ins_date               timestamp       not null default current_timestamp,
    description             text            not null,
    constraint pk__car_part_description primary key (id),
    constraint fk__car_part_description__id___site_car_part foreign key (id) references site.car_part(id)
);

-- описания в отдельной таблице, так как его показываем только на полной странице
-- а без большого текстового поля радом с таблицей данных. поиск по таблице запчастей будет быстрее

comment on table site.car_part_description              is 'Полное описание зап.части';
comment on column site.car_part_description.id          is 'Идентификатор таблицы - совпадает с идентификатором описываемой запчасти';
comment on column site.car_part_description._ins_date   is 'Время добавления записи';
comment on column site.car_part_description.description is 'Описание';