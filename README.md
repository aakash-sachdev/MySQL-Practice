## MySQL-Practice questions 

Here are some beginner-level MySQL practice questions to help you improve your skills:

Basic Queries
	1.	Create a Database
Create a database named StudentRecords.
	2.	Create a Table
Create a table named Students with the following columns:
	•	id (Primary Key, Integer)
	•	name (VARCHAR, 50)
	•	age (Integer)
	•	grade (VARCHAR, 10)
	3.	Insert Data
Insert the following records into the Students table:

id | name    | age | grade
1  | Alice   | 20  | A
2  | Bob     | 19  | B
3  | Charlie | 21  | A
4  | David   | 22  | C


	4.	Select Query
Write a query to select all columns from the Students table.
	5.	Condition-Based Query
Write a query to find students who have a grade of ‘A’.
	6.	Sorting Results
Write a query to display all students sorted by age in descending order.
	7.	Update Query
Update the grade of the student with id = 4 to ‘B’.
	8.	Delete Query
Delete the record of the student whose name is ‘Charlie’.

Intermediate Queries
	9.	Count Rows
Write a query to count the total number of students in the table.
	10.	Aggregate Function
Write a query to calculate the average age of students.
	11.	Group By
Write a query to group students by grade and count the number of students in each grade.
	12.	Join Tables
Create another table called Courses:
	•	course_id (Primary Key, Integer)
	•	course_name (VARCHAR, 50)
	•	student_id (Foreign Key referencing Students.id)
Insert records linking students with courses, then write a query to fetch student names along with the courses they are enrolled in.

Practice with Constraints
	13.	Primary Key
Add a primary key constraint to the Students table.
	14.	Unique Constraint
Modify the Students table to ensure that the name column is unique.
	15.	Foreign Key
Add a foreign key to the Courses table referencing the Students table.

Let me know if you’d like detailed solutions for any of these!