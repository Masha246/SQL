create table employees (id serial primary key, 
employee_name varchar (50) not null);
insert into employees (employee_name) values
('emp1'),
('emp2'),
('emp3'),
('emp4'),
('emp5'),
('emp6'),
('emp7'),
('emp8'),
('emp9'),
('emp10'),
('emp11'),
('emp12'),
('emp13'),
('emp14'),
('emp15'),
('emp16'),
('emp17'),
('emp18'),
('emp19'),
('emp20'),
('emp21'),
('emp22'),
('emp23'),
('emp24'),
('emp25'),
('emp26'),
('emp27'),
('emp28'),
('emp29'),
('emp30'),
('emp31'),
('emp32'),
('emp33'),
('emp34'),
('emp35'),
('emp36'),
('emp37'),
('emp38'),
('emp39'),
('emp40'),
('emp41'),
('emp42'),
('emp43'),
('emp44'),
('emp45'),
('emp46'),
('emp47'),
('emp48'),
('emp49'),
('emp50'),
('emp51'),
('emp52'),
('emp53'),
('emp54'),
('emp55'),
('emp56'),
('emp57'),
('emp58'),
('emp59'),
('emp60'),
('emp61'),
('emp62'),
('emp63'),
('emp64'),
('emp65'),
('emp66'),
('emp67'),
('emp68'),
('emp69'),
('emp70');
select * from employees;
create table salary (id serial primary key,
monthly_salary int not null);
insert into salary (monthly_salary)
values ('1000'),
('1100'),
('1200'),
('1300'),
('1400'),
('1500'),
('1600'),
('1700'),
('1800'),
('1900'),
('2000'),
('2100'),
('2200'),
('2300'),
('2400'),
('2500');
select * from salary;
create table employee_salary (id serial primary key,
employee_id int not null unique,
salary_id int not null;

select * from employee_salary;
insert into employee_salary (employee_id, salary_id)
values 
(69,12),
(68,16),
(78,11),
(1,1),
(3,10),
(4,9),
(15,6),
(80,7),
(91,8),
(121,9),
(71,2),
(73,3),
(74,4),
(81,5),
(86,5),
(88,2),
(58,3),
(56,13),
(57,14),
(2,5),
(5,12),
(6,13),
(7,14),
(8,15),
(9,16),
(66,1),
(67,2),
(64,3),
(55,4),
(70,5),
(41,6),
(42,7),
(43,8),
(44,9),
(45,10),
(10,11),
(11,12),
(13,3),
(14,16),
(46,7);

select *from employees;
delete from employees
where id in (71,72,73,74,75,76,77,78,79,80,71,82,83,84,85,86,87,88,89,90);
select *from employees;
delete from employees
where id in (91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120);
delete from employees
where id in (121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150);
delete from employees
where id in (151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200);

DELETE FROM employees 
WHERE id BETWEEN 201 AND 350;
select *from employees;
delete from employees
where id in (171,172,173,81,174,175,176,177,178,179);
select *from employees;
insert into employee_salary (employee_id, salary_id)
values 
(7,12),
(2,16),
(78,11),
(1,1),
(3,10),
(4,9),
(5,6),
(80,7),
(91,8),
(121,9),
(71,2),
(73,3),
(74,4),
(81,5),
(86,5),
(88,2),
(55,3),
(56,13),
(57,14),
(2,5),
(5,12),
(6,13),
(7,14),
(8,15),
(9,16),
(66,1),
(67,2),
(68,3),
(69,4),
(70,5),
(41,6),
(42,7),
(43,8),
(44,9),
(45,10),
(10,11),
(11,12),
(13,3),
(8,16),
(2,7);
select * from employee_salary;
create table roles (id serial primary key,
role_name int not null unique);
alter table roles
alter column role_name type varchar(30);
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');
select *from roles;
create table roles_employee (id serial primary key,
employee_id INT NOT NULL UNIQUE REFERENCES employees(id),
    role_id INT NOT NULL REFERENCES roles(id)
    );
   insert into roles_employee (employee_id, role_id)
   values
   (1,2),
   (2,3),
   (3,4),
   (4,5),
   (6,7),
   (7,8),
   (8,9),
   (9,10),
   (10,11),
   (12,13),
   (11,12),
   (13,14),
   (15,16),
   (16,17),
   (17,18),
   (18,1),
   (19,20),
   (20,19),
   (21,20),
   (23,1),
   (22,2),
   (24,3),
   (25,4),
   (26,5),
   (27,6),
   (28,7),
   (29,8),
   (31,9),
   (70,10),
   (69,11),
   (55,12),
   (56,13),
   (47,14),
   (48,15),
   (50,17),
   (66,16),
   (41,18),
   (42,19),
   (53,20),
   (58,4);
  SELECT e.employee_name, s.monthly_salary 
FROM employees as e
JOIN salary as s ON e.id = s.id;
SELECT e.employee_name, s.monthly_salary
FROM employees as e
JOIN salary as s ON e.id = s.id
WHERE s.monthly_salary < 2000;
SELECT s.monthly_salary
FROM salary s
LEFT JOIN employees e ON s.monthly_salary = e.id
WHERE e.id IS NULL;
SELECT s.monthly_salary
FROM salary s
LEFT JOIN employees e ON s.monthly_salary = e.id
WHERE e.id IS null and s.monthly_salary < 2000;
select e.employee_name
from employees as e
left join salary as s on e.id = s.monthly_salary 
where s.monthly_salary is null ;
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id;
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Java%';
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Python%';
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%QA%';
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Manual%';
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Automation%';
select e.employee_name, s.monthly_salary from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like '%Junior%';


