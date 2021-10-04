CREATE TABLE Order_Tbl(
 `ORDER_DAY` date,
 `ORDER_ID` varchar(10) ,
 `PRODUCT_ID` varchar(10) ,
 `QUANTITY` int ,
 `PRICE` int 
); 

INSERT INTO Order_Tbl  VALUES ('2015-05-01','ODR1', 'PROD1', 5, 5);
INSERT INTO Order_Tbl  VALUES ('2015-05-01','ODR2', 'PROD2', 2, 10);
INSERT INTO Order_Tbl  VALUES ('2015-05-01','ODR3', 'PROD3', 10, 25);
INSERT INTO Order_Tbl  VALUES ('2015-05-01','ODR4', 'PROD1', 20, 5);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR5', 'PROD3', 5, 25);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR6', 'PROD4', 6, 20);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR7', 'PROD1', 2, 5);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR8', 'PROD5', 1, 50);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR9', 'PROD6', 2, 50);
INSERT INTO Order_Tbl  VALUES ('2015-05-02','ODR10','PROD2', 4, 10);

select * from order_tbl;

#1
select x.order_day,y.product_id,x.sold from
(select order_day,product_id,max(quantity*price) as sold from order_tbl group by order_day)x
inner join (select order_day,product_id,quantity*price as sold from order_tbl)y
on x.order_day=y.order_day and x.sold=y.sold;

select *,quantity*price as sold from order_tbl;

select product_id,order_day,sold from 
(select *,quantity*price as sold from order_tbl)x
group by product_id;

select * from order_tbl;

#2

select order_day,product_id,quantity*price as total_sales from order_tbl
group by order_day,product_id order by product_id;

select product_id, 
case when order_day = "2015-05-01" then total_sales end as sales_01,
case when order_day = "2015-05-02" then total_sales end as sales_02
from (select order_day,product_id,quantity*price as total_sales from order_tbl
group by order_day,product_id order by product_id)A;

select product_id,
sum(ifnull(b.sales_01,0)) as total_sales_01,
sum(ifnull(b.sales_02,0)) as total_sales_02 from
(select product_id, 
case when order_day = "2015-05-01" then total_sales end as sales_01,
case when order_day = "2015-05-02" then total_sales end as sales_02
from (select order_day,product_id,quantity*price as total_sales from order_tbl
group by order_day,product_id order by product_id
)A
)B 
group by product_id;

#3

select order_day,product_id,count(*) as cnt from order_tbl
group by order_day,product_id having cnt>1;


