CREATE Table Student2 (
fname nvarchar(10),
lname nvarchar(10),
age tinyint ,
id int not null identity (1,2)
)

ALTER TABLE Student2
ALTER column fname char(200)
