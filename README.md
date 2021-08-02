# SQL-Queries

Nashville Housing Project:
A common conundrum when attempting to analyze data is coming across large datasets filled with information that is unstandardized, filled with duplicates, and littered with unwanted or disorganized data. In this project, I focused on a large set of Nashville housing data with the goal of cleansing the data. The end results led to a clean, easy-to-view dataset that can be analyzed and uploaded to other data anaysis programs, such as viz softwares like Tableau.

The first issue I wanted to resolve was the SalesDate column that included time and looked similar to this photo.![image](https://user-images.githubusercontent.com/66393809/127930830-7518d733-520c-4348-b8b0-8396ac6041c6.png)

To fix this issue, I used the CONVERT function to set the column to the DATE format.
![image](https://user-images.githubusercontent.com/66393809/127929588-14aefee0-6bda-4bec-b8d7-9ba658b57061.png)


Link to Dataset => https://github.com/AlexTheAnalyst/PortfolioProjects/blob/main/Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx

- Standardized Date format using CONVERT function

- Populated property address data using JOINS and ISNULL functions

- Separated address column into Address, City, and State using SUBSTRING and CHARINDEX functions

- Converted "Y" and "N" to "yes" and "no" using CASE statements

- Removed duplicate data using PARTITION statements

-------------------------------------------------------------------------------------------------------------------

COVID-19 Deaths Project:

Link to Dataset => https://ourworldindata.org/covid-deaths

- Cleaned data for Tableau import

- Utilized Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Data Types Conversions

--------------------------------------------------------------------------------------------------------------------

Sales Analysis Project:

Link to Dataset => https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms

- Cleaned data for Power BI import

- Utilized Joins, CASE statements
