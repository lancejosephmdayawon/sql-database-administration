# Database Administration Portfolio - SQL Query Project

## Project Overview

This project demonstrates advanced SQL querying techniques using a multi-table database system. The database contains information about clients, orders, invoices, and products, showcasing proficiency in joins, aggregations, and complex query construction.

## Repository Structure

```
📁 Multiple Tables Exercise
├── 📁 sql-queries/
│   ├── No1.sql
│   ├── No2.sql
│   ├── No3.sql
│   ├── No4.sql
│   ├── No5.sql
│   ├── No6.sql
│   ├── No7.sql
│   ├── No8.sql
│   ├── No9.sql
│   ├── No10.sql
│   ├── unlisted_exercise_add_column.sql
│   ├── unlisted_exercise_self_join.sql
│   └── unlisted_exercise_update_values.sql
├── 📁 csv-files/
│   ├── Client.csv
│   ├── Detail.csv
│   ├── OrderT.csv
│   └── Product.csv
├── 📄 Multiple Tables Exercise.docx
├── 📄 README.md
```

## Database Schema

The project uses data from `csv-file Folder` with the following CSV Files:

- **Client.csv**: Customer information (ClientNo, FirstName, MidName, Surname, Street, City, Zip, Email, MobileNo,Landline,CreditLimit)
- **OrderT.csv**: Order transactions (InvoiceNo,ClientNo,OrderDate)
- **Product.csv**: Product catalog (ProductCode, ProductDescription, UnitCost, Category)
- **Detail.csv**: Line items (InvoiceNo,ProdCode,Quantity)

## SQL Queries & Solutions

### 1. Client Orders for 2020

📄 **File**: `No1.sql`

**Objective**: List client ID, full name (formatted), invoice numbers, and order dates for orders made in 2020.

**Output Columns**:

- `ClientNo`
- `ClientName` (First Name + Middle Initial + Last Name)
- `InvoiceNo`
- `OrderDate`

**Skills Demonstrated**: date filtering, String concatenation, YEAR function, TRIM function, LEFT function, INNER JOIN

---

### 2. Client Product Orders with Quantities

📄 **File**: `No2.sql`

**Objective**: Display client ID, product codes, and order quantities for each client.

**Output Columns**:

- `ClientNo`
- `ProdCode`
- `Quantity`

**Skills Demonstrated**: Inner Joins, simple optimization

---

### 3. All Clients with Their Invoices (Including Non-Purchasers)

📄 **File**: `No3.sql`

**Objective**: Show all clients and their invoices, including clients who haven't made purchases.

**Output Columns**:

- `ClientNo`
- `ClientName`
- `InvoiceNo` (NULL if no purchases)

**Skills Demonstrated**: LEFT JOIN (outer join), handling NULL values, Sring concatenation, YEAR function, TRIM function, LEFT function

---

### 4. Client Products with All Products Listed

📄 **File**: `No4.sql`

**Objective**: Display all products with purchasing clients, showing all products even if unpurchased.

**Output Columns**:

- `client_id` (NULL if product not purchased)
- `product_code`

**Skills Demonstrated**: RIGHT JOIN strategy, Multi-table Joins (3 Tables)

---

### 5. Unique Client-Product Combinations with Pricing

📄 **File**: `No5.sql`

**Objective**: List unique records of client ID, product description, and unit cost.

**Output Columns**:

- `ClientNo`
- `ProductDescription`
- `UnitCost`

**Skills Demonstrated**: DISTINCT keyword, duplicate elimination, ORDER BY clause

---

### 6. Line Item Amounts per Invoice

📄 **File**: `No6.sql`

**Objective**: Calculate amount (quantity × unit price) for each product per invoice.

**Output Columns**:

- `ClientNo`
- `InvoiceNo`
- `ProdCode`
- `Quantity`

**Sample Output**:

```
ClientNo | InvoiceNo | ProdCode | Quantity
---------|-----------|----------|--------
C1       | 1         | DP       | 300
C1       | 1         | DI       | 200
```

**Skills Demonstrated**: Calculated fields, mathematical operations, Multi-Table Joins

---

### 6.1 Invoice Totals per Client

📄 **File**: `No6.sql` (continued)

**Objective**: Sum amounts by client and invoice.

**Output Columns**:

- `ClientNo`
- `InvoiceNo`
- `Total_Amount_Of_Invoice`

**Sample Output**:

```
ClientNo | InvoiceNo | Total_Amount_Of_Invoice
---------|-----------|--------------------
C1       | 1         | 500
C1       | 12        | 100
```

