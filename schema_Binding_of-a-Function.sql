

select dbo. Get_EmpId(2)

create function Get_EmpId( @Id int )
Returns nvarchar(30)
with schemabinding 
as
begin
 return (select Name from dbo.tblEmployee where ID = @Id )
end


select * from tblEmployee

drop table tblEmployee

--schema binding restricts to drop the table,cause
-- dropping the table ,might cause for loosening the data.
-- and might AFFECT THE FUNC DEFINITION.