-- Query 1: Find the total number of records in the database.
SELECT COUNT(*) AS TotalRecords
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 2: Calculate the average LTD (Lifetime Value) of customers.
SELECT AVG(LTD) AS AvgLTD
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 3: Find the customers with the highest LTD (Lifetime Value).
SELECT TOP 10 First_Name, Last_Name, Mobile, LTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
ORDER BY LTD DESC;

-- Query 4: Calculate the average Recency of customer interactions.
SELECT AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 5: Find the customers with the lowest Recency.
SELECT TOP 10 First_Name, Last_Name, Mobile, Recency
FROM [dbo].[68330 WhatsApp Indian DataBase]
ORDER BY Recency ASC;

-- Query 6: Calculate the percentage of valid mobile numbers in the database.
SELECT AVG(IS_Valid_Mobile_Flag) * 100 AS ValidMobilePercentage
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 7: Calculate the percentage of customers who are flagged as targets.
SELECT AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 8: Calculate the total LTD for each franchise region and order by LTD.
SELECT LTD_Franchise, LTD_Region, SUM(LTD) AS TotalLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalLTD DESC;

-- Query 9: Identify the franchise regions with the highest average LTD.
SELECT LTD_Franchise, LTD_Region, AVG(LTD) AS AvgLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY AvgLTD DESC;

-- Query 10: Calculate the average Recency for customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 11: Calculate the average Recency for customers in each franchise city.
SELECT LTD_Franchise, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY AvgRecency DESC;

-- Query 12: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 13: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 14: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 15: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 16: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 17: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 18: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 19: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 20: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 21: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 22: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 23: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 24: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 25: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 26: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 27: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 28: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 29: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 30: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 31: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 32: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 33: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 34: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 35: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 36: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 37: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 38: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 39: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 40: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 41: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 42: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 43: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 44: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 45: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 46: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 47: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 48: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 49: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 50: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 51: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 52: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 53: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 54: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 55: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 56: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 57: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 58: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 59: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 60: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 61: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 62: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 63: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 64: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 65: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 66: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 67: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 68: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 69: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 70: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 71: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 72: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 73: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 74: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 75: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 76: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 77: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 78: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 79: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 80: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 81: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 82: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 83: Calculate the average Recency for customers in each Recency Band and franchise city.
SELECT Recency_Band, LTD_City, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_City
ORDER BY AvgRecency DESC;

-- Query 84: Find the customers who have the highest LTD in each franchise state.
SELECT LTD_Franchise, LTD_State, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_State
ORDER BY MaxLTD DESC;

-- Query 85: Calculate the average Recency for customers in each Recency Band.
SELECT Recency_Band, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band
ORDER BY AvgRecency DESC;

-- Query 86: Find the customers who have provided both an email and valid mobile number.
SELECT First_Name, Last_Name, Mobile, Email
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE IS_Valid_Mobile_Flag = 1 AND Email IS NOT NULL;

-- Query 87: Calculate the total number of target customers in each franchise region.
SELECT LTD_Franchise, LTD_Region, SUM(IS_Target_Flag) AS TotalTargets
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TotalTargets DESC;

-- Query 88: Identify the franchise regions with the highest percentage of target customers.
SELECT LTD_Franchise, LTD_Region, AVG(IS_Target_Flag) * 100 AS TargetPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region
ORDER BY TargetPercentage DESC;

-- Query 89: Calculate the average Recency for customers in each Recency Band and franchise region.
SELECT Recency_Band, LTD_Region, AVG(Recency) AS AvgRecency
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY Recency_Band, LTD_Region
ORDER BY AvgRecency DESC;

-- Query 90: Find the customers who have the highest LTD in each franchise city.
SELECT LTD_Franchise, LTD_City, MAX(LTD) AS MaxLTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City
ORDER BY MaxLTD DESC;

-- Query 91: Find the customers who have the highest LTD in each franchise state.
SELECT DISTINCT LTD_Franchise, LTD_State,
       FIRST_VALUE(First_Name) OVER(PARTITION BY LTD_Franchise, LTD_State ORDER BY LTD DESC) AS TopCustomerFirstName,
       FIRST_VALUE(Last_Name) OVER(PARTITION BY LTD_Franchise, LTD_State ORDER BY LTD DESC) AS TopCustomerLastName
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 92: Calculate the average LTD for customers within each Recency Band.
SELECT Recency_Band,
       AVG(LTD) OVER(PARTITION BY Recency_Band) AS AvgLTD
