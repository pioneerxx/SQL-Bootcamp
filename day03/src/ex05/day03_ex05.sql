SELECT pizzeria.name AS pizzeria_name
FROM person_visits
LEFT JOIN person_order ON person_order.order_date = person_visits.visit_date
LEFT JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
LEFT JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Andrey' AND person_order.id IS null
ORDER BY 1;