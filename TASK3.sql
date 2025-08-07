select * from [dbo].[Accounts]
select * from [dbo].[Branches]
select * from [dbo].[Customers]
select * from [dbo].[Transactions]

--retriving particular columns from a table 
select customer_id,name from customers

--retriving every columns from a table
select * from customers

--retriving data using and operator
select * from customers where customer_id=4 and name='rahul'

-- retriving data using in operator
select * from Customers where customer_id in (2,4,6)

-- retriving data using in operator
select * from customers where customer_id not in (2,4,6)

--retriving data using like operator
select * from accounts
where account_type  like '%savings%'

--retriving data using and & in operator
select * from accounts 
where account_id in (2,5,8) and customer_id in(2,4,5)

--retriving data using or operator
select * from [Transactions]
where transaction_id =3 or account_id=2

--retriving data from multiple tables usinh joins
select c.customer_id,c.name,a.account_id,a.balance
from 
Customers c inner join Accounts a
on c.customer_id=a.customer_id
order by c.customer_id 

--retriving data from more than 3 tables using joins
select *
from 
Customers c inner join Accounts a
on c.customer_id=a.customer_id
inner join Transactions t
on a.account_id=t.transaction_id
inner join Branches b
on a.branch_id=b.branch_id
order by c.customer_id 

--retriving data using beetween opertaor and order by ascending order
select * from Transactions
where transaction_date between '2025-07-01' and '2025-07-22'
order by  transaction_date 


