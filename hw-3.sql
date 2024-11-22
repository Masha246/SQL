1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id ;
2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name from
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary < 2000;;
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name from employees as e
left join employee_salary as s
on e.id = s.id 
where salary_id is null;
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)
SELECT s.monthly_salary
FROM salary s
LEFT JOIN employees e ON s.monthly_salary = e.id
WHERE e.id IS null and s.monthly_salary < 2000;
5. Найти всех работников кому не начислена ЗП.
select e.employee_name
from employees as e
left join salary as s on e.id = s.monthly_salary 
where s.monthly_salary is null ;
6. Вывести всех работников с названиями их должности.
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id;
7. Вывести имена и должность только Java разработчиков.
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Java%';
8. Вывести имена и должность только Python разработчиков.
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Python%';
9. Вывести имена и должность всех QA инженеров.
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%QA%';
10. Вывести имена и должность ручных QA инженеров.
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Manual%';
11. Вывести имена и должность автоматизаторов QA
SELECT e.employee_name , r.role_name
FROM employees e
JOIN roles r ON e.id = r.id 
where r.role_name like '%Automation%';
12. Вывести имена и зарплаты Junior специалистов
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
13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like '%Middle%';
 14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like '%Senior%';
15. Вывести зарплаты Java разработчиков
select s.monthly_salary from salary s
join employee_salary es 
on s.id = es.salary_id 
join employees e 
on e.id = es.employee_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id
where role_name like '%Java_developer%';
16. Вывести зарплаты Python разработчиков
select s.monthly_salary from salary s
join employee_salary es 
on s.id = es.salary_id 
join employees e 
on e.id = es.employee_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id
where role_name like '%Python%';
 17. Вывести имена и зарплаты Junior Python разработчиков
SELECT e.employee_name , s.monthly_salary
FROM employees as e
JOIN salary as s ON e.id = s.id
JOIN roles r ON e.id = r.id 
WHERE r.role_name like '%Junior Python%';
18. Вывести имена и зарплаты Middle JS разработчиков
SELECT e.employee_name , s.monthly_salary
FROM employees as e
JOIN salary as s ON e.id = s.id
JOIN roles r ON e.id = r.id 
WHERE r.role_name like '%Middle JavaScript%';
19. Вывести имена и зарплаты Senior Java разработчиков
SELECT e.employee_name , s.monthly_salary
FROM employees as e
JOIN salary as s ON e.id = s.id
JOIN roles r ON e.id = r.id 
WHERE r.role_name like '%Senior Java%';
20. Вывести зарплаты Junior QA инженеров
select s.monthly_salary,r.role_name from salary as s
join roles as r
on s.id =r.id 
where role_name like 'Junior%QA engineer';
21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) from salary as s
join roles as r
on s.id =r.id 
where role_name like '%Junior%';
22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) from salary as s
join roles as r
on s.id =r.id 
where role_name like '%JavaScript%';
23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) from salary as s
join roles as r
on s.id =r.id 
where role_name like '%QA%';
 24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) from salary as s
join roles as r
on s.id =r.id 
where role_name like '%QA%';
 25. Вывести количество QA инженеров
SELECT COUNT(*) AS qa_count
FROM employees e
JOIN roles r ON e.id = r.id
WHERE r.role_name LIKE '%QA%';
26. Вывести количество Middle специалистов.
SELECT COUNT(*) AS middle_count
FROM employees e
JOIN roles r ON e.id = r.id
WHERE r.role_name LIKE '%Middle%';
27. Вывести количество разработчиков
SELECT COUNT(*) AS developer_count
FROM employees e
JOIN roles r ON e.id = r.id
WHERE r.role_name LIKE '%developer%';
28. Вывести фонд (сумму) зарплаты разработчиков.
SELECT SUM(s.monthly_salary) 
from salary s 
JOIN roles r ON s.id = r.id
WHERE role_name LIKE '%Developer%';
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
SELECT e.employee_name, r.role_name, s.monthly_salary
FROM employees e
JOIN salary s ON e.id = s.id
JOIN roles r ON e.id = r.id
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300RDER BY s.monthly_salary ASC;
SELECT e.employee_name, r.role_name, s.monthly_salary
FROM employees e
JOIN salary s ON e.id = s.id
JOIN roles r ON e.id = r.id
where s.monthly_salary between 1700 and 2300
ORDER BY s.monthly_salary ASC;
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
SELECT e.employee_name, r.role_name, s.monthly_salary
FROM employees e
JOIN salary s ON e.id = s.id
JOIN roles r ON e.id = r.id
where s.monthly_salary < 2300
ORDER BY s.monthly_salary ASC;
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
SELECT e.employee_name, r.role_name, s.monthly_salary
FROM employees e
JOIN salary s ON e.id = s.id
JOIN roles r ON e.id = r.id
where s.monthly_salary IN (1100, 1500, 2000)
ORDER BY s.monthly_salary ASC;
