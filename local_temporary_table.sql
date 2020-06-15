
--1st connection window

--local temp table only have access to the connection 
-- where it has been created. when the connection is closed it will drop automatically
--from 'systemdatabase-->tempdb.'
--if we see the table graphically then we can see that after table name sql server provides number which 
--defines the user. means the multiple local tables with same name is possible
-- but the number at the end of the name will differ according to user.

-- syntax: create table #table_name()

CREATE TABLE #employee (Id int , name nvarchar(30))

INSERT INTO #employee VALUES (1,'mike')

INSERT INTO #employee VALUES (2,'JACKY')

select * from #employee

-- FETCH THE TEMPORARY TABLE

select name from tempdb..sysobjects
where name like '#employee%'