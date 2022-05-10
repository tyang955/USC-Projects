-- MySQL


SELECT
  symptom_id,
  COUNT(symptom_id) AS `value_occurrence`

FROM
  SYMPTOM

GROUP BY
  symptom_id

ORDER BY
  `value_occurrence` DESC

LIMIT 1;