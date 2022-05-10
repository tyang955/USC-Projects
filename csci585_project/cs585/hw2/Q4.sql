-- MySQL

SELECT
  COUNT(scan_id) AS `number_of_scans`
FROM
  SCAN
WHERE scan_date >= '2021-10-03' AND scan_date <= '2021-10-04'

ORDER BY
  `number_of_scans` DESC

LIMIT 1;


SELECT
  COUNT(t_id) AS `number_of_tests`
FROM
  TEST
WHERE t_date >= '2021-10-11' AND t_date <= '2021-10-13'

ORDER BY
  `number_of_tests` DESC

LIMIT 1;


SELECT
  COUNT(s_id) AS `number_of_employees_who_self-reported_symptoms`
FROM
  SYMPTOM
WHERE s_date_report >= '2021-10-05' AND s_date_report <= '2021-10-06'

ORDER BY
  `number_of_employees_who_self-reported_symptoms` DESC

LIMIT 1;


SELECT
  COUNT(t_id) AS `number_of_positive_case`
FROM
  TEST
WHERE t_date >= '2021-10-11' AND t_date <= '2021-10-12'

ORDER BY
  `number_of_positive_case` DESC

LIMIT 1;
