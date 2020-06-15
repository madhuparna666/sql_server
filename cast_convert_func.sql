--syntax of cast and convert--
--CAST (expression AS data_type [(length)] )
--CONVERT (DATA_TYPE [(length)] expression [style])
use db2
select * from emp
select id , Name , dateofbirth , CAST (dateofbirth as nvarchar(20)) as DOB from emp

select id , Name , dateofbirth , CONVERT (nvarchar,dateofbirth) as DOB from emp

select id , Name ,  dateofbirth,
Convert (nvarchar, dateofbirth , 103) as DOB
from emp
 --103 is the style >> dd/mm/yyyy

 select CONVERT (VARCHAR(10),GETDATE(),101)


select CAST(GETDATE() as DATE)

select CONVERT(DATE, GETDATE())

select id, Name , Name + ' - ' + id from emp --this code will give error
--cause we are concatinating nvarchar value with data type in
-- so here we've to use CAST() / CONVERT()
-- solution code >> 
                select id, Name , Name + ' - ' + CAST(id as nvarchar) as Name_ID from emp 
