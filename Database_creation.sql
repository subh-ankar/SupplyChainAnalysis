DROP DATABASE IF EXISTS supply_chain_project;
CREATE DATABASE supply_chain_project;
USE supply_chain_project;

CREATE TABLE dataco_orders (
    `Type` VARCHAR(100),
    `Days_for_shipping_real` VARCHAR(50),
    `Days_for_shipment_scheduled` VARCHAR(50),
    `Benefit_per_order` VARCHAR(50),
    `Sales_per_customer` VARCHAR(50),
    `Delivery_Status` VARCHAR(100),
    `Late_delivery_risk` VARCHAR(50),
    `Category_Id` VARCHAR(50),
    `Category_Name` VARCHAR(100),
    `Customer_City` VARCHAR(100),
    `Customer_Country` VARCHAR(100),
    `Customer_Email` VARCHAR(150),
    `Customer_Fname` VARCHAR(100),
    `Customer_Id` VARCHAR(50),
    `Customer_Lname` VARCHAR(100),
    `Customer_Password` VARCHAR(100),
    `Customer_Segment` VARCHAR(100),
    `Customer_State` VARCHAR(100),
    `Customer_Street` VARCHAR(200),
    `Customer_Zipcode` VARCHAR(50),
    `Department_Id` VARCHAR(50),
    `Department_Name` VARCHAR(100),
    `Latitude` VARCHAR(50),
    `Longitude` VARCHAR(50),
    `Market` VARCHAR(100),
    `Order_City` VARCHAR(100),
    `Order_Country` VARCHAR(100),
    `Order_Customer_Id` VARCHAR(50),
    `Order_Date` VARCHAR(50),
    `Order_Id` VARCHAR(50),
    `Order_Item_Cardprod_Id` VARCHAR(50),
    `Order_Item_Discount` VARCHAR(50),
    `Order_Item_Discount_Rate` VARCHAR(50),
    `Order_Item_Id` VARCHAR(50),
    `Order_Item_Product_Price` VARCHAR(50),
    `Order_Item_Profit_Ratio` VARCHAR(50),
    `Order_Item_Quantity` VARCHAR(50),
    `Sales` VARCHAR(50),
    `Order_Item_Total` VARCHAR(50),
    `Order_Profit_Per_Order` VARCHAR(50),
    `Order_Region` VARCHAR(100),
    `Order_State` VARCHAR(100),
    `Order_Status` VARCHAR(100),
    `Order_Zipcode` VARCHAR(50),
    `Product_Card_Id` VARCHAR(50),
    `Product_Category_Id` VARCHAR(50),
    `Product_Description` TEXT,
    `Product_Image` VARCHAR(255),
    `Product_Name` VARCHAR(255),
    `Product_Price` VARCHAR(50),
    `Product_Status` VARCHAR(100),
    `Shipping_Date` VARCHAR(50),
    `Shipping_Mode` VARCHAR(100)
);


#Loading data file in to the table
SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE '/Users/subhankarmodumudi/Downloads/DataCoSupplyChainDatasett.csv'
INTO TABLE dataco_orders
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SELECT COUNT(*) AS total_rows FROM dataco_orders;


select * from dataco_orders limit 10;

#As we got all the rows into the table we will now modify the table 
ALTER TABLE dataco_orders
MODIFY COLUMN Days_for_shipping_real FLOAT,
MODIFY COLUMN Days_for_shipment_scheduled FLOAT,
MODIFY COLUMN Benefit_per_order FLOAT,
MODIFY COLUMN Sales_per_customer FLOAT,
MODIFY COLUMN Late_delivery_risk FLOAT,
MODIFY COLUMN Category_Id FLOAT,
MODIFY COLUMN Customer_Id FLOAT,
MODIFY COLUMN Department_Id FLOAT,
MODIFY COLUMN Latitude FLOAT,
MODIFY COLUMN Longitude FLOAT,
MODIFY COLUMN Order_Customer_Id FLOAT,
MODIFY COLUMN Order_Id FLOAT,
MODIFY COLUMN Order_Item_Cardprod_Id FLOAT,
MODIFY COLUMN Order_Item_Discount FLOAT,
MODIFY COLUMN Order_Item_Discount_Rate FLOAT,
MODIFY COLUMN Order_Item_Id FLOAT,
MODIFY COLUMN Order_Item_Product_Price FLOAT,
MODIFY COLUMN Order_Item_Profit_Ratio FLOAT,
MODIFY COLUMN Order_Item_Quantity FLOAT,
MODIFY COLUMN Sales FLOAT,
MODIFY COLUMN Order_Item_Total FLOAT,
MODIFY COLUMN Order_Profit_Per_Order FLOAT,
MODIFY COLUMN Product_Card_Id FLOAT,
MODIFY COLUMN Product_Category_Id FLOAT,
MODIFY COLUMN Product_Price FLOAT;
