-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select productname, categoryname from category c
join product p on c.id = p.categoryid;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- QUESTION: not sure why i need brackets around order?
select 
    o.id,
    companyname,
    orderdate
from [order] as o
join shipper as s
  on o.shipvia = s.id
  where orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productname, quantity
from product p
join orderdetail o on p.id = o.productid
where o.orderid = 10251
order by quantity DESC;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
-- QUESTION: this query displays way more rows
select orderid, companyname, lastname
from [order] o
join orderdetail od on o.id = od.orderid
join customer c on o.customerid = c.id
join employee e on o.employeeid = e.id;
