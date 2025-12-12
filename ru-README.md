# Анализ магазина парфюмерии

## 1. Описание

 Проект для анализа данных магазина парфюмерии, выявления проблем с запасами на складе, исследования факторов влияющих на доход, эффективность поставщиков и общих показателей розничной торговли. Используются: SQL, Python и Power BI. Анализ выделяет ключевые тенденции, самые продаваемые категории продуков и т.д.. Проект включает в себя очистку данных, разведочный анализ данных (EDA), дашборд, и структурированную документацию для демонтрации практических навыков анализа данных в контексте розничной торговли и косметики.

> ## DISCLAIMER

>Проект основан на вымышленном магазине пафюмерии. Все данные сгенерированы рандомно при помощи сервиса Mockaroo.com для учебных целей и составления портфолио. Магазин, поставщики, заказы, и т.д. не представляют никакую реальную компанию или рельных личностей.

## 2. Структура проекта
- ## NaturalCosmeticsShop
  - ### tables
    - inventory.csv (*запасы*)
    - products.csv (*продукты*)
    - sales.csv (*продажи*)
    - suppliers.csv (*поставщики*)
  - ### notebooks
    - etl.ipynb (*извлечение, проеобразование и загрузка данных*)
    - eda.ipynb (*разведочный анализ данных*)
  - ### sql
    - create_tables.sql (*создание таблиц*)
    - insert_tables.sql (*вставка таблиц*)
    - etl.sql (*извлечение, проеобразование и загрузка данных*)
    - analytical_queries.sql (*анализ данных*)
    - power_bi_views.sql (*создание представлений (views) для создания дашборда в Power BI*)
  - ### powerbi
    - dashboard.pbix (*интерактивный дашборд (3 листа)*)
  - ### documentation
    -  structure.pdf (*структура проекта в виде блок-схем*)

     
## 3. Инструменты и технологии

1) Python _(pandas, numpy, matplotlib, seaborn)_
   
2) SQL _(postgresql)_

3) Power BI _(дашборд)_

4) Mockaroo _(генерация данных)_

5) Jupiter notebook

## 4. Основыне шаги

1. Генерация и сбор данных 

2. Очистка данных (ETL)

3. Разведочный анализ данных (EDA)

4. Визуализация резльтатов в Python с помощью библиотек Matplotlib и Seaborn

5. Анализ данных в SQL 

6. Создание интерактивного дашборда в Power BI 

7. Создание документации и выводы

## 5. Скриншоты
### 5.1 Power BI Дашборд (частично)

  <img width="734" height="482" alt="image" src="https://github.com/user-attachments/assets/6fdfcaf8-7164-4499-8bd9-a0a39f8f2ed3" />


  ### 5.2 EDA (Jupiter)

 <img width="751" height="549" alt="image" src="https://github.com/user-attachments/assets/669c813c-09bf-4e07-825a-5a53d7af5af9" />

 <img width="756" height="571" alt="image" src="https://github.com/user-attachments/assets/f414e54d-d0de-44e5-9bc0-b56dd3aeaa56" />


  ### 5.3 SQL
  
  <img width="515" height="662" alt="image" src="https://github.com/user-attachments/assets/d1dcdb5a-c2cb-47a9-9647-02c81cdc5b39" />

  ## 6. Как использовать/открывать

 ### 6.1 SQL запросы: 

 SQL запросы написаны для PostgreSQL.  

Чтоб запустить их:

1. Создайте базу данных cosmetics в PostgreSQL.

2. Импортируйте CSV файлы из папки _`tables/`_.

3. Откройте файлы _`.sql`_ в pgAdmin Query.

4. Запустите запросы (f5)

### 6.2 Python 

Анализ Python расположен в папке _`notebooks/`_.  

**Чтобы запустить**:

1) Установите Python версии 3.10+

2) Запустите программу Jupiter Notebook

3) Откройте файлы _`.ipnyb`_  (etl и eda)

4) Убедитесь, что  CSV файлы из папки  _`tables/`_ находятся по тому же пути, чтобы код запускался корректно.

### 6.3 Power BI

Дашборд расположен в папке  _`powerbi`_.

1) Скачайте файл _`.pbix`_. 

2) Откройте его в программе Power BI Desktop 

## 7. Результаты

