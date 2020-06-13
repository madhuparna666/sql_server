Create Procedure spGetTotal_Empnew
as
Begin
    return( Select COUNT(ID) FROM tblEmployee ) 
End

Declare @receive int
Execute  @receive = spGetTotal_Empnew 
Print @receive