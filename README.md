# SQL-Queries

Nashville Housing Project:

A common conundrum when attempting to analyze data is coming across large datasets with data that are unstandardized, filled with duplicates, and littered with unwanted or disorganized information. In this project, I focused on a large set of Nashville housing data with the goal of cleansing. The end result led to a clean, easy-to-view dataset that can be analyzed and uploaded to other data anaysis programs, such as viz softwares like Tableau.


The first issue I wanted to resolve was the SalesDate column that included time after importating the data from excel.

To fix this issue, I used the CONVERT function to create a new column using the DATE format to replace it.
![image](https://user-images.githubusercontent.com/66393809/127931305-98c9bbab-7592-4509-a645-38e661ba0ad4.png)


The next issue to resolve was the abundance of Nulls in the PropertyAddress columns. This was occuring due to the dataset having duplicate ParcelID's for the same property transaction. One with the Property Address and one with Null.
![image](https://user-images.githubusercontent.com/66393809/127932271-559a2296-4ff4-4116-b952-66f3725aec69.png)

To fix this, I used a JOIN statement to find every instance of duplication, created a new column that was populated with the correct Property Address, and used this to replace the Null PropertyAddress columns.
![image](https://user-images.githubusercontent.com/66393809/127932423-1149ba52-1b20-46c3-b092-2a8a6de38b6d.png)


Following up with the PropertyAddress and OwnerAddress columns, I wanted to create separate columns for the Address, City, and State. To accomplish this, I utilized Substrings and the CHARINDEX function to separate these values based off the comma that delineated them.
![image](https://user-images.githubusercontent.com/66393809/127932767-f759f8ff-448f-4d80-88fd-9ef41dd6114c.png)

![image](https://user-images.githubusercontent.com/66393809/127932849-d24bdc49-222a-460c-b8ad-1e6dc2f555f0.png)


One small change that I made was the standadization of the SoldAsVacant column. The column values varied between using "Y/N" or "Yes/No", and I wanted uniformity.
I used a CASE statement to update the "Y" and "N" columns to "Yes" and "No", respectively.
![image](https://user-images.githubusercontent.com/66393809/127933662-fb80c838-6356-4c51-8e07-32f00b593643.png)

As I was finishing up, I wanted to ensure no duplicates remained in my data. I used the ROW_NUMBER() function to create a new column that identified any repeated rows.

![image](https://user-images.githubusercontent.com/66393809/127934034-f09798f8-8a2b-404b-ad6b-412a9a73883d.png)

![image](https://user-images.githubusercontent.com/66393809/127934072-4858bc6b-9599-47a9-b831-d08bb7434bfa.png)

I then deleted the duplicate rows.

![image](https://user-images.githubusercontent.com/66393809/127934122-fa57eeaf-3e5d-494b-b0cd-09ef81f3e27a.png)


To finish the project, I removed any unwanted columns that remained after editing the data set.
![image](https://user-images.githubusercontent.com/66393809/127934214-91f9ed45-40e6-48cf-aac1-ecc5019fdb0e.png)

The end result!

![image](https://user-images.githubusercontent.com/66393809/127934521-49069005-8224-4dc4-a932-99db04825b62.png)
![image](https://user-images.githubusercontent.com/66393809/127934580-72e66e18-a2b2-4281-9404-a885355fbf39.png)



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