Таблицы:
- inventory.csv (*запасы*) состоит из 4 столбцов (идентификатор парфюма, количество на складе, уровень перезаказа, дата последнего пополнения запасов) и 100 строк
- products.csv (*продукты*) состоит из 6 столбцов (идентификатор продукта, название парфюма, бренд, категория, цена, идентификатор поставщика) и 100 строк
- sales.csv (*продажи*) состоит из 8 столбцов (идентификатор продажи, дата, идентификатор парфюма) 3000 строк
- suppliers.csv (*поставщики*) состоит из 4 столбцов (идентификатор поставщика, имя поставщика, страна, контактная электронная почта) и 31 строки

### 7.1 Диаграмы Python: 
- количество парфюма по брендам (number of perfumes by brand)
- распределение цен (price distribution)
- количество продаж в день (sales count per day)
- ежемеячный объем продаж (monthly sales volume)
- доход по брендам (revenue by brand)
- ещп 10 парфюмов по доходу (top 10 perfumes by revenue)
- доход по поставщикам (revenue by supplier)
- ежедневный доход (daily revenue)
- доля дохода по категории (revenue share by category)
- количество на складе по бренду (stock quantity by brand)

**Выводы**
- У Брендов Dior и Yves Saint Laurent самое большое количество парфюмов доступных в магазине.
- Больше всего продаж было в середине февраля (>25), и меньше всего в середине мая (<5)
- Бренды с самым высоким доходом: Diptyque, Dior, Jo Malone, Tom Ford, Yves Saint Laurent (>$25k), с самым низким доходом: Guerlain, Dunhill, Ralph Lauren, Estee Lauder (<$3.5k)
- Парфюм с самым высоким доходом: Neroli Portofino (>$20k)
- Поставщик с самым высоким доходом: L’Oreal Luxe (>$30k), с самым низким доходом: Inter Parfums UK Ltd. (<$5k)

  ### 7.2 Диаграммы Power BI:
- доход по брендам (revenue by brand)
- доход по категориям (revenue by category)
- доход по месяцам и категориям (revenue by month and category)
- доход по месяцам (revenue by month)
- топ 10 парфюмов по доходу (top 10 perfumes by revenue)
- доля дохода и накопительная доля (revenue share & cumulative share by brand)
- количество парфюмов по категориям (perfumes count by category)
- количество продаж по категориям (sales count by category)
- количество парфюмов по поставщикам (perfumes count by supplier)
- топ 10 брендов по среднему уровню перезаказов (top 10 avg reorder level by brand)

**Выводы**
- Бренды с самым высоким доходом: Yves Saint Laurent ($32,360), Tom Ford ($28,430), Jo Malone ($28,425), Dior ($28,345); бренды с самым низким доходом: Guerlain ($2,250),  Dunhill ($2,280), Ralph Lauren ($2,880), Estee Lauder ($3,120)
- Категория с самым высоким доходом: Eau de Parfum ($250,010); с самым низким доходом: Eau de Cologne ($12,740)
- Месяцы с самым высоким доходом: февраль ($62,984), июнь ($64,806); с самым низким доходом: январь ($8,706), август ($45,572)
- ABC классификация: 
    - бренды класса A, такие как:  Yves Saint Laurent, Tom Ford, Jo Malone, Dior, Diptyque - обеспечивают большую часть дохода.
    - бренды класса B, такие как: Chloe, Bvlgary, Givenchy, Tiffany&Co., Chanel - вносят вклад в общий доход на постоянной основе, но не более 15-20% от общего дохода.
    - бренды класса C, такие как: Guerlain, Dunhill, Ralph Lauren, Estee Lauder, Hugo Boss - оставшийся доход. 

 ### 7.3 SQL результаты
Полученные таблицы:
- количество проданного парфюма в месяц по брендам (monthly units sold)
- количество проданного парфюма в месяц по названию парфюма (monthly sales by perfume name)
- топ 10 брендов по количеству проданного парфюма (top 10 brands (units sold))
- доход по названию парфюма (revenue by perfume name)
- Классификация типов движений (movement classification)
- эффективность поставщиков (supplier performance)
- топ 10 самых медленно продающихся парфюмов (top 10 slowest sellers)
- предполагаемы оборот запасов (estimated inventory turnover)

  ## 8. Автор

Галия Исламова

*email: galiya.is.98@gmail.com*

  
