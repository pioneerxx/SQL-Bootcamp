SELECT person.name, menu.pizza_name, pizzeria.name
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2, 3;