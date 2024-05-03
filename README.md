# SQL - Employee Database: A Mystery in Two Parts


## Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data, in other words it performs:

1. Data Modeling

2. Data Engineering

3. Data Analysis


#### Data Modeling

Inspects the CSVs and sketch an ERD of the tables.

The ERD:
![ERD](EmployeeSQL/ERD_EmployeeSQL.png)

#### Data Engineering

* Utilize the provided information to design a table schema for each of the six CSV files. Include specifications for data types, primary keys, foreign keys, and any other constraints necessary for data integrity. Refer to the 'table_schema.sql' file for the SQL commands used to create the tables.

* Import each CSV file into its corresponding SQL table. Ensure that the data is accurately loaded into the database for further analysis.

#### Data Analysis

* The 'analysis.queries.sql' file contains SQL queries to extract valuable insights from the employee database. The queries included are:

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

