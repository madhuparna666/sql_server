select * from tblEmployee

Create Procedure spGetemp

@Gender nvarchar(20), --i/p parameter
@EmployeeeCount int output --output keyword,employeeCount is Output paramaeter
as
Begin
    Select @EmployeeeCount = COUNT(ID) from tblEmployee where Gender =  @Gender -- Now @gender will catch the i/p given by user and save it to 
	                                                        -- save it to @EmployeeCount, 
End
                        -- now storeprocedure returning the o/p by output paramt which is needed to keep somewhere.
						--so, declare a variable .here for ex: @receivedOutput . the data type of this variable should match with the 
						-- data type of o/p parameter.
Declare @receivedOutput int

Execute spGetemp 'Male', @receivedOutput Out --value of @gender is i/p pmt. and @receiveoutput receiving the value back. to do it "Out or Output"

--to get the above in reverse order execute below line
--Execute spGetemp @EmployeeeCount = @receivedOutput Out , @Gender = 'Male'


if (@receivedOutput is null)
     Print ' @receivedOutput is null'

else
    Print '@receivedOutput is not null'

Print @receivedOutput