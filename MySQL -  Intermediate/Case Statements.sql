-- Case Statements
-- Case Statement allows to add logic to Select Statement, sort of like an if else statement in other programming languages or even things like Excel

SELECT * 
FROM employee_demographics;

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Middle age'
    WHEN age >= 50 THEN 'Old'
END AS age_bracket
FROM employee_demographics;


-- Pay Incerase & Bonus
-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 50k then they get a 5% raise - very generous
-- if they make more than 50k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
	WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE 
	WHEN dept_id = 6 THEN salary * 0.10
END AS bonus
FROM employee_salary;






















