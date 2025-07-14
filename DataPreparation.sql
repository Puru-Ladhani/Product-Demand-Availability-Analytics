create database test_env
use test_env

select * from [dbo].[Products]
select * from [dbo].[Test+Environment+Inventory+Dataset]

select distinct [Order_Date_DD_MM_YYYY] from [dbo].[Test+Environment+Inventory+Dataset]

-----------------------------------------------------------------------------------------

SELECT 
    a.[Order_Date_DD_MM_YYYY],
    a.product_id, 
    a.availability, 
    a.demand, 
    b.product_name, 
    b.unit_price
FROM [dbo].[Test+Environment+Inventory+Dataset] AS a
LEFT JOIN products AS b ON a.product_id = b.product_id;


-----------------------------------------------------------------------------------------

select * into new_table from
(
SELECT 
    a.[Order_Date_DD_MM_YYYY],
    a.product_id, 
    a.availability, 
    a.demand, 
    b.product_name, 
    b.unit_price
FROM [dbo].[Test+Environment+Inventory+Dataset] AS a
LEFT JOIN products AS b ON a.product_id = b.product_id
) x

select * from new_table

------------------------------------------------------------------------------------------------

create database PROD

USE PROD

select * from [dbo].[Prod+Env+Inventory+Dataset]

select distinct [Order_Date_DD_MM_YYYY] 
from [dbo].[Prod+Env+Inventory+Dataset]
where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

select distinct Product_ID
from [dbo].[Prod+Env+Inventory+Dataset]

select distinct Product_ID
from [dbo].[Prod+Env+Inventory+Dataset]
where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 7 where Product_ID = 21

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 11 where Product_ID = 22

select distinct Product_ID
from [dbo].[Prod+Env+Inventory+Dataset]
order by Product_ID


select distinct availability from [dbo].[Prod+Env+Inventory+Dataset]

select distinct Demand from [dbo].[Prod+Env+Inventory+Dataset]

------------------------------------------------------------------------------------------

select * into new_table from
(
SELECT 
    a.[Order_Date_DD_MM_YYYY],
    a.product_id, 
    a.availability, 
    a.demand, 
    b.product_name, 
    b.unit_price
FROM [dbo].[Prod+Env+Inventory+Dataset] AS a
LEFT JOIN products AS b ON a.product_id = b.product_id
) x


select * from new_table


