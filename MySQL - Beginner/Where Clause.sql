-- WHERE Clause
#-------------
#The WHERE clause is used to filter records (rows of data)

#It's going to extract only those records that fulfill a specified condition.

# So basically if we say "Where name is = 'Aakash' - only rows were the name = 'Aakash' will return
# So this is only effecting the rows, not the columns

SELECT *
FROM employee_salary
WHERE first_name = 'Ron'
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

#We can also return rows that do have not "Scranton"
SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

#We can use WHERE clause with date value also
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;
-- Here '1990-01-01' is the default data formate in MySQL.

-- AND OR NOT --
SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR gender = 'male'
;

SELECT*
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR NOT gender = 'male'
;

SELECT*
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44 ) OR age > 60
;

-- LIKE Statement
-- two special characters a % and a _

-- % means anything

SELECT*
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT*
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

-- _ means a specific value
SELECT*
FROM employee_demographics
WHERE first_name LIKE 'A___%'
;
    
SELECT*
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;
  