**Skills Demonstrated**: GROUP BY, SUM aggregation, Multi-Table Joins

---

### 7. Total Amount Purchased per Client

📄 **File**: `No7.sql`

**Objective**: Calculate total purchases for each client across all invoices.

**Output Columns**:

- `ClientNo`
- `Total_Amount_Bought`

**Sample Output**:

```
ClientNo | Total Amount Bought
---------|-------------------
C1       | 600
```

**Skills Demonstrated**: Advanced aggregation, GROUO BY Clause, Multi-Table Joins

---

### 8. Client Purchase Details with Credit Limit

📄 **File**: `No8.sql`

**Objective**: Display client name, credit limit, product description, and purchase amount.

**Output Columns**:

- `ClientName`
- `CreditLimit`
- `ProductDescription`
- `Product_Bought_Amount`

**Skills Demonstrated**: String concatenation, YEAR function, TRIM function, LEFT function, Complex multi-table joins, business reporting

---

### 9. Invoice Details with Complete Product Information

📄 **File**: `No9.sql`

**Objective**: Show invoice numbers with all corresponding product table fields.

**Output Columns**:

- `InvoiceNo`
- All fields from products table

**Skills Demonstrated**: Comprehensive data retrieval, detailed reporting

---

### 10. Clients with Multiple Invoices

📄 **File**: `No10.sql`

**Objective**: Count invoices per client and display only those with more than one invoice.

**Output Columns**:

- `ClientNo`
- `Invoice_Count`

**Skills Demonstrated**: HAVING clause, COUNT function, GROUP BY Clause, conditional aggregation

---

## Key SQL Concepts Demonstrated

### Joins

- **INNER JOIN**: Combining related data from multiple tables
- **LEFT JOIN**: Including all records from the left table with matching records from the right
- **RIGHT JOIN**: Including all records from the right table
- **Multi-table Joins**: Connecting 3+ tables in a single query

### Aggregation

- **SUM()**: Calculating totals
- **COUNT()**: Counting records
- **GROUP BY**: Organizing data by categories
- **HAVING**: Filtering aggregated results

### Data Manipulation

- **CONCAT()**: String concatenation for formatted output
- **DISTINCT**: Eliminating duplicate records
- **Calculated Fields**: Mathematical operations in queries (quantity × unit_price)
- **Date Functions**: YEAR() for date filtering

### Query Optimization

- **Proper indexing strategies**: Using primary and foreign keys effectively
- **Efficient join ordering**: Optimizing multi-table queries
- **Selective column retrieval**: Requesting only necessary fields

## Business Intelligence Insights

These queries enable:

- **Customer Analysis**: Tracking purchase history and spending patterns
- **Product Performance**: Identifying popular products and inventory needs
- **Revenue Reporting**: Calculating sales totals at various levels
- **Customer Segmentation**: Identifying high-value clients with multiple purchases

## Technical Environment

- **Database System**: MySQL
- **Tools Used**: MySQL Workbench
- **Data Source**: CSV Files (`csv-files Folder`)

## How to Use

1. Import the data from the `csv-files Folder` into your database
2. Create the necessary tables (clients, orders, order_details, products)
3. Execute each SQL file in the `sql-queries/` folder
4. Analyze the results for business insights

## Learning Outcomes

Through this project, I have demonstrated proficiency in:

- Complex SQL query construction
- Multi-table relationship management
- Data aggregation and analysis
- Business reporting and analytics
- Database design principles

---

## Additional Exercises

Beyond the core queries, this project includes additional SQL exercises demonstrating advanced database manipulation techniques:

### 📄 `unlisted_exercise_add_column.sql`

**Objective**: Demonstrates ALTER TABLE commands to add new ClientMentor Column to existing client table.

**Skills Demonstrated**:

- DDL (Data Definition Language)
- Table schema modification
- Column addition with proper data types

---

### 📄 `unlisted_exercise_self_join.sql`

**Objective**: Implements self-joins to compare rows within the same table.

**Skills Demonstrated**:

- Self-join technique
- Hierarchical data querying
- Complex relationship analysis within single tables

---

### 📄 `unlisted_exercise_update_values.sql`

**Objective**: Updates existing data in tables based on specific conditions.

**Skills Demonstrated**:

- DML (Data Manipulation Language)
- UPDATE statements with WHERE clauses
- Safe data modification practices

---

**Author**: Lance Joseph Dayawon
**Date**: 10/29/2025
**Course**: Database Administration
