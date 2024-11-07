# CAPSTONE-PROJECT---SALES-PERFORMANCE-ANALYSIS 🛒
This project collects and analyzes Sales Data from various regions and retail store. The goal is to provide interactive PowerBi dashboard to uncover key insights such as Top-selling products, Regional performance and Monthly Sales trends using Excel, SQL (SQLite) and PowerBi for data visualization and business intelligence.

## Objectives
-  Identify Top-Selling products
-  Identify Regional Sales Performance
-  Analyzes monthly sales trends and overall revenue generation'
-  Develop interactive visuals to communicate key insights

## Data Collected
The dataset includes the following key columns:
1.  OrderID: This is a unique ID given to all the group of item purchased
2.  CustomerID: This is a unique ID given to each customer who made purchase
3.  Product: This is the item sold in the different stores
4.  Region: The geographical area where the store operates
5.  OrderDate: This is the particular ddate which order was made
6.  Quantity: The total number of each item purchased
7.  Unit Price: The amount each product is been sold

## Tools and Technologies
-  **Excel**: Data Cleaning and Exploration
-  **SQL (SQLite)**: Data Extraction and Transformation
-  **PowerBi**: Data Visualization and dashboard creation

##  Project Structure
-  **Data:** [Download Here](https://github.com/user-attachments/files/17619297/Capstone.Project.SalesData.xlsx)
-  **SQL Scripts:** [Download Here](https://github.com/user-attachments/files/17669280/CAPSTONE.PROJECT.SALESDATA.json)
-  **PowerBi:** ![Capstone SalesData PowerBi](https://github.com/user-attachments/assets/b954d41c-991a-451e-86ba-b12eac80d4c4)
-  **Documentation:**
### *Project Report*
1.  **Top-Selling Products:** It was observed that shoes is ranking top with a total revenue of 613,380 followed by shirts with a total revenue of 485,600 as shown in the image below.

![image](https://github.com/user-attachments/assets/c6b33076-b2ae-4c96-b764-2dbda583e662)
![image](https://github.com/user-attachments/assets/8659cd53-168a-476f-aa9f-d667cd721955)
 
2.  **Regional Sales Performance:** The analysis shows that South has the highest total revenue as shown 
![image](https://github.com/user-attachments/assets/70e652c8-e93f-4d1d-87dd-b2d657988efd)

3.  **Monthly Trend:** It is observed that sales in February in year 2023 and Year 2024 were consistently high and consistently low in April for both year
![image](https://github.com/user-attachments/assets/6238b0c6-bec3-418e-883c-fed61e7b8379)	

4.  I also explore the datas and discovered that all the product together were not sold in any of the region.
But in the western and Eastern region, 4 different products were sold in this regions. The Southern region has proven to have the highest revenue even though they sold only 3 types of products.
![image](https://github.com/user-attachments/assets/c308d573-058f-455f-aefb-2aa0d7e4563c)
![image](https://github.com/user-attachments/assets/ed8753ea-3c33-442e-b7fa-77bb6c4ac451)

## Key Metrics

### Total Sales for each Product Category
1. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shoes'
2. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shirt'
3. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Hat'
4. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Jacket'
5. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Gloves'
6. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Socks'

### Number of Sales Transactions in Each Region
SELECT region, COUNT(orderid) as Number_Of_SalesTransaction from CapstoneProjectSalesData GROUP by Region;

### Highest Selling Product By TotalSales Value
SELECT product, SUM(revenue) As TotalSales from CapstoneProjectSalesData GROUP by product ORDER by Total_Sales desc Limit 1

### Total Revenue Per Product
SELECT product, SUM(revenue) As TotalSales from CapstoneProjectSalesData GROUP by product order by TotalSales DESC

### Monthly Sales Totals For the Current Year
SELECT substr(orderdate, 1, 2) as Month, substr(orderdate, 7, 4) as Year, SUM(revenue) as MonthlySales
FROM CapstoneProjectSalesData WHERE year = '024'
GROUP by Month;

### Top 5 Customers by Total Purchase Amount
SELECT customer_id, SUM(revenue) FROM CapstoneProjectSalesData
group by customer_id
order by SUM(revenue) desc limit 5

### Percentage of TotalSales Contributed by Each Region
WITH TotalSales as (SELECT SUM(revenue) as TotalRevenue from CapstoneProjectSalesData)
SELECT region, SUM(revenue) as RegionSales, (SUM(revenue) * 100.0 / TotalSales.TotalRevenue) as Percentagesales
FROM CapstoneProjectSalesData, TotalSales
GROUP by Region;

### Products with no Sales in the last Quarter
SELECT DISTINCT product from CapstoneProjectSalesData 
WHERE orderdate < date('now', '-3 months')
and product not in (SELECT product FROM CapstoneProjectSalesData 
where orderdate >=date('now', '-3 months'));

## Conclusion and Recommendation
The Sales Performance Analysis of the Retail Store reveals valuable insights into Top-selling Products, Regional Performance and Customer behavior towards reodering same product the following months. Below is the SWOT Analysis which will help in taking strategic decisions that will drive growth.
- **Strength:** Hat Sales consistently performed excellently which indicate strong market demand and July also shows to have the highest sales in 2023 and 2024.
- **Weakness:** It was observed that East and West had the highest number of product sold in them, yet the sum of revenue is not quite encouraging
- **Opportunity:** South makes significant sales for the 3 products sold there. If other products were introduced there then there is every likelihood that they will make significant sales like they have done in other products.
- **Threat:** The month of April seems to have consistently made so poor sales which affect the overall total sales. If this continues, it may affect the target for the year.

## Recommendation
1. Socks seems to make low sales, therefore, I recommend Bundle Complementary Products by using Socks to Sell Shoe so that there can be a reasonable improvement in the sales of Shoes in all the overall performance.
2. Optimize inventory management and promotional planning based on onthly sales trends.
3. Monitor and adjust Regional Marketing strategies to address disparities in sales performance

## Implementation Plan
- Assign tasks to relevant teams (Marketing Unit, Sales Unit and Product development)
- Establish timelines for strategy implementation and review
- Track Key Performance Indicators to measure effectiveness.
- Introduce Incentives to performers.

[Download Pivot Table Here](https://github.com/user-attachments/files/17612495/Pivot.Table.for.SalesData.xlsx)
