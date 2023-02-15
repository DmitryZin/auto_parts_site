--я осознаю, что при неудачном первом запуске идентификаторы могут разъехаться
--но усложнять данный скрипт для демонстрации навыков sql не хочется тратить время

insert into site.material(material_name)
values
    ('Steel'), ('Aluminium'), ('Thorium')  on conflict (material_name) do nothing;

insert into site.color(color_name)
values
    ('white'), ('yellow'), ('black'), ('red') on conflict (color_name) do nothing;

insert into site.country(country_name)
values
    ('Japan'), ('China'), ('Germany'), ('France') on conflict  (country_name) do nothing ;

insert into site.car_part_group(part_group_name)
values
    ('Brakes'), ('Leds'), ('Tires') on conflict (part_group_name) do nothing ;

insert into site.car_brand(brand_name)
values
    ('VW'), ('KIA'), ('BMW'), ('Chery') on conflict (brand_name) do nothing ;

insert into site.car_model(car_brand_id, model_name)
values
    (1, 'Tiguan'), (1, 'Tuareg'), (2, 'Tucson');

insert into site.car(manufacture_year_start, manufacture_year_end, car_model_id)
values
    (2007, 2014, 1), (2014, 2021, 1), (2008, 2020, 2);

insert into site.car_engine(car_id, engine_name)
values
    (1, '1.4'), (1, '2.0'), (2, '1.4'), (2, '2.0');

insert into site.car_part_brand(part_brand_name)
values
    ('Brandix'), ('Brembo'), ('Bosh');

insert into site.car_part(car_id, car_engine_id, country_id, car_part_brand_id, car_part_group_id, vendor_code, sku, part_name, price, rating, key_features, quantity_in_stock)
values
    (1, null, 2, 1, 1, '111-203940-1', 'J8877292', 'Super Brake', 1000, 3.2, '{"quality": "low", "speed":"750 rpm"}', 10),
    (2, 3, 3, 3, 1, 'code1111', 'SKU0000099', 'Brembo brake', 999.99, 4.9,'{"quality": "high", "speed":"1000 rpm"}', 1);

insert into site.car_part_image(car_part_id, url)
values
    (1, 'http://url.ru'), (1, 'http://url2.ru');