

CREATE TABLE ##employeeDetails (Id int , name nvarchar(30))

INSERT INTO ##employeeDetails VALUES (1,'mike')

INSERT INTO ##employeeDetails VALUES (2,'JACKY')

--insert into #employeeDetails Values (3,'makk')
-- double # reqired for global temp table.

select * from ##employeeDetails

-- sql server doesn't append random number at the end of table name 
