SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM person_order
LEFT JOIN person ON person_order.id = person.id
LEFT JOIN menu ON person_order.menu_id = menu.id
LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person_order.person_id = 1 OR person_order.person_id = 4
ORDER BY 1, 2