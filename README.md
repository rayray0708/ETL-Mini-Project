# Project2
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

## Contribution:
Special thanks to the following individuals for their contribution to this project:
- Motaza Rezae (Instructor)
- Camilo Vargas (TA)
- Jefferey Chieh-Liu (TA)
