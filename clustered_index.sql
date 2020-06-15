
CREATE TABLE [Employeetable]
(
   [Id] int Primary Key, -- clustered index
   [Name] nvarchar(50),
   [Salary] int,
   [Gender] nvarchar(10),
   [City] nvarchar(50)
)
-- way to check if it's 
--created a clustered index id automatically or not
Execute sp_helpindex Employeetable

-- another way
-- refresh table folder then go to index folder.

insert into Employeetable values(3,'John',4500,'Male','New York')
insert into Employeetable values(1,'sam',2500,'Male','London')
insert into Employeetable values(4,'Sara',5500,'Female','tokyo')
insert into Employeetable values(5,'teddy',3100,'Male','toronto')
insert into Employeetable values(2,'ram',6500,'Female','sydney')


-- clustered index determines that how the data will be stored.  check the ID column in o/p vs i/p


select * from Employeetable

-- composite clutered index on gendr and salary column

create clustered index ix_emp
on Employeetable(Gender desc, Salary asc)

-- above 2 lines will give error cause 
-- we've already created clustered index >> 'id'.
-- to make another clustered index. we've to drop prev. cludtered index >> 'id'

-- prev clustered index can't be dropped cause it's a primary key.

drop index Employeetable.PK__Employee__3214EC0780E4CD0D

-- so to delete the clustered index (having primary key) 
-- go to the index folder and delete it manually.

-- ITS ONLY 1 CLUSTERED INDEX CAN BE PRESENT IN A TABLE.
-- BUT IT'S POSSIBLE FOR A CLUSTERED INDEX TO HAVE 
-- MORE THAN ONE COLUMN WITHIN THAT'S INDEX KEYS.