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
-  **Data:** [Capstone Project SalesData.xlsx](https://github.com/user-attachments/files/17619297/Capstone.Project.SalesData.xlsx)
-  **SQL Scripts:** Find in Attached files
-  **PowerBi:** ![Capstone SalesData PowerBi](https://github.com/user-attachments/assets/b954d41c-991a-451e-86ba-b12eac80d4c4)
-  **Documentation:**
### *Project Report*
1.  Top-Selling Products: It was observed that shoes is ranking top with a total revenue of 613,380 followed by shirts with a total revenue of 485,600 as shown in the image below.

![image](https://github.com/user-attachments/assets/c6b33076-b2ae-4c96-b764-2dbda583e662)
 
2.  Regional Sales Performance: The analysis shows that South has the highest total revenue as shown 
![image](https://github.com/user-attachments/assets/70e652c8-e93f-4d1d-87dd-b2d657988efd)

3.  Monthly Trend: It is observed that sales in February in year 2023 and Year 2024 were consistently high and consistently low in April for both year
![image](https://github.com/user-attachments/assets/6238b0c6-bec3-418e-883c-fed61e7b8379)	

4.  
![image](https://github.com/user-attachments/assets/c308d573-058f-455f-aefb-2aa0d7e4563c)

![image](https://github.com/user-attachments/assets/ed8753ea-3c33-442e-b7fa-77bb6c4ac451)

![image](https://github.com/user-attachments/assets/8659cd53-168a-476f-aa9f-d667cd721955)


## Key Metrics

### Total Sales for each Product Category
1. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shoes'
2. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Shirt'
3. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Hat'
4. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Jacket'
5. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Gloves'
6. SELECT SUM(revenue) AS TotalSales FROM CapstoneProjectSalesData WHERE product ='Socks'




tal [Pivot Table for SalesData.xlsx](https://github.com/user-attachments/files/17612495/Pivot.Table.for.SalesData.xlsx)
[Capstone Project SalesData.xlsx](https://github.com/user-attachments/files/17612510/Capstone.Project.SalesData.xlsx)
