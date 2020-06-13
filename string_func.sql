select * from tblEmployee

select ASCII('0')


select CHAR('67')

Declare @var int
Set @var = 48
While (@var <= 57)
Begin
    print CHAR(@var)
	Set @var = @var + 1
End


select  '     hiii'
--LTRIM() 

select * from  tblEmployee

select LTRIM(Name) as fullname,Gender,DepartmentId from tblEmployee

select RTRIM(Name) as fullname,Gender,DepartmentId from tblEmployee

