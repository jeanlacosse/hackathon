CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR (280),
    last_name VARCHAR (280),
    phone_number BIGINT,
    title VARCHAR (280),
    salary INT,
    location VARCHAR (280),
    hr boolean DEFAULT FALSE,
    manager boolean DEFAULT FALSE,
    manager_number INT,
    password VARCHAR (280) DEFAULT 123
);


INSERT INTO employees (
first_name, last_name, phone_number, title, salary, location, manager_number
)

VALUES 
( 'Yolanda', 'Harvey', 123456789 , 'HR', 55000, 'St. Paul', 5),
( 'Sammy', 'Dent', 234567896 , 'Developer', 80000, 'St. Paul', 3),
( 'Trish', 'Phlaum', 345678912, 'Engineer', 75000, 'St. Paul', 3),
( 'Kevin', 'Seiler', 456789123, 'Accounting Manager', 90000, 'St. Paul', 2),
( 'Adam', 'Wegren', 567891234, 'Tech Manager', 102000, 'St. Paul', 3),
( 'Tino', 'Waters', 56789654, 'Accounting', 42000, 'St. Paul', 2),
( 'MaMoush', 'Evans', 678912345, 'Accounting', 47000, 'St. Paul', 2),
( 'Peter', 'Kvale', 789123456, 'Developer', 88000, 'St. Paul', 3),
( 'Katie', 'Letterman', 321654987, 'Program Creator', 66000, 'St. Paul', 7),
( 'Isaac', 'Abukhadair', 6455987456, 'Engineer', 92000, 'St. Paul', 3),
( 'Jean-Luc', 'LaCosse', 564879125, 'Custodian', 11000, 'St. Paul', 7),
( 'Mathias', 'Engbloom', 984687321, 'Teacher', 33000, 'St. Paul', 7),
( 'Marisa', 'Davern', 656565656, 'VP of Tech', 145000, 'St. Paul', 3),
( 'Jack', 'Litman', 987987987, 'Sales', 59000, 'St. Paul', 4),
( 'Jeannie', 'Branstrator', 2345129898, 'Sales Manager', 65000, 'St. Paul', 4),
( 'Jon', 'Maras', 12121545454, 'Insurance Adjuster', 65000, 'St. Paul', 5),
( 'Neil', 'Hanson', 986547512, 'Sales', 43000, 'St. Paul', 4);