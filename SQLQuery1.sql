--create table EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--create table EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int
--)

--insert into EmployeeDemographics values
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female')

--insert into EmployeeSalary values

--(1002, 'Receptionist',36000)

--select count(LastName)
----select top 5 *
----select *
----select FirstName, LastName
----select distinct(EmployeeID)
----select count(LastName) as LastNameCount
--from EmployeeDemographics

--select *
----max(Salary),min, avg
----select *
----select FirstName, LastName
----select distinct(EmployeeID)
----select count(LastName) as LastNameCount
--from EmployeeSalary

--if the server is changed to master, then we can use

select *
from SQL Tutorial.dbo.EmployeeSalary