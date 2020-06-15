select registrationDate, COUNT(id) as Total
from registration
group by registrationDate --the i/p table we've created with same date but not time
--& data type of registrationDate is 'datetime' so it will return both date and time 
--so group by func is implementing both date and time 
--so as a result we get the grouping of date and time 
--but we want grouping of same date not time.In this scenerio , we need 'cast()' func
--sol. code is given below:>>
     select CAST(registrationDate as DATE) as registrationdate , COUNT(id) as Total
     from registration
     group by CAST(registrationDate as DATE)

-- cast is ANSI standard
--CONVERT is specific to sql server
--convert is more flexible .it provides format functionalty.


