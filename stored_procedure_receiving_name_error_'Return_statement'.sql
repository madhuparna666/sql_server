Create proc spGetName2
@Id int
as
begin
    return(select Name from tblEmployee Where ID = @Id)
end

Declare @receiveName nvarchar(20)
Execute @receiveName = spGetName2 2
print 'Name is :'+ @receiveName

--this code will give error cause storedprocedure's data type is int type. and it is converted when we use output paramt. but 
--here we've used 'return' statements which also expects int value, but we are passing name. here conversion failedd.
--so its better to use output pmt when we're expecting values like name etc.