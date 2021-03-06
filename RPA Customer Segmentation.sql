-- 1
-- What are the column names?
SELECT * FROM users LIMIT 20;
-- id, email, campaign, test, created_At, birthday
-- 2
-- Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.
SELECT email, birthday FROM users WHERE birthday BETWEEN '1980-01-01' AND '1990-01-01' ORDER BY birthday;
   
-- 3
-- Find the emails and creation date of users 
-- whose created_at date matches this condition.
SELECT email, created_at FROM users WHERE created_at < '2017-05-01';

-- 4
-- Find the emails of the users who received the ‘bears’ test.
SELECT email FROM users WHERE test = 'bears';

-- 5
-- Find all the emails of all users who 
-- received a campaign on website BBB.
SELECT email FROM users WHERE campaign = 'BBB-1' OR campaign = 'BBB-2';


-- 6
-- Find all the emails of all users who received ad copy 2 in 
-- their campaign.
SELECT email FROM users WHERE campaign = 'AAA-2' OR campaign = 'BBB-2';

-- 7
-- Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the 
-- campaign and test columns.
SELECT email FROM users WHERE campaign IS NOT NULL AND test IS NOT NULL;
