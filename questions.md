# SQL Business Case Studies

This repository contains **10 SQL business case studies** based on realistic scenarios commonly encountered by Data Analysts.

---

## 1. Customer Re-engagement Campaign

### Business Scenario
Marketing wants to identify inactive users for a targeted re-engagement email campaign.

### Task
Write a query to find the names and email addresses of all customers who joined more than six months ago but have not placed any orders in the last 90 days.

---

## 2. Inventory Performance Analysis

### Business Scenario
The Inventory Management team wants to evaluate product performance to optimize quarterly procurement.

### Task
Write a query to identify product categories where the total revenue generated from **Completed** orders exceeds **$1,000**, and calculate the average unit price of all products sold within those categories.

---

## 3. Customer Purchase Analysis

### Business Scenario
The Sales team wants to evaluate customer acquisition success by determining how much each registered customer has spent.

### Task
Retrieve all registered customers, including their country and the total amount they have spent on **Completed** orders. Customers who have never placed an order should display a total spent of **0**.

---

## 4. Monthly Cancellation Report

### Business Scenario
The Finance department needs monthly insights into cancelled orders and completed sales.

### Task
Calculate the total revenue lost due to **Cancelled** orders and the total number of **Completed** orders for each month of the current year.

---

## 5. Regional Sales Segmentation

### Business Scenario
Customer Success wants to classify countries based on purchasing activity.

### Task
For each country, calculate the total number of orders placed and categorize the country as:

- High Volume (More than 50 orders)
- Medium Volume (20–50 orders)
- Low Volume (Less than 20 orders)

---

## 6. Bulk Purchase Detection

### Business Scenario
The Product team wants to identify products frequently purchased in bulk for promotional bundle offers.

### Task
Identify products purchased in a quantity of **3 or more** within a single order. Display the product name, customer's full name, and the order date.

---

## 7. Historical Price Comparison

### Business Scenario
The Pricing team is reviewing historical sales to determine when products were sold below their current catalog price.

### Task
Retrieve all order items where the price paid at the time of purchase is strictly less than the product's current listed price.

---

## 8. Country Revenue Ranking

### Business Scenario
Executive Management wants to identify the company's highest-performing international markets.

### Task
Rank countries based on their total revenue generated from **Completed** orders. Countries with identical revenue should receive the same rank without skipping subsequent ranking numbers.

---

## 9. Customer Purchase Cycle Analysis

### Business Scenario
The Retention team wants to understand how frequently customers place orders.

### Task
For every customer's **Completed** order, retrieve the current order date, the immediately preceding completed order date, and calculate the number of days between consecutive purchases.

---

## 10. Earliest Pending Order

### Business Scenario
The Logistics team needs to process the oldest pending request for every customer.

### Task
Retrieve the **single earliest Pending order** for each customer. If a customer has multiple pending orders, only return the oldest one.
