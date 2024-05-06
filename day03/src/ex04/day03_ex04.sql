(SELECT pizzeria.name AS pizzeria_name
FROM person_order
LEFT JOIN menu ON menu.id = person_order.menu_id
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female'
EXCEPT
SELECT pizzeria.name AS pizzeria_name
FROM person_order
LEFT JOIN menu ON menu.id = person_order.menu_id
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'male')
UNION (
SELECT pizzeria.name AS pizzeria_name
FROM person_order
LEFT JOIN menu ON menu.id = person_order.menu_id
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'male'
EXCEPT
SELECT pizzeria.name AS pizzeria_name
FROM person_order
LEFT JOIN menu ON menu.id = person_order.menu_id
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female')
ORDER BY 1;