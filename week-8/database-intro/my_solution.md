Release 5

1.
SELECT * FROM states;

2. 
SELECT * FROM regions;

3.
SELECT state_name, population
FROM states;

4.
SELECT state_name, population
FROM states
ORDER BY population DESC;


5.
SELECT state_name
FROM states
WHERE region_id = 7;

6.
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

7.
SELECT state_name
FROM states
WHERE population > 1000000
AND population < 1500000;

8.
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

9.
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';

10.
SELECT regions.region_name, states.state_name
FROM states
INNER JOIN regions
ON states.region_id=regions.id
ORDER BY region_id ASC;

Release 6

![Alt text](my_schema.png?raw=true)

Release 7 (Reflection)

What are databases for?

Databases are containers for large amounts of data, rather than using data collections within a given programming language, such as arrays or hashes.

What is a one-to-many relationship?

A one-to-many relationship means one row of a given table is related to multiple rows of the related table.

What is a primary key? What is a foreign key? How can you determine which is which?

The primary key is a column that is a unique identifier for a row in a table. The values in this column must be unique and cannot equal NULL. A foreign key is a column that contains the primary key to another table in the database. It is used to identify a particular row in the reference table. A foreign key will reference another table's information.

How can you select information out of a SQL database? What are some general guidelines for that?

I am not really sure what to consider as general for this question, but you can use SELECT column_name to reference a column and FROM to indicate the table you are pulling that information from. A rule to keep in mind is to add a ";" at the end of the parameters of your search.