

------------------------------- MULTI-STATEMENT Table VALUED FUNC -------------------------

-- in  MULTI-STATEMENT Table VALUED FUNC, the STRUCTURE of table has been specified.

create function mfun()
returns @Table Table (ID int ,Name nvarchar(20), DOB Date)
as
begin
    Insert into @Table
	Select id, Name, CAST(dateofbirth as Date) From emp

	Return
End

--calling the func

select * from dbo.mfun()

--inline func is better than multi
--cause in sql server inline func is treated like view
--and multi-statement table valued func is treated as stored procedure

--updation 

update mfun() set Name = 'SAM' where ID = 1
--it cant be modified cause 
--@table is storing the values of a table
--so for many intermediate processes,we dont know which column is coming from which table etc.

--update is possible in 'inline func'