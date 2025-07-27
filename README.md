# Data Warehouse – Solid Waste Management Project – IBM Data Engineering Professional Certificate

## Overview

This project demonstrates the design and implementation of a data warehouse for a Brazilian solid waste management company.
This warehouse supports waste collection performance analysis across time, geography, and vehicle dimensions.
The project models operational waste collection data using a star schema in PostgreSQL, enabling analytical queries across time, location, and vehicle dimensions.
It was completed as the final project for **Course 9 – Data Warehouse Fundamentals** in the [IBM Data Engineering Professional Certificate](https://www.coursera.org/professional-certificates/ibm-data-engineer).

---

## Objectives

- Design a star schema optimized for analytical queries
- Create dimension and fact tables in PostgreSQL using pgAdmin
- Load operational data from CSV files into the database
- Write analytical SQL queries using `GROUPING SETS`, `ROLLUP`, and `CUBE`
- Create a materialized view to improve query performance

---

## Tools & Technologies

| Category         | Tools/Technologies  |
| ---------------- | ------------------- |
| **Database**     | PostgreSQL, pgAdmin |
| **Languages**    | SQL                 |
| **File Formats** | CSV                 |

---

## Data Warehouse Schema

The schema uses a star design with one fact table and four dimension tables:

### Dimension Tables

- **DimDate**: Stores date breakdowns (year, month, day, weekday, etc.)
- **DimTruck**: Stores truck identifiers and types
- **DimStation**: Stores collection station IDs and associated cities
- **DimWaste**: Stores waste category types

### Fact Table

- **FactTrips**: Captures waste collection trips with date, station, truck, and amount of waste collected

---

## Data Files

All CSVs were provided through IBM Skills Network:

- `DimDate.csv`
- `DimTruck.csv`
- `DimStation.csv`
- `FactTrips.csv`

---

## Implementation Steps

### 1. Database Setup

- Created a PostgreSQL database in pgAdmin
- Defined tables with `PRIMARY KEY` and `FOREIGN KEY` constraints to maintain referential integrity

### 2. Schema Creation

- Created `DimDate`, `DimTruck`, `DimStation`, and `DimWaste` tables using SQL `CREATE TABLE` statements
- Defined `FactTrips` with foreign keys referencing each dimension

### 3. Data Loading

- Imported all CSV files using pgAdmin's Import feature
- Validated successful data loads and relationships

### 4. Aggregation Queries

Used SQL aggregation clauses for multidimensional reporting:

#### GROUPING SETS

- Summarized total waste collected by combinations of station and truck type
- Enables flexible reporting across one or multiple dimensions

#### ROLLUP

- Produced hierarchical aggregates (year > city > station)
- Supports drill-down reports by time and geography

#### CUBE

- Generated average waste metrics across all combinations of year, city, and station
- Facilitates full cross-dimensional waste analysis

### 5. Materialized View

- Created `max_waste_stats` to precompute the maximum waste collected per city, station, and truck type
- The view enables faster reporting on high-volume collection combinations

---

## Sample Reports Enabled by Warehouse

- Total waste collected per truck type and station
- City-wide waste collection trends across time
- Highest volume truck/station combinations
- Average waste collected per station

---

## Repository Structure

```plaintext
Waste_Management_DataWarehouse/
├── README.md                        # Project overview, schema, SQL tasks, and usage
├── data/
│   ├── DimDate.csv                  # Calendar and weekday data
│   ├── DimTruck.csv                 # Truck type identifiers
│   ├── DimStation.csv               # Station and city mapping
│   └── FactTrips.csv                # Waste collection fact data
├── images/                          # Screenshots showing schema, queries, and output
│   ├── schema_erd.png               # ERD showing all 5 tables and relationships
│   ├── grouping_sets_query.png      # GROUPING SETS query output
│   ├── rollup_query.png             # ROLLUP query output
│   ├── cube_query.png               # CUBE query output
│   └── mview_creation.png           # Materialized view creation confirmation
├── sql/
│   ├── schema/                      # CREATE TABLE scripts for all dimension and fact tables
│   │   ├── DimDate.sql              # Creates DimDate table
│   │   ├── DimStation.sql           # Creates DimStation table
│   │   ├── DimTruck.sql             # Creates DimTruck table
│   │   ├── DimWaste.sql             # Creates DimWaste table
│   │   └── FactTrips.sql            # Creates FactTrips table with foreign keys
│   ├── aggregation_queries/         # GROUPING SETS, ROLLUP, and CUBE queries
│   │   ├── grouping_sets.sql        # Aggregates waste by station ID and truck type
│   │   ├── rollup.sql               # Summarizes waste hierarchically by year, city, and station
│   │   └── cube.sql                 # Computes average waste across all dimensions
│   └── materialized_views/          # Materialized view creation script
│       └── max_waste_stats.sql      # Computes max waste by city, station, and truck
```

---

## License

This project was completed as part of the IBM Data Engineering Professional Certificate and is intended for educational use.

## Links

- Course Page - [Data Warehouse Fundamentals](https://www.coursera.org/learn/data-warehouse-fundamentals)
- [GitHub Profile](https://github.com/royungar)
- [GitHub Repository](https://github.com/royungar/DataWarehouse_Waste_Management_Project)