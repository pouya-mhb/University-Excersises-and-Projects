select a.name , m.productmodelID from Production.Product as a
inner join Production.ProductModel as m
on m.ProductModelID = a.ProductModelID 
where a.Name like '%break%'

