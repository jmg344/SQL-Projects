 SELECT * FROM transactions;
 -- Column names are id, user_id, date, currency, money_in, money_out
 SELECT SUM(money_in) FROM transactions;
 -- The total amount of money is 17173.0
 SELECT SUM(money_out) FROM transactions;
 -- The total amount of money out is 33417.0
 SELECT COUNT(money_in) FROM transactions;
 SELECT COUNT(money_in) FROM transactions WHERE currency = 'BIT';
 -- There are 21 BITCOIN transactions in the table out of 43 total transactions
 SELECT MAX(money_in), MAX(money_out) FROM transactions;
 -- The largest transaction was money out(15047.0)
 SELECT AVG(money_in) FROM transactions WHERE currency = 'ETH';
 -- The average ETH buy in is 131.88
 SELECT date, AVG(money_in), AVG(money_out) FROM transactions GROUP BY date;
 -- A ledger for different dates in the table
  SELECT date, ROUND(AVG(money_in), 2) AS 'Money In', ROUND(AVG(money_out), 2) AS 'Money Out' FROM transactions GROUP BY date;