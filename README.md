# Retail Orders Analysis

This project involves analyzing retail orders to generate insights such as the highest revenue-generating products, the top-selling products in each region, month-on-month sales growth comparisons, and the highest sales month for each product category. This project is an ETL project in which the data has been fetched from Kaggle(https://www.kaggle.com/datasets/ankitbansal06/retail-orders). 

## Table of Contents

- [Usage](#Usage)
- [ETL Process](#ETL Process)
- [SQL Queries](#sql-queries)
  - [Top 10 Highest Revenue Generating Products](#top-10-highest-revenue-generating-products)
  - [Top 5 Highest Selling Products in Each Region](#top-5-highest-selling-products-in-each-region)
  - [Month-on-Month Sales Growth Comparison](#month-on-month-sales-growth-comparison)
  - [Highest Sales Month for Each Category](#highest-sales-month-for-each-category)
- [Contact](#contact)

## Usage
After setting up the database, you can run the provided SQL queries to generate various reports and insights.

## ETL Process

### Extraction
- First the data was downloaded from the above mentioned link.
- Then it was extracted and read into a jupyter notebook using Pandas library from Python.

### Transformation
- The data was then checked thoroughly for any inconsistencies.
- Column names were transformed into a uniform format for better readability and efficient use for the further use.
- A few new columns were generated using the existing columns which helped in deeper understanding of the dataset.

### Loading
- Finally the transformed dataset was loaded into a MySQL database named (retail_orders) using a Python library named sqlalchemy. 

## SQL Queries

### Top 10 Highest Revenue Generating Products
This query retrieves the top 10 products that generated the highest revenue.

### Top 5 Highest Selling Products in Each Region
This query lists the top 5 highest-selling products in each region.

### Month-on-Month Sales Growth Comparison
This query compares month-on-month sales growth for the years 2022 and 2023.

### Highest Sales Month for Each Category
This query finds the month with the highest sales for each product category.

## Contact
For any questions or suggestions, feel free to reach out to jdsarkar97@gmail.com.
