

create index ix_tblEmployee_dept
on tblEmployee (DepartmentId asc)


select * from tblEmployee

sp_Helpindex tblEmployee

-- drop index tblEmployee.ix_tblEmployee_dept
--index can be created graphically too,