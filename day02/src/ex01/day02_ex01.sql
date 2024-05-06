SELECT DISTINCT person_visits.visit_date AS missing_date
FROM (
	SELECT id, visit_date
	FROM person_visits
	WHERE (person_id = 1 OR person_id = 2) AND DATE(visit_date) BETWEEN '2022-01-01' AND '2022-01-10') AS bebs
RIGHT JOIN person_visits ON person_visits.visit_date = bebs.visit_date
WHERE bebs.visit_date IS null
ORDER BY person_visits.visit_date ASC;