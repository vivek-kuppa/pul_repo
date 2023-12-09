{{config(
  materialized='table',
  unique_key='id'
)}}

SELECT
  CAST(null AS NUMBER) AS id,
  CAST(null AS STRING) AS name,
  CAST(null AS NUMBER) AS age
WHERE 1 = 0
