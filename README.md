[README на русском](./ru-README.md)


# Perfume Shop Analysis

## 1. Description

This project analyzes a mock dataset of a perfume shop, identify stock issues, revenue drivers, supplier efficiency, and overall retail performance. Using SQL, Python, and Power BI, the analysis identifies key trends, top-selling categories. The project includes data cleaning, exploratory analysis, visual dashboards, and structured documentation to demonstrate practical data-analysis skills in a retail and perfume context.

> ## DISCLAIMER

>This project is based on a fictional perfume shop. All datasets were randomly generated using Mockaroo.com for educational and portfolio purposes. The shop, customers, orders, suppliers and all business entities do not represent any real company or real individuals. 

## 2. Structure
- ## NaturalCosmeticsShop
  - ### tables
    - inventory.csv 
    - products.csv
    - suppliers.csv
    - sales.csv
    - full_clea_data.csv (created after ETL in Python)
  - ### notebooks
    - etl.ipynb
    - eda.ipynb
  - ### sql
    - create_tables.sql
    - insert_tables.sql
    - etl.sql
    - analytical_queries.sql
    - views.sql
  - ### powerbi
    - dashboard.pbix
  - ### documentation
    -  structure.pdf

     
## 3. Tools and technologies

1) Python _(pandas, numpy, matplotlib, seaborn)_
   
2) SQL _(postgresql)_

3) Power BI _(visualisation)_

4) Mockaroo _(data generation)_

5) Jupiter notebook

## 4. Key steps

1. Data generation and collection

2. Data cleaning (ETL)

3. EDA (exploratory data analysis)

4. Visualization in Python

5. SQL analysis

6. Power BI interactive dashboard

7. Conclusions

## 5. Screenshots
   
   ### 5.1 Power BI dashboard (part)

  <img width="734" height="482" alt="image" src="https://github.com/user-attachments/assets/6fdfcaf8-7164-4499-8bd9-a0a39f8f2ed3" />


  ### 5.2 EDA (Jupiter)

 <img width="751" height="549" alt="image" src="https://github.com/user-attachments/assets/669c813c-09bf-4e07-825a-5a53d7af5af9" />

 <img width="756" height="571" alt="image" src="https://github.com/user-attachments/assets/f414e54d-d0de-44e5-9bc0-b56dd3aeaa56" />


  ### 5.3 SQL
  
  <img width="515" height="662" alt="image" src="https://github.com/user-attachments/assets/d1dcdb5a-c2cb-47a9-9647-02c81cdc5b39" />

 ## 6. How to use/open

 ### 6.1 SQL queries: 

The SQL scripts were written for PostgreSQL.  

To run them:

1. Create a PostgreSQL database.

2. Import the CSV files from the _`tables/`_ folder.

3. Open the _`.sql`_ files in pgAdmin Query Tool.

4. Run them

### 6.2 Python 

The Python analysis is located in the _`notebooks/`_ folder.  

**To run the notebooks**:

1) Install Python 3.10+

2) Launch Jupiter Notebook

3) Open _`.ipnyb`_ files (etl and eda)

4) Make sure the CSV files from the _`tables/`_ folder are in the same directory structure so the notebooks can load them correctly.

### 6.3 Power BI

Dashboard is located in the _`powerbi`_ folder.

1) Download _`.pbix`_ file

2) Open it in Power BI Desktop 

## 7. Results and insights

In _`documentation/`_ folder: structure.pdf

