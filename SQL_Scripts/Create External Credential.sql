CREATE DATABASE SCOPED CREDENTIAL cred_chandima
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH (
     LOCATION = 'https://awdatastoragedatalake.blob.core.windows.net/silver',
     CREDENTIAL = cred_chandima
     )


CREATE EXTERNAL DATA SOURCE source_gold
WITH (
     LOCATION = 'https://awdatastoragedatalake.blob.core.windows.net/gold',
     CREDENTIAL = cred_chandima
     )