-- [オープン]2022/12/1~2023/02/28の月別販売UU
SELECT
  DATE_TRUNC(date, MONTH) AS month,
  COUNT(DISTINCT provider_id) AS seller_uu
FROM
  `indigo-medium-816.data_warehouse.segmented_payment_kpi_daily_latest`
WHERE
  date BETWEEN '2022-12-01' AND '2023-02-28'
  AND
  detail_type IN (1, 4, 5, 7, 99)
  AND
  kind = 'paid'
GROUP BY
  month
ORDER BY
  month