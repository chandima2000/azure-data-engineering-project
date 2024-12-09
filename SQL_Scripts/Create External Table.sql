-- External Sales Table --

CREATE EXTERNAL TABLE gold.extSales
WITH
(
    LOCATION = 'extSales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet

)
AS SELECT * FROM gold.sales


SELECT * FROM gold.extSales