# PhysicalMediaDatabase

A personal MySQL database for tracking a physical media collection — including books, DVDs, comics, and CDs. Built using MySQL Workbench 8.x and Python (IDLE).


## Prerequisites

- [MySQL Community Server 8.x](https://dev.mysql.com/downloads/mysql/)
- [MySQL Workbench 8.x](https://dev.mysql.com/downloads/workbench/)
- Python 3.x


## Setup Instructions

### 1. Install MySQL

Download and install MySQL Community Server and MySQL Workbench from the links above. Follow the installer prompts and note the root password you set during setup.

### 2. Open MySQL Workbench

Launch MySQL Workbench and connect to your local instance (usually `localhost:3306`).

### 3. Create the Database and Tables

Open a new SQL tab and run the following script to create the `PhysicalMedia` database and all four tables:

```sql
-- Create the database
CREATE DATABASE IF NOT EXISTS PhysicalMedia;
USE PhysicalMedia;

-- Books
DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books` (
    `Title`          VARCHAR(255) NOT NULL,
    `Author`         VARCHAR(255),
    `Genre`          VARCHAR(100),
    `Year_Published` INT,
    `ISBN`           VARCHAR(20),
    `Status`         VARCHAR(50),
    `Rating`         VARCHAR(10),
    `Notes`          TEXT
);

-- DVDs
DROP TABLE IF EXISTS `DVDS`;
CREATE TABLE `DVDS` (
    `Title`         VARCHAR(255) NOT NULL,
    `Director`      VARCHAR(255),
    `Genre`         VARCHAR(100),
    `Year_Released` YEAR,
    `Format`        VARCHAR(50),
    `Studio`        VARCHAR(255),
    `Status`        VARCHAR(50),
    `Rating`        VARCHAR(10),
    `Notes`         TEXT
);

-- Comics
DROP TABLE IF EXISTS `Comics`;
CREATE TABLE `Comics` (
    `Title`          VARCHAR(255) NOT NULL,
    `Issue_Number`   VARCHAR(20),
    `Publisher`      VARCHAR(255),
    `Writer`         VARCHAR(255),
    `Artist`         VARCHAR(255),
    `Genre`          VARCHAR(100),
    `Year_Published` INT,
    `ARC`            VARCHAR(255),
    `Status`         VARCHAR(50),
    `Notes`          TEXT
);

-- CDs
DROP TABLE IF EXISTS `CDS`;
CREATE TABLE `CDS` (
    `Title`         VARCHAR(255) NOT NULL,
    `Artist`        VARCHAR(100) NOT NULL,
    `Genre`         VARCHAR(100),
    `Year_Released` YEAR,
    `Status`        VARCHAR(50),
    `Notes`         TEXT
);
```

---

## Inserting Records

Use the templates below to add entries to each table. Replace the example values with your own.

**Books**
```sql
INSERT INTO `Books` (`Title`, `Author`, `Genre`, `Year_Published`, `ISBN`, `Status`, `Rating`, `Notes`)
VALUES ('Dune', 'Frank Herbert', 'Sci-Fi', 1965, '978-0441013593', 'Owned', '10/10', 'A classic.');
```

**DVDs**
```sql
INSERT INTO `DVDS` (`Title`, `Director`, `Genre`, `Year_Released`, `Format`, `Studio`, `Status`, `Rating`, `Notes`)
VALUES ('Blade Runner', 'Ridley Scott', 'Sci-Fi', 1982, 'Blu-ray', 'Warner Bros.', 'Owned', '10/10', 'Directors cut.');
```

**Comics**
```sql
INSERT INTO `Comics` (`Title`, `Issue_Number`, `Publisher`, `Writer`, `Artist`, `Genre`, `Year_Published`, `ARC`, `Status`, `Notes`)
VALUES ('Batman', '1', 'DC Comics', 'Bob Kane', 'Bob Kane', 'Superhero', 1940, 'Origin', 'Owned', 'First appearance.');
```

**CDs**
```sql
INSERT INTO `CDS` (`Title`, `Artist`, `Genre`, `Year_Released`, `Status`, `Notes`)
VALUES ('The Dark Side of the Moon', 'Pink Floyd', 'Rock', 1973, 'Owned', 'Original pressing.');
```

---


## Python Integration

This project uses Python (IDLE) to connect to and interact with the database via the `mysql-connector-python` package.

Install the connector:
```bash
pip install mysql-connector-python
```

Basic connection example:
```python
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="PhysicalMedia"
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM Books")
for row in cursor.fetchall():
    print(row)

conn.close()
```
