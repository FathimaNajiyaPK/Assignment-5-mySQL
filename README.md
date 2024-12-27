# Assignment-5-mySQL
# Sorting and grouping data
This repository contains SQL scripts for creating and querying two tables: Country and Persons.

Tables Description
Country Table
Fields: Id, Country_name, Population, Area

Persons Table
Fields: Id, Fname, Lname, Population, Rating, Country_Id, Country_name

# Operations Performed:
* String Operations: Use of LEFT and CONCAT for substring and concatenation.
*Aggregate Functions: COUNT, SUM, MAX, MIN, and AVG for calculations.
*Conditional Filters: HAVING for grouping and filtering.
*Sorting and Ordering: ORDER BY for arranging data.
*Random Selection: RAND() for selecting random rows.
*Row Limiting: LIMIT for fetching a specific number of rows.
*NULL Handling: Count non-NULL values in a column.
*Joins and References: Use of foreign keys between Country and Persons.
# Queries Included
Print first three characters of country names.
Concatenate first and last names of persons.
Count unique country names in the Persons table.
Find maximum and minimum populations.
Insert rows with NULL values and count non-NULL entries.
Fetch a limited number of rows or random rows.
Sort persons by rating in descending order.
Group and aggregate data by countries.
Find countries with a total population exceeding 50,000.
List total persons and average ratings for countries with more than 2 persons.
