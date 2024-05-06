SELECT menu.pizza_name, pizzeria.name AS pizzeria_name_1, bebs.name AS pizzeria_name_2, menu.price
FROM menu
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
CROSS JOIN (
	SELECT *
	FROM menu
	LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS bebs
WHERE menu.pizza_name = bebs.pizza_name AND menu.price = bebs.price AND menu.pizzeria_id > bebs.pizzeria_id
ORDER BY 1;
