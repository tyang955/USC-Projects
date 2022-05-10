-- MySQL

SELECT
  floor_number,
  COUNT(floor_number) AS `sick_people_number`

FROM
  EMPLOYEE

WHERE e_id IN (SELECT e_id FROM TEST WHERE t_result = true)

GROUP BY
  floor_number

ORDER BY
  `sick_people_number` DESC

LIMIT 1;