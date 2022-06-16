 SELECT title, score FROM hacker_news ORDER BY score DESC LIMIT 5;
 -- Shows the top 5 stories based on their scores
 SELECT SUM(score) FROM hacker_news;
 -- Returns the total score of all the stories which is 6366
 SELECT user, SUM(score) FROM hacker_news GROUP BY user HAVING SUM(score) > 200;
 -- Returns the users with a total score above 200
 SELECT(517 + 282 + 304 + 309) / 6636.0;
 -- Returns the percentage of the 4 users from the previous query
 SELECT user, COUNT(*) FROM hacker_news WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' GROUP BY user;
 -- Returns the users who have sent in prank videos
 SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;
-- Shows which sites feed the stories to HackerRank
 SELECT COUNT(*), CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news GROUP BY 2;
-- Returns the count of stories by each site or other news source
SELECT timestamp FROM hacker_news LIMIT 10;
-- Returns 10 timestamps from the table
SELECT timestamp, strftime('%H', timestamp) FROM hacker_news GROUP BY 1
LIMIT 20;
-- Converts the timestamp column into hours 
SELECT strftime('%H', timestamp), AVG(score), COUNT(*) FROM hacker_news GROUP BY 1;
-- Returns the average score and number of stories based on the hour of the day
SELECT strftime('%H', timestamp) AS 'Hours', ROUND(AVG(score)) AS 'Rouned Average Score', COUNT(*) FROM hacker_news WHERE timestamp IS NOT NULL GROUP BY 1 ORDER BY 2 DESC;
