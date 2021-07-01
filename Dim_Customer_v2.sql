-- Cleansed Dim_Customer Table -- 
SELECT 
  c.[CustomerKey] as CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.[FirstName] as [First Name], 
  --,[MiddleName]
  c.[LastName] as [Last Name], 
  c.FirstName + ' ' + c.LastName as [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  Case c.Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, -- created case statement to concatenate first and last name
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] as DateFirstPurchase, 
  g.City as [Customer City] 
  --,[CommuteDistance]
FROM 
  [dbo].[DimCustomer] as c  -- Joined in the Customer City from the Geography Table
  Left Join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey ASC  -- ordered list by acsending CustomerKey

---------------------------------------------------------------------------------------------

  
-- Cleansed DIM_Date Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek],
  [EnglishDayNameOfWeek] as Day, 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfMonth]
  --[DayNumberOfYear]
  --[WeekNumberOfYear]
  [EnglishMonthName] as Month, 
  Left([EnglishMonthName], 3) as MonthShort, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year --[CalendarSemester]
  --[FiscalQuarter]
  --[FiscalYear]
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2019
