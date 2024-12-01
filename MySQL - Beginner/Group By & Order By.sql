-- Group By
-- When the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY allow to group rows that have the same data and run aggregate functions on them

SELECT *
FROM employee_demographics;

-- group by is used when have to have the same columns grouping on in the group by statement
SELECT gender
FROM employee_demographics
GROUP BY gender
;


SELECT first_name
FROM employee_demographics
GROUP BY gender
;

SELECT occupation
FROM employee_salary
GROUP BY occupation
;

-- there is only one office manager row
-- when group by 2 columns have a row for both occupation and salary because salary is different
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- the most useful reason we use group by is to perform out aggregate functions
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender
;


#10 - The ORDER BY clause:
-------------------------
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.


#Customer table
#First ordering by one column
SELECT *
FROM customers
ORDER BY first_name;

#first name is ordered from a - z or Ascending.

#Change that by specifying DESC after it
SELECT *
FROM employee_demographics;

-- use order by it goes a to z by default (ascending order)
SELECT *
FROM employee_demographics
ORDER BY first_name;

-- Can manually change the order by saying desc
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

#Multiple columns like this:

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;



#spell out the column names. actually just use their column position

#State is in position 8 and money is in 9, use those as well.
SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;

#practice is to use the column names as it's more overt and if columns are added or replaced or something in this table it will still use the right columns to order on.