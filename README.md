# 🛒 ShopEase E-Commerce SQL Analysis

An end-to-end SQL project analysing a fictional e-commerce database using **MySQL**. The project covers customer behaviour, order performance, product sales, and revenue trends across 4 relational tables.

---

## 📁 Project Structure

```
sql-ecommerce-analysis/
│
├── ShopEase_Analysis.sql   # All queries (beginner → advanced)
└── README.md
```

---

## 🗄️ Database Schema

The dataset consists of 4 tables with the following relationships:

```
customers ──< orders ──< order_items >── products
```

| Table | Description | Rows |
|---|---|---|
| `customers` | Customer profiles with location and signup date | 10 |
| `products` | Product catalogue with category and pricing | 10 |
| `orders` | Order records with status (Completed / Pending / Cancelled) | 15 |
| `order_items` | Line items linking orders to products with quantity and price | 24 |

---

## 🔍 Analysis Performed

### 🟢 Beginner — Filtering & Sorting
| # | Task | Concepts |
|---|---|---|
| 1 | Retrieve all customers | `SELECT *` |
| 2 | List product names and prices | Column selection |
| 3 | Filter completed orders only | `WHERE` |
| 4 | Find products under $50 | Numeric filtering |
| 5 | Sort products by price (high → low) | `ORDER BY DESC` |

### 🟡 Intermediate — Aggregation & Joins
| # | Task | Concepts |
|---|---|---|
| 6 | Count orders per customer | `GROUP BY`, `COUNT()` |
| 7 | Calculate revenue per order | `SUM()`, arithmetic |
| 8 | Customers who have placed orders | `JOIN`, `DISTINCT` |
| 9 | Top 5 customers by total spend | Multi-table `JOIN`, `LIMIT` |
| 10 | Top 3 best-selling products by units sold | `JOIN`, `SUM`, `ORDER BY` |

### 🔴 Advanced — LEFT JOINs, HAVING & Date Functions
| # | Task | Concepts |
|---|---|---|
| 11 | Customers who never placed an order | `LEFT JOIN`, `NULL` check |
| 12 | Monthly revenue trend (completed orders) | `MONTHNAME()`, date grouping |
| 13 | Product categories with avg price above $40 | `HAVING`, `AVG()`, `ROUND()` |
| 14 | Repeat buyers (2+ completed orders) | `HAVING`, `COUNT`, `JOIN` |

---

## 💡 Key Insights

- **Amara Osei** is the highest-spending customer, placing 3 orders including high-value appliance purchases
- **Notebook Set** and **Wireless Earbuds** are the best-selling products by units sold
- **Electronics** and **Appliances** are the highest-value categories by average price
- Several customers signed up but never placed an order — a potential re-engagement opportunity
- Revenue peaked in **Q1 2024** driven by completed multi-item orders

---

## 🛠️ Tools Used

- **MySQL 8.0**
- **MySQL Workbench**

---

## 🚀 How to Run

1. Open MySQL Workbench and create a new schema:
```sql
CREATE DATABASE shopease;
USE shopease;
```

2. Run the `CREATE TABLE` statements to set up the schema

3. Run the `INSERT INTO` statements to seed the data

4. Execute any query from `ShopEase_Analysis.sql`

---

##📸Query Results

### Best Selling Products 

![Best Selling Products](Best-Selling_Products.png)
