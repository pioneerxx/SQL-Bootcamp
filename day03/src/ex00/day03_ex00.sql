SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, person_visits.visit_date
FROM menu
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person_visits ON menu.pizzeria_id = person_visits.pizzeria_id
LEFT JOIN person ON person_visits.person_id = person.id
WHERE menu.price >= 800 AND menu.price <= 1000 AND person.name = 'Kate'
ORDER BY 1, 2, 3