--Get all users from Chicago.
select * from syntax_practice
	where city = 'chicago'
--Get all users with usernames that contain the letter a.
select * from syntax_practice
	where username like '%a%'
--The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
update syntax_practice
  set account_balance = 10.00
  where account_balance = 0
  and transactions_attempted = 0;
--Select all users that have attempted 9 or more transactions.
select * from syntax_practice
  where transactions_attempted >= 9;
--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
select username, account_balance
  from syntax_practice
  order by account_balance desc
  limit 3;
--Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
select username, account_balance
  from syntax_practice
  order by account_balance asc
  limit 3;
--Get all users with account balances that are more than $100.
select * from syntax_practice
  where account_balance <100
--Add a new record.
insert into syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) values ('noah', 'minneapolis', 0, 9001, 10000.00);
--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
delete from syntax_practice
where city = 'miami' or city = 'pheonix'
and transactions_completed < 5;
