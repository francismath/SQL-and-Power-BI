drop table entry_details
create table employee_chechin_details (
	employeeid integer,
	entry_detail text,
	timestamp_details datetime);

insert into employee_chechin_details
values (1000, 'login', '2023-06-16 01:00:15.34'),
		(1000, 'login', '2023-06-16 02:00:15.34'),
		(1000, 'login', '2023-06-16 03:00:15.34'),
		(1000, 'logout', '2023-06-16 12:00:15.34'),
		(1001, 'login', '2023-06-16 01:00:15.34'),
		(1001, 'login', '2023-06-16 02:00:15.34'),
		(1001, 'login', '2023-06-16 03:00:15.34'),
		(1001, 'logout', '2023-06-16 12:00:15.34');

create table employee_details(
	employeeid integer,
	phone_number varchar(20),
	isdefault text
	)

insert into employee_details
values (1001, '9999', 'false'),
		(1001, '1111', 'false'),
		(1001, '2222', 'true'),
		(1003, '3333', 'false')

select employee_chechin_details.employeeid, phone_number as employee_default_phone_number, 
	count(*) as totalentry
from employee_chechin_details
join employee_details
	on employee_chechin_details.employeeid = 
	employee_details.employeeid
group by employee_chechin_details.employeeid