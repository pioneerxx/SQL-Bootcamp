SELECT DISTINCT name
FROM person
WHERE id IN (
	SELECT person_id
	FROM person_order
	LEFT JOIN menu ON menu.id = person_order.menu_id
	WHERE menu.pizza_name = 'pepperoni pizza') AND id IN (
	SELECT person_id
	FROM person_order
	LEFT JOIN menu ON menu.id = person_order.menu_id
	WHERE menu.pizza_name = 'cheese pizza') AND gender = 'female'
ORDER BY name ASC