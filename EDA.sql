

#Data Validation & Understanding



USE supply_chain_project;
SELECT * FROM dataco_orders;

#Total orders, unique customers, and unique products
SELECT 
COUNT(Order_Id) AS Total_Orders,
COUNT(DISTINCT Customer_Id) AS Unique_Customers,
COUNT(DISTINCT Product_Category_Id) AS Total_Unique_Products
FROM
dataco_orders;

# Earliest and Latest order + shipping date

SELECT
MIN(order_date_parsed) AS Earliest_order_Date,
MAX(order_date_parsed) AS Latest_Order_Date,
MIN(shipping_date_parsed) AS Earliest_shipping_date,
MAX(shipping_date_parsed) AS Latest_shipping_date

FROM
dataco_orders;


#Average Shipping Delay

SELECT
ROUND((AVG(Days_for_shipping_real) - AVG(Days_for_shipment_scheduled)),2) AS avg_shipping_delay_days
FROM
dataco_orders;

# Total Orders Delivered Late

SELECT
ROUND((SUM(Late_delivery_risk)/ COUNT(Late_delivery_risk) ) * 100,2) AS percentage_of_late_delivery

FROM
dataco_orders;

# Total Orders Delivered Late by region
SELECT
Order_Region AS Region,
ROUND((SUM(Late_delivery_risk)/ COUNT(Late_delivery_risk) ) * 100,2) AS percentage_of_late_delivery

FROM
dataco_orders
GROUP BY Order_Region
ORDER BY percentage_of_late_delivery DESC;

# Product Categories generate the highest and lowest profit margins, and how do discount rates vary across these categories


SELECT
Category_Name,
ROUND((SUM(Order_Profit_Per_Order)/SUM(Sales)*100),2) AS Profit_PCT,
ROUND(AVG(Order_Item_Discount_Rate),3) AS Avg_discount_rate
FROM
dataco_orders
GROUP BY Category_Name
ORDER BY profit_PCT DESC;

#Which customer segments drive the highest sales and profitability, and which ones have stronger or weaker profit margins?

SELECT
Customer_Segment,
ROUND(SUM(Sales), 2) AS total_sales,
ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit,
ROUND(SUM(Order_Profit_Per_Order)/SUM(Sales)*100,3)AS profit_by_category
FROM
dataco_orders
GROUP BY Customer_Segment;

# Market / Region Profitability Comparison

SELECT 
    Market,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit,
    ROUND(SUM(Order_Profit_Per_Order) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM dataco_orders
GROUP BY Market
ORDER BY total_profit DESC;


# different shipping modes affect delivery time and profitability

SELECT 
    Shipping_Mode,
    ROUND(AVG(DATEDIFF(shipping_date_parsed, order_date_parsed)), 2) AS avg_delivery_days,
    ROUND(SUM(Order_Profit_Per_Order) / SUM(Sales) * 100, 2) AS avg_profit_margin
FROM dataco_orders
GROUP BY Shipping_Mode
ORDER BY avg_profit_margin DESC;

# Customer Loyalty & Repeat Purchase Behavior

SELECT
Loyalty,
COUNT(Customer_id) AS Total_count
FROM(SELECT
Customer_id,
CASE WHEN COUNT(DISTINCT Order_Id) >= 2 THEN 'Loyal' ELSE 'One-Time' END AS Loyalty
FROM
dataco_orders
GROUP BY Customer_id
ORDER BY Customer_id DESC) AS Loyal_Customer_Count
GROUP BY Loyalty;

#products and categories generate the highest total profit, so we can highlight the company’s key revenue and profit drivers.
SELECT 
    Product_Name,
    Category_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit,
    ROUND(SUM(Order_Profit_Per_Order) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM dataco_orders
GROUP BY Product_Name, Category_Name
ORDER BY total_profit DESC
LIMIT 10;


#Year-over-Year (YoY) Sales and Profit Trend Analysis

SELECT 
    YEAR(order_date_parsed) AS order_year,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit,
    ROUND(SUM(Order_Profit_Per_Order) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM dataco_orders
GROUP BY order_year
ORDER BY order_year;




























