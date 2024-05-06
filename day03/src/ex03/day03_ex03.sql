SELECT pizzeria.name AS pizzeria_name
FROM person_visits
LEFT JOIN person ON person_visits.person_id = person.id
LEFT JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.id
HAVING COUNT(
	CASE
	WHEN person.gender = 'female' THEN 1
	END) > COUNT(
	CASE
	WHEN person.gender = 'male' THEN 1
	END)
UNION ALL
SELECT pizzeria.name
FROM person_visits
LEFT JOIN person ON person_visits.person_id = person.id
LEFT JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.id
HAVING COUNT(
	CASE
	WHEN person.gender = 'male' THEN 1
	END) > COUNT(
	CASE
	WHEN person.gender = 'female' THEN 1
	END)
ORDER BY 1;