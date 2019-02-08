-- Often it's useful to look at a numerical field not as raw data, but instead as being in different categories or groups.

-- You can use CASE with WHEN, THEN, ELSE, and END to define a new grouping field.
-- Using the countries table, create a new field AS geosize_group that groups the countries into three groups:

-- If surface_area is greater than 2 million, geosize_group is 'large'.
-- If surface_area is greater than 350 thousand but not larger than 2 million, geosize_group is 'medium'.
-- Otherwise, geosize_group is 'small'

SELECT name, continent, code, surface_area,
        -- first case
    CASE WHEN ___ > ___ THEN '___'
        -- second case
        WHEN > ___ THEN ___
        -- else clause + end
        ELSE ___ END
        AS ___
FROM ___;











-- SOLUTION
SELECT name, continent, code, surface_area,
        -- first case
    CASE WHEN surface_area > 2000000 THEN 'large'
        -- second case
        WHEN surface_area > 350000  THEN 'medium'
        -- else clause + end
        ELSE 'small' END
        AS geosize_group
FROM countries;