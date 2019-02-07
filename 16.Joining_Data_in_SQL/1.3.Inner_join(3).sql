-- The ability to combine multiple joins in a single query is a powerful feature of SQL, e.g:

-- SELECT *
-- FROM left_table
-- INNER JOIN right_table
-- ON left_table.id = right_table.id
-- INNER JOIN another_table
-- ON left_table.id = another_table.id;
-- As you can see here it becomes tedious to continually write long table names in joins. This is when it becomes useful to alias each table using the first letter of its name (e.g. countries AS c)! It is standard practice to alias in this way and, if you choose to alias tables or are asked to specifically for an exercise in this course, you should follow this protocol.

-- Now, for each country, you want to get the country name, its region, and the fertility rate and unemployment rate for both 2010 and 2015.

-- TASK
-- Inner join countries (left) and populations (right) on the code and country_code fields respectively.
-- Alias countries AS c and populations AS p.
-- Select code, name, and region from countries and also select year and fertility_rate from populations (5 fields in total).








-- SOLUTION
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code;