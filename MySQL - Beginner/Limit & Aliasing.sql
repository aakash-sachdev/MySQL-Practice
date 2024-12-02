-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output
SELECT *
FROM employee_demographics
LIMIT 3;

-- if we change something like the order or use a group by it would change the output
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;

-- There is an additional paramater in limit which we can access using a comma that specifies the starting place
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3,2;

-- this now says start at position 3 and take 2 rows after that
-- rarely used

-- Could us it if wanted to select the third oldest person by doing this:
SELECT *
FROM employee_demographics
ORDER BY age desc;
-- It's Leslie - let's try to select her
SELECT *
FROM employee_demographics
ORDER BY age desc
LIMIT 2,1;


-- ALIASING

-- aliasing is a way to change the name of the column (for the most part)
-- it can also be used in joins.

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;
-- Can use the keyword AS to specify we are using an Alias
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender
;

-- although we don't actually need it, but it's more explicit
SELECT gender, AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender
;