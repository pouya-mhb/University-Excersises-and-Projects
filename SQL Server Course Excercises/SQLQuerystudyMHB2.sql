/* jaha E ke rang meski bashe va X ro too name dashte bashim 
-----------------
select name , color 
from Production.product 
where (color = 'black' and name like '%X%') or name like '%L%'
--------------------
*/

/* 
farghe like va = dar in ast ke , = meghdar mide vali like harchi ke mesle oon chize 
vojood dasht too field hamooono neshoon mide*/


/* average list price ro biyare be tafkik e rang 
--------------------------------
select avg(listprice) , color 
from Production.Product
group by color 
-----------------------
*/

/* teddad product id ha be tafkik rang */
/* HAR JA TAFKIK DIDI GROUP BY BEZAR */
/*
select color , count(productid)
from Production.Product
group by color
*/


/* kala ha E ke size eshoon az 40 bozorg tar , average price an ha be tartibe e rang 
koociktar az 500 mibashad */
/*
select avg(listprice) , color , count(size)
from Production.Product
where size > '40'
group by color 
having  avg(ListPrice) < 500 
*/

/*
select p.name , p.productmodelid 
from Production.Product as p
where p.Name like ('%road%') 
except 
select p.name , p.productmodelid 
from Production.Product as p
where p.name =('%road-250%')
*/
select size,listprice, newlist=
case 
when size='l' then '1000'
when size='2' then '2000'
else listprice

end
from  Production.Product











