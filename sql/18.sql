-- 復習：何も見ないでトライして  2月の取引数
SELECT
  SUM(CASE WHEN kind = 'paid' THEN 1 WHEN kind = 'cancelled' THEN -1 END) AS sales_count
FROM
  `indigo-medium-816.data_warehouse.segmented_payment_kpi_daily_latest`
WHERE
  date BETWEEN '2025-02-01' AND '2025-02-28'
  AND
  detail_type IN (1, 4, 5, 7, 99)