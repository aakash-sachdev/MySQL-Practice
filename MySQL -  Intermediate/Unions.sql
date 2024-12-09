-- Unions

#A union is used to can combine rows together- not columns like we have been doing with joins where one column is put next to another
#Joins allow to combine the rows of data

#Use Union to bring together some random data, then we will look at an actual use case

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT occupation, salary
FROM employee_salary;

#This basically combined the data together, but not side by side in different columns, but one on top of the other in the same columns
#This obviously is not good since mixing data, but it can be done if wanted.

-- Gets rid of duplicates? Union is actually shorthand for Union Distinct

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;

-- we can use UNION ALL to show all values

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

# The Parks department is trying to cut their budget and wants to identify older employees they can push out or high paid employees who they can reduce pay or push out
-- let's create some queries to help with this

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;


