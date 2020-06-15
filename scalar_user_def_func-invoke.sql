--SCALAR FUNC RETURNS SINGLE VALUE

select dbo.calculateAge('09/23/1998') as Age --invoking the func
--to invoe scalar func it requires two part name
-- that is ownername.function_name

CREATE FUNCTION calculateAge(@DOB Date)
RETURNS INT
AS
BEGIN
DECLARE @Age INT


SET @Age = DATEDIFF( YEAR, @DOB, GETDATE() ) -
              CASE
			    WHEN ( MONTH(@DOB) > MONTH( GETDATE() )) OR
				     ( MONTH(@DOB) = MONTH( GETDATE() ) AND DAY(@DOB) > DAY(GETDATE()) )
                THEN 1
				ELSE 0
               END
RETURN @Age
END