# ETL mini project
![Illustration of Crowdfunding](https://knowledge.skema.edu/wp-content/uploads/2020/10/shutterstock_1356273047-2048x1365.jpg")
## Description
For the ETL mini project, we will be working in a group of 3 members to practise building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After we transform the data, we'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we’ll upload the CSV file data into a Postgres database.

## Instruction
The instructions for this mini project are divided into the following subsections:

1. Create the Category and Subcategory DataFrames (this section was coded by Dominique)

2. Create the Campaign DataFrame (this section was coded by Dominique)

3. Create the Contacts DataFrame (this section was coded by Chang, Rachel and Dominique)

4. Create the Crowdfunding Database (this section was coded by Rachel and Chang)

For sections 1 and 2, we used Pandas to read in data from Excel files and cleaned the files to create more readable files.

For sub-section 3, we decided to use regex to create the Contacts dataframe. Initially, we used for-loops to extract data from the uncleaned Excel files. However, we simplified our code by using list comprehension. 

For sub-section 4, the order that we imported the tables is as follows: (1) contacts, (2) category, (3) subcategory and, lastly (4) campaign table. The campaign table was imported last because it includes foreign keys that reference primary keys from other tables.

## Installations
The following dependecies were installed for this project:
`import pandas as pd`\
`import numpy as np`\
`from datetime import datetime as dt`\
`import re`

Please ensure you have the following libraries pre-installed:
`pip install pandas`\
`pip install numpy`

### Data cleaning
The current dataset contains the following columns:
1. `cf_id`
2. `contact_id`
3. `company_name`
4. `blurb`
5. `goal`
6. `pledged`
7. `outcome`
8. `backers_count`
9. `country`
10. `currency`
11. `launched_at`
12. `deadline`
13. `staff_pick`
14. `spotlight`
15. `category`
16. `sub-category`

First we extracted and transformed the `crowdfunding.xlsx` Excel data to create a category DataFrame that has the following columns:

1. A `category_id` column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories.
2. A `category` column that contains only the category titles.

![Alt text](<Screenshot 2023-12-27 at 11.39.37 am.png>)

We then extracted and transformed the `crowdfunding.xlsx `Excel data to create a subcategory DataFrame that has the following columns:

1. A `subcategory_id` column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories. 
2. A `subcategory` column that contains only the subcategory titles. 
![Alt text](<Screenshot 2023-12-27 at 11.41.18 am.png>)

We subsequently created a Campaign dataframe that contains all columns of the original dataframe and the extra `subcategory_id` and `category_id` columns:
![Alt text](<Screenshot 2023-12-27 at 11.45.39 am.png>)

Finally, we use regular expressions to extract the `contact_id`, `name`, and `email` columns. We then created a new DataFrame with the extracted data. Subsequently, we converted the `contact_id` column to the integer type.
After that was done, we split each `name` column value into a first and a last name, and place each in a new column.
Our cleaned dataset was exported into CSV format as `contacts.csv` and saved to our group GitHub repository.
![Alt text](<Screenshot 2023-12-27 at 11.49.42 am.png>)

### Data loading
In order to load our datasets in to a SQL database, we dirst inspected the four CSV files, and then sketched an ERD of the tables by using QuickDBDLinks. We use the information from the ERD to create a table schema for each CSV file. Specifically, we specified the data types, primary keys, foreign keys, and other constraints.

We then saved the database schema as a Postgres file named `crowdfunding_db_schema.sql`, and saved it to our GitHub repository. Next, we created a new Postgres database, named `crowdfunding_db`. Using the database schema, we created the tables in the correct order to handle the foreign keys.

We verified the tables creation by running a SELECT statement for each table. We then imported each CSV file into its corresponding SQL table.


## Contribution:
Special thanks to the following individuals for their contribution to this project:
- Motaza Rezae (Instructor)
- Camilo Vargas (TA)
- Jefferey Chieh-Liu (TA)
