# create database
CREATE database Country;
use Country;

# Create a table named Country

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

# Create a table named Persons

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating INT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

# Insert 10 Rows into the Country Table

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'Brazil', 212559417, 8515767),
(4, 'India', 1380004385, 3287263),
(5, 'China', 1393409038, 9596961),
(6, 'Germany', 83783942, 357022),
(7, 'France', 67391582, 643801),
(8, 'Australia', 25499884, 7692024),
(9, 'Russia', 145934462, 17098242),
(10, 'Mexico', 128933207, 1964375);

# Insert 10 Rows into the Persons Table

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 5, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4, 2, 'Canada'),
(3, 'Carlos', 'Mendez', 212559417, 4, 3, 'Brazil'),
(4, 'Amit', 'Sharma', 1380004385, 5, 4, 'India'),
(5, 'Li', 'Wang', 1393409038, 3, 5, 'China'),
(6, 'Max', 'Müller', 83783942, 4, 6, 'Germany'),
(7, 'Sophie', 'Dupont', 67391582, 5, 7, 'France'),
(8, 'Jack', 'Johnson', 25499884, 4, 8, 'Australia'),
(9, 'Nikolai', 'Petrov', 145934462, 5, 9, 'Russia'),
(10, 'Maria', 'Garcia', 128933207, 4, 10, 'Mexico');

# 1. Print the first three characters of Country_name from the Country table.

SELECT LEFT(Country_name, 3) AS First_Three_Chars
FROM Country;

# 2. Concatenate first name and last name from the Persons table.
SELECT CONCAT(Fname,' ',Lname)AS full_name FROM Persons;

# 3.Count the number of unique country names from the Persons table.

SELECT COUNT(DISTINCT Country_name) AS Unique_Country_Count
FROM Persons;

# 4.Print the maximum population from the Country table.

SELECT MAX(population) AS max_population FROM Country;

# 5. Print the minimum population from the Persons table.

SELECT min(population) AS min_population FROM Country;

# 6. Insert 2 new rows into the Persons table making the Lname NULL, then count Lname from Persons table.

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(11, 'Evan', NULL, 500000, 4, 1, 'USA'),
(12, 'Olivia', NULL, 600000, 5, 2, 'Canada');

# 7. Find the number of rows in the Persons table.

SELECT COUNT(*) AS Total_Rows
FROM Persons;

# 8. Show the population of the Country table for the first 3 rows. (Using LIMIT)

SELECT Population
FROM Country
LIMIT 3;

# 9.Print 3 random rows of countries. (Using RAND() and LIMIT)

SELECT* FROM Country
ORDER BY RAND()
LIMIT 3;

# 10.List all persons ordered by their rating in descending order.

SELECT * FROM Persons ORDER BY rating desc;

# 11. Find the total population for each country in the Persons table.

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

# 12. Find countries in the Persons table with a total population greater than 50,000.

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;

# 13. List the total number of persons and average rating for each country, but only for countries with more than 2 persons,ordered by the average rating in ascending order.

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Average_Rating ASC;

