/**/

/*
select color,COUNT(color), COUNT(distinct size) 
from production.product 
group by color
*/

/**/
/*
select color,AVG(listprice) as ListPrice 
from Production.Product where Size>'46' 
group by color having avg(listprice)<500
*/

/* query benevisid ke 3 ta az geroon tarin kala ha ra bedahad */

select top 10 name as 'name' , listprice from Production.Product 
order by ListPrice desc