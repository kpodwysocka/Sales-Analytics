# Sales-Analytics
Sales Analytics Data Warehouse

A simple star schema data warehouse model with dimension and fact tables. It includes Slowly Changing Dimension Type 2 simulation and basic analytical SQL queries for revenue aggregation.


## Slowly Changing Dimension (SCD Type 2)

When customer changes city, a new record is inserted with:
- new surrogate key
- updated city
- valid_from / valid_to updated
- previous record marked as not current
