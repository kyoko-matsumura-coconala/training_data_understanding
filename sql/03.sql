-- 2022/12/1~2023/02/28の月別会員登録数
SELECT
  CAST(DATE_TRUNC(created, MONTH) AS DATE) AS month,
  COUNT(DISTINCT id) AS cnt
FROM
  `indigo-medium-816.coconala.users`
WHERE
  id NOT IN (SELECT user_id FROM `indigo-medium-816.master.except_users`)
  AND 
  created BETWEEN '2022-12-01' AND '2023-02-28'
GROUP BY
  month
ORDER BY
  month