FROM [dbo].[68330 WhatsApp Indian DataBase];

-- Query 93: Find the customers who have switched franchise regions and identify their previous and current regions.
SELECT First_Name, Last_Name, Mobile, LTD_Region AS CurrentRegion,
       LAG(LTD_Region) OVER(PARTITION BY Mobile ORDER BY LTD) AS PreviousRegion
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE LTD_Region <> LAG(LTD_Region) OVER(PARTITION BY Mobile ORDER BY LTD);

-- Query 94: Calculate the ratio of target customers to non-target customers in each franchise city.
SELECT LTD_Franchise, LTD_City,
       SUM(IS_Target_Flag) * 1.0 / SUM(1 - IS_Target_Flag) AS TargetToNonTargetRatio
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_City;

-- Query 95: Identify customers who have a higher LTD than the average LTD of their franchise region.
WITH AvgLTDByRegion AS (
  SELECT LTD_Franchise, LTD_Region, AVG(LTD) AS AvgRegionLTD
  FROM [dbo].[68330 WhatsApp Indian DataBase]
  GROUP BY LTD_Franchise, LTD_Region
)
SELECT First_Name, Last_Name, Mobile, LTD_Franchise, LTD_Region, LTD
FROM [dbo].[68330 WhatsApp Indian DataBase]
JOIN AvgLTDByRegion ON [dbo].[68330 WhatsApp Indian DataBase].LTD_Franchise = AvgLTDByRegion.LTD_Franchise
                    AND [dbo].[68330 WhatsApp Indian DataBase].LTD_Region = AvgLTDByRegion.LTD_Region
WHERE LTD > AvgRegionLTD;

-- Query 96: Calculate the percentage of customers in each Recency Band for whom LTD is above average.
WITH AvgLTDByRecency AS (
  SELECT Recency_Band, AVG(LTD) AS AvgRecencyLTD
  FROM [dbo].[68330 WhatsApp Indian DataBase]
  GROUP BY Recency_Band
)
SELECT Recency_Band,
       AVG(CASE WHEN LTD > AvgRecencyLTD THEN 1 ELSE 0 END) * 100 AS AboveAvgLTDPercentage
FROM [dbo].[68330 WhatsApp Indian DataBase]
JOIN AvgLTDByRecency ON [dbo].[68330 WhatsApp Indian DataBase].Recency_Band = AvgLTDByRecency.Recency_Band
GROUP BY Recency_Band;

-- Query 97: Find the customers with the highest LTD in each franchise city and their respective ranks.
WITH RankedCustomers AS (
  SELECT *,
         RANK() OVER(PARTITION BY LTD_Franchise, LTD_City ORDER BY LTD DESC) AS RankLTD
  FROM [dbo].[68330 WhatsApp Indian DataBase]
)
SELECT First_Name, Last_Name, Mobile, LTD_Franchise, LTD_City, LTD, RankLTD
FROM RankedCustomers
WHERE RankLTD = 1;

-- Query 98: Calculate the coefficient of variation (CV) of LTD for each franchise region.
WITH AvgAndStdDev AS (
  SELECT LTD_Franchise, LTD_Region, AVG(LTD) AS AvgLTD,
         STDEV(LTD) AS StdDevLTD
  FROM [dbo].[68330 WhatsApp Indian DataBase]
  GROUP BY LTD_Franchise, LTD_Region
)
SELECT LTD_Franchise, LTD_Region,
       (StdDevLTD / AvgLTD) * 100 AS CoefficientOfVariation
FROM AvgAndStdDev;

-- Query 99: Identify the franchises that have at least one customer with a Recency of less than 30 days.
SELECT DISTINCT LTD_Franchise
FROM [dbo].[68330 WhatsApp Indian DataBase]
WHERE EXISTS (
  SELECT 1
  FROM [dbo].[68330 WhatsApp Indian DataBase] AS SubQuery
  WHERE SubQuery.LTD_Franchise = [dbo].[68330 WhatsApp Indian DataBase].LTD_Franchise
    AND SubQuery.Recency < 30
);

-- Query 100: Calculate the ratio of the number of customers to the number of distinct cities in each franchise region.
SELECT LTD_Franchise, LTD_Region,
       COUNT(Mobile) * 1.0 / COUNT(DISTINCT LTD_City) AS CustomersToCitiesRatio
FROM [dbo].[68330 WhatsApp Indian DataBase]
GROUP BY LTD_Franchise, LTD_Region;
