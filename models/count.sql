kk
with CountTable AS
SELECT
  CUSTOMER_ID,
  COUNT(*) AS COUNT_RESULT
FROM
  en_sales
GROUP BY
  CUSTOMER_ID

SELECT * from CountTable
