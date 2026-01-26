# Database Activity Report

This repository contains the design and testing of a relational database for managing clients, orders, products, and order details.

## Table Overview

### **Client Table (`clientv1`)**
- Stores client information.
- Columns:
  - `ClientNo` (VARCHAR(10), Primary Key)
  - `FirstName` (VARCHAR(50))
  - `MidName` (VARCHAR(50))
  - `Surname` (VARCHAR(50))
  - `Street` (VARCHAR(50))
  - `City` (VARCHAR(50))
  - `Zip` (VARCHAR(10))
  - `Email` (VARCHAR(100))
  - `MobileNo` (VARCHAR(20))
  - `Landline` (VARCHAR(20))
  - `CreditLimit` (DECIMAL(10,2))

### **Order Table (`OrderT`)**
- Stores orders placed by clients.
- Columns:
  - `InvoiceNo` (INT, Primary Key)
  - `ClientNo` (VARCHAR(10), FK to `clientv1`)
  - `OrderDate` (DATE)

### **Product Table (`Product`)**
- Stores product information.
- Columns:
  - `ProductCode` (VARCHAR(10), Primary Key)
  - `ProductDescription` (VARCHAR(100))
  - `UnitCost` (DECIMAL(10,2))
  - `Category` (VARCHAR(50))

### **Detail Table (`Detail`)**
- Stores order details per invoice.
- Columns:
  - `InvoiceNo` (INT, FK to `OrderT`)
  - `ProdCode` (VARCHAR(10), FK to `Product`)
  - `Quantity` (INT)
  - Composite Primary Key: (`InvoiceNo`, `ProdCode`)

## SQL Scripts
All SQL scripts are located in the `sql/` folder:
- `create_tables.sql` — Table creation scripts.
- `alter-data-types.sql` — Adjust column data types.
- `add-pk-constraint.sql` — Add named primary keys.
- `add-fk-constraint.sql` — Add named foreign keys with cascade and set-null rules.
- `delete-product-codes-FT2&FS.sql` — Delete specific products and check cascading deletes.
- `delete-invoices-1&4.sql` — Delete specific invoices and check cascading deletes.
- `delete-a-client.sql` — Delete a client and check effects on orders.

## Data Sources
CSV files imported into the database are located in the `data/` folder:
- `ClientV1.csv`
- `OrderT.csv`
- `Product.csv`
- `Detail.csv`

## Deletion Test Cases

### **1. Delete Products 'FT2' and 'FS'**
- Effect:
  - Corresponding rows in `Detail` deleted automatically.
  - No changes in `OrderT` or `clientv1`.

### **2. Delete InvoiceNo 1 and 4**
- Effect:
  - Corresponding rows in `Detail` deleted automatically.
  - Orders removed from `OrderT`.
  - Clients remain unaffected.

### **3. Delete Client 'C5'**
- Effect:
  - `ClientNo` set to NULL in all related orders in `OrderT`.
  - Orders remain; `Detail` table unaffected.

## Summary of Foreign Key Effects
| FK Relationship | On Delete | On Update |
|----------------|-----------|-----------|
| OrderT.ClientNo → clientv1.ClientNo | SET NULL | RESTRICT |
| Detail.ProdCode → Product.ProductCode | CASCADE | CASCADE |
| Detail.InvoiceNo → OrderT.InvoiceNo | CASCADE | RESTRICT |

## Summary
This repository demonstrates proper relational database design, including:
- Correct data types for all columns.
- Named primary keys and foreign keys.
- Cascade and set-null behaviors for deletions.
- Verification through deletion test cases to confirm cascading effects.

