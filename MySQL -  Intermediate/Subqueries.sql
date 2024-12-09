-- Subqueries - subqueries are queries within queries.

-- In where clause
-- Wanted to look at employees who actually work in the Parks and Rec Department, we could join tables together or we could use a subquery
# It can be written like this:

SELECT *
FROM employee_demographics
WHERE employee_id IN
					(SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1)
;

-- using that subquery in the where statement and if we just highlight the subquery and run it it's basically a list we are selecting from in the outer query

-- In select 

-- Using columns with an aggregate function so we need to use group by
-- if we do that though we don't exactly get what we want
SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

-- It's giving us the average PER GROUP which we don't want
-- Below is a good use for a subquery
SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

-- We can also use it in the FROM Statement
-- when we use it here it's almost like we are creating a small table we are querying off of
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM
(SELECT gender,
AVG(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
;



























