# auto_parts_site
REST API между сайтом по продаже автозапчастей и backend частью 

Мультиязычность сознательно не стал учитывать, на сайте нет плашки + мне кажется это "пустое" усложнение для тестового задания.

Историю цены и историю рейтинга аналогично - не стал учитывать, так как
1. можно запрограммировать механизм, который в текущей структуре будет поддерживать актуальные данные в немного денормализованном виде
2. для сайта уж точно не требуется история цены (мы ж  не агрегатор, который отображает ее историю, и не отдел анализа для каких-то маркетинговых услуг)

Swagger  добавлен только для тестирования, поэтому его не настраивал.
По задаче он вообще не нужен, так как вызывать сервис будет UI сайта.