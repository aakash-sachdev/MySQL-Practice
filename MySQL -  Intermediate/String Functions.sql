-- String Functions 

-- Length

SELECT LENGTH('Skyfall');

SELECT first_name, LENGTH (first_name) len
FROM employee_demographics
ORDER BY 2;

-- Upper, Lower, Trim

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER (first_name) Caps
FROM employee_demographics;

SELECT TRIM('                  WATER       ');
SELECT LTRIM('                  WATER       ');
SELECT RTRIM('                  WATER       ');

-- SUBSTRINGS
# Substring allows you to specify a starting point and how many characters you want so you can take characters from anywhere in the string. 
# Left is going to allow us to take a certain amount of strings from the left hand side.
# Right is basically the opposite - taking it starting from the right side
#  Use this on phones to get the area code at the beginning.
SELECT first_name, 
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- Replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- Locate
# We have 2 arguments we can use here: we can specify what we are searching for and where to search
# It will return the position of that character in the string.
# It will return the location of just the first position.
SELECT LOCATE('k','Aakash');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- Concat - it will combine the strings together
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics;



