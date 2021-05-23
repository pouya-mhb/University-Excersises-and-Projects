CREATE TABLE MhbTable (
colnName int ,
colname2 varchar(10)
)

ALTER TABLE MhbTable
ADD day varchar(10)

ALTER TABLE MhbTable
ALTER COLUMN day varchar(50)

ALTER TABLE MhbTable
DROP COLUMN day