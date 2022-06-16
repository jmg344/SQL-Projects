SELECT * FROM startups;
-- There are 10 columns in the table
SELECT COUNT(name) FROM startups;
-- There are 70 companies in the table
SELECT SUM(valuation) FROM startups;
-- The total valuation of all companies is 974455790000
SELECT MAX(raised) FROM startups;
-- The highest amount rasied was 11500000000
SELECT MAX(raised) FROM startups WHERE stage = 'Seed';
-- The highest amount raised during the seed stage was 1800000
SELECT MIN(founded) FROM startups;
-- The oldest company was founded in 1994
SELECT AVG(valuation) FROM startups;
-- The average valuation is 15974685081.9672
SELECT category, AVG(valuation) FROM startups GROUP BY category;
-- Returns the average valuation for each category
SELECT category, ROUND(AVG(valuation), 2) FROM startups GROUP BY category;
-- Returns the average valuation for each category rounded by 2 decimal places
SELECT category, ROUND(AVG(valuation), 2) FROM startups GROUP BY category ORDER BY 2 DESC;
-- Returns the average valuation for each category rounded by 2 decimal places in order from highest to lowest
SELECT category, COUNT(*) FROM startups GROUP BY category;
-- Returns the categories and how many companies each category has
SELECT category, COUNT(*) FROM startups GROUP BY category 
HAVING COUNT(*) > 3;
-- The most competitive categories are Educaiton, Mobile and Social
SELECT location, AVG(employees) FROM startups GROUP BY location;
-- Returns the average number of employees based on locations
SELECT location, AVG(employees) FROM startups GROUP BY location HAVING AVG(employees) > 500;
-- Returns the average number of employees based on locations with average greater than 500
