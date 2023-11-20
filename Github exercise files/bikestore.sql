/*1. Retrieve the first name and last name of all customers.*/ 
select first_name , last_name from customers;  
/*2. Retrieve the products with a list price greater than $100.*/  
select * from products where list_price > '$100';
/*3. Retrieve the staff members sorted by their last name in ascending order.*/ 
select last_name from staffs  order by last_name asc;
/*4. Retrieve the order details with customer information (first name and last name) for each order.*/
select first_name , last_name , order_id from orders o 
join customers 
on customer_id = customer_id;
/*5. Calculate the total quantity of each product sold.*/

/*6. Retrieve the products with a total quantity sold greater than 100.*/

/*7. Retrieve the customers who have placed an order in the year 2016.*/

/*8. Insert a new category named "Electronics" into the categories table.*/

/*9. Update the list price of a product with product_id = 1 to $150.*/

/*10. Delete the staff member with staff_id = 2 from the staffs table.*/

/*11. Retrieve the unique cities from the stores table.*/

/*12. Retrieve the products with a model year between 2016 and 2018.*/

/*. Retrieve the customers with an email address ending in "@gmail.com".*/

/*14. Calculate the number of customers in the customers table.*/

/*15. Find the maximum and minimum list prices among all products.*/

/*16. Calculate the total quantity and average list price of all products.*/

/*17. Retrieve the staff members who have placed at least one order.*/

/*18. Retrieve the orders placed by customers with IDs 1, 3, and 5.*/

/*19. Retrieve the products with a NULL brand_id.*/

/*20. Combine the results of two SELECT statements to retrieve the names of staff members and customers.*/

/*21. Retrieve the order status as "Pending" for order_status = 1, "Processing" for order_status = 2, and "Completed" for order_status = 4.*/

/*22. Retrieve the top 5 highest-priced products.*/

/*23. Retrieve the staff members along with the names of their managers.*/

/*24. Retrieve all possible combinations of staff members and stores.*/

/*25. Retrieve the products that have at least one order and products that have no orders.*/

/*26. Retrieve the customers who have placed an order but have not registered as a staff member.*/

/*27. Create a view named "top_customers" that retrieves the top 10 customers based on their total order amount.*/

/*28. Add an index to the "email" column of the customers table.*/

/*29. Create a trigger that automatically updates the total_quantity column in the stocks table when a new order is placed.*/

/*30. Create a stored procedure named "get_order_details" that accepts an order ID as input and retrieves the order details.*/

/*31. Retrieve the product name and its corresponding brand name for all products.*/

/*32. Calculate the total sales amount for each store.*/

/*34. Retrieve the staff members along with the names of their managers (including staff members without managers).*/

/*35. Retrieve the total quantity of each product along with its corresponding category name.*/

/*36. Retrieve the hierarchical structure of staff members (managers and their subordinates).*/

/*37. Retrieve the order details along with the cumulative sales amount for each order.*/

/*38. Retrieve the products and their corresponding categories from different databases (production and sales).*/

/*39. Retrieve the customers who have a phone number or email address.*/

/*40. Retrieve the list of customers who have placed an order on a specific date: '2023-06-23'*/

/*41. Find the total quantity and total sales amount for each product in a specific store:*/

/*42. List the names of all active staff members along with their corresponding store names:*/

/*43. Calculate the average discount given on orders placed in a specific store:*/

/*44. Retrieve the order details (order ID, order date, customer name) for orders that are still pending:*/

/*45. Retrieve the names of all the brands along with the total number of products each brand has.*/

/*46. Retrieve the top 5 customers who have spent the highest total amount on their orders*/

/*47. Retrieve the orders that are pending and have not been shipped yet.*/

/*48. Retrieve the total quantity of each product available in the stocks.*/

/*49. Retrieve the names of the staff members along with the count of orders assigned to them.*/

/*50. Retrieve the list of products with their corresponding categories and brands.*/

/*51. Retrieve the customers who have placed at least one order in the year 2022.*/

/*52. Retrieve the staff members who are currently active and working in a specific store.*/

/*53. Retrieve the order details along with the customer's name and the store's name for a specific order ID.*/


/*55. Create Stored Procedure - Insert New Customer:*/

/*56. Create Stored Function - Calculate Total Order Amount for a Customer:*/

/*57. Create Stored Function - Get Product Count by Category:*/


