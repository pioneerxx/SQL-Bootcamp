SELECT pizza_name, pizzeria.name AS pizzeria_name, price
FROM menu
CROSS JOIN pizzeria
WHERE (menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza') AND pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2