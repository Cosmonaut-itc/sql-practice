#Query1
SELECT * FROM teachers;
ORDER BY school, first_name;

#Query2
SELECT first_name, salary,
FROM teachers;
WHERE first_name LIKE 'S%' AND salary > 40000;

#Query3
SELECT * FROM teachers;
WHERE hire_date > '2010-1-1';
ORDER BY salary, DESC;