SELECT * FROM CapstoneProjectSalesData

-----------1. Total Sales For Each Product Category---------------
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shoes'
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shirt'
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Hat'
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Jacket'
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Gloves'
SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Socks'

----------2. Number of Sales Transactions in Each Region--------------
SELECT region, COUNT(orderid) as Number_Of_SalesTransaction from CapstoneProjectSalesData GROUP by Region;

---------3. Highest Selling Product By TotalSales Value---------------------
SELECT product, SUM(revenue) As TotalSales from CapstoneProjectSalesData GROUP by product ORDER by Total_Sales desc Limit 1

---------4. Total Revenue Per Product----------------
SELECT product, SUM(revenue) As TotalSales from CapstoneProjectSalesData GROUP by product order by TotalSales DESC

--------5. Monthly Sales Totals For the Current Year----------------
SELECT substr(orderdate, 1, 2) as Month, substr(orderdate, 7, 4) as Year, SUM(revenue) as MonthlySales
FROM CapstoneProjectSalesData WHERE year = '024'
GROUP by Month;

--------6. Top 5 Customers by Total Purchase Amount---------------
SELECT customer_id, SUM(revenue) FROM CapstoneProjectSalesData
group by customer_id
order by SUM(revenue) desc limit 5

--------7. Percentage of TotalSales Contributed by Each Region------------
WITH TotalSales as (SELECT SUM(revenue) as TotalRevenue from CapstoneProjectSalesData)
SELECT region, SUM(revenue) as RegionSales, (SUM(revenue) * 100.0 / TotalSales.TotalRevenue) as Percentagesales
FROM CapstoneProjectSalesData, TotalSales
GROUP by Region;

--------8. Products with no Sales in the last Quarter-------------------
SELECT DISTINCT product from CapstoneProjectSalesData 
WHERE orderdate < date('now', '-3 months')
and product not in (SELECT product FROM CapstoneProjectSalesData 
where orderdate >=date('now', '-3 months'));

