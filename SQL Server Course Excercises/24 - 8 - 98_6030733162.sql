
select name, color, persiancolor = 
case 
when color = 'Black' then N'مشکی'
when color = 'Blue' then N'آبی'
else N'سایر رنگها'
end
from Production.Product


select size, ListPrice, new_price = 
case
when size = 'L' then  '1000'
when size = 'XL' then  '2000'
else ListPrice
end
from Production.Product

select name, listPrice, new_price = 
case
when ListPrice < 1000 then N'ارزان'
else N'متوسط'
end
from Production.Product


select name, listPrice, new_price = 
case
when ListPrice < 1000 then ListPrice*(1.30)
when ListPrice > 1000 then ListPrice*(1.10)
end
from Production.Product

select m.name, listPrice from Production.Product as p
inner join Production.ProductModel as m 
on 
p.ProductModelID = m.ProductModelID
where m.Name = 'Full-Finger Gloves' 
union

select m.name, listPrice from Production.Product as p
inner join Production.ProductModel as m 
on 
p.ProductModelID = m.ProductModelID
where m.Name = 'Half-Finger Gloves' 


select m.name, listPrice from Production.Product as p
inner join Production.ProductModel as m 
on 
p.ProductModelID = m.ProductModelID
where m.Name = 'Full-Finger Gloves' or m.Name = 'Half-Finger Gloves'


select name, ProductModelID from Production.Product 
where name like '%road%'
INTERSECT /*except*/
select name, ProductModelID from Production.Product 
where name like '%road-250%'


/*
please self study insert update delete and transaction 
writing
*/
