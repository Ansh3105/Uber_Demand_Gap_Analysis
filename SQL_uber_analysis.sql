create database Uber
use Uber

select * 
from dbo.[Uber Request Data 1]

SELECT COUNT(*) AS Total_Requests FROM dbo.[Uber Request Data 1]

SELECT Status, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Status;

SELECT Ride_Sucess, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Ride_Sucess;


SELECT Car_Avaibility, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Car_Avaibility;


SELECT Time_slots, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Time_slots
ORDER BY Total DESC;

SELECT Pickup_point, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Pickup_point;


SELECT 
  Time_slots,
  SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) AS Fulfilled,
  SUM(CASE WHEN Status != 'Trip Completed' THEN 1 ELSE 0 END) AS Unfulfilled
FROM dbo.[Uber Request Data 1]
GROUP BY Time_slots
ORDER BY Unfulfilled DESC;

SELECT Hour_of_Pickup, COUNT(*) AS Cancelled_Trips
FROM dbo.[Uber Request Data 1]
WHERE Status = 'Cancelled'
GROUP BY Hour_of_Pickup
ORDER BY Cancelled_Trips DESC;


SELECT Pickup_point, Status, COUNT(*) AS Total
FROM dbo.[Uber Request Data 1]
GROUP BY Pickup_point, Status
ORDER BY Pickup_point;


