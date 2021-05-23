
--select top 3 name, listprice from Production.Product
--order by ListPrice desc 
--select productnumber , name ,replace(name,'l','xl') from Production.Product
select a.name,b.name as 'modelname' from Production.Product as a 
inner join Production.ProductModel as b
on a.ProductModelID = b.ProductModelID