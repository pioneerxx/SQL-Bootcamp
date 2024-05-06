SELECT pizzeria.name
FROM person_visits
CROSS JOIN menu
CROSS JOIN pizzeria
WHERE menu.pizzeria_id = pizzeria.id AND person_visits.person_id = 9 AND person_visits.pizzeria_id = pizzeria.id AND person_visits.visit_date = '2022-01-08' AND menu.price < 800