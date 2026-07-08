1=SELECT C.first_name,C.email,C.join_date,O.order_id,O.order_date FROM Customers C LEFT JOIN Orders O ON O.customer_id = C.customer_id WHERE C.join_date < DATE_SUB(CURDATE(),INTERVAL 6 MONTH) AND O.order_date >  DATE_SUB(CURDATE(),INTERVAL 90 DAY) AND O.O.order_id IS NULL;

2=SELECT P.category,AVG(I.unit_price),SUM(I.quantity*I.unit_price) FROM Products P INNER JOIN Order_Items I ON I.product_id = P.product_id INNER JOIN Orders O ON O.order_id = I.order_id WHERE O.order_status = "Completed" GROUP BY  P.category HAVING SUM(I.quantity*I.unit_price) > 1000;

3=SELECT C.first_name,C.country,COALESCE(SUM(O.total_amount),0)  FROM Orders O RIGHT JOIN Customers C ON C.customer_id = O.customer_id WHERE O.order_status = "Completed" GROUP BY C.first_name,C.country;

4=SELECT SUM(CASE WHEN order_status = "Cancelled" THEN  total_amount ELSE 0 END) AS CANCELLED_AMT,SUM(CASE WHEN order_status = "Completed" then 1 else 0 END) AS TOTAL_COMPLETED,YEAR(order_date),MONTH(order_date) FROM Orders WHERE YEAR(order_date) = 2026 GROUP BY YEAR(order_date),MONTH(order_date);

5= SELECT C.country,COUNT(O.order_id),CASE WHEN COUNT(O.order_id) > 50 THEN "High Volume" WHEN COUNT(O.order_id) BETWEEN 20 AND 50 THEN "Medium Volume" ELSE "Low Volume" END AS ORDER_CATEGORY FROM Customers C INNER JOIN Orders O ON O.customer_id = C.customer_id GROUP BY C.country;

6= SELECT CONCAT(C.first_name," ",C.last_name) as Names,O.order_date,P.product_name FROM Customers C INNER JOIN Orders O ON O.customer_id = C.customer_id INNER JOIN Order_Items I ON I.order_id = O.order_id INNER JOIN Products P ON P.product_id = I.product_id GROUP BY Names,O.order_date,P.product_name HAVING SUM(I.quantity) >= 3;

7= SELECT O.order_id FROM Orders O INNER JOIN Order_Items I ON I.order_id = O.order_id GROUP BY O.order_id HAVING O.total_amount > SUM(I.quantity*I.unit_price);

8=SELECT C. country,SUM(O.total_amount),DENSE_RANK() OVER( ORDER BY  SUM(O.total_amount)) FROM Customers C INNER JOIN Orders O ON O.customer_id = C.customer_id WHERE O.order_status = "Completed" GROUP BY  C. country;

9=SELECT order_date,LAG(order_date) OVER(PARTITION BY  customer_id ORDER BY order_date),datediff(order_date, LAG(order_date) OVER(PARTITION BY  customer_id ORDER BY order_date)) as dates_between ,customer_id FROM Orders WHERE  order_status = "Completed";

10= SELECT first_name,order_id FROM (SELECT C.first_name,C.customer_id,O. order_id,O.order_date,ROW_NUMBER() OVER(PARTITION BY  C.customer_id ORDER BY O.order_date ASC) AS TOP FROM Orders O INNER JOIN  Customers C ON C.customer_id = O.customer_id WHERE O.order_status = "Pending")T WHERE TOP = 1;
