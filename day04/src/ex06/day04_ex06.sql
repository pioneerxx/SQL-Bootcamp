CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS (
	SELECT pizzeria.name
	FROM person_visits
	LEFT JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	LEFT JOIN person ON person.id = person_visits.person_id
	JOIN menu ON menu.pizzeria_id = pizzeria.id
	WHERE person.name = 'Dmitriy' AND menu.price < 800 AND person_visits.visit_date = '2022-01-08'
	ORDER BY 1
);