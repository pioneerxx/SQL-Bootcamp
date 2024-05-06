CREATE OR REPLACE VIEW v_price_with_discount AS (
	SELECT person.name, menu.pizza_name, menu.price, bebs.price AS discount_price
	FROM person_order
	LEFT JOIN person ON person.id = person_order.person_id
	LEFT JOIN menu ON person_order.menu_id = menu.id
	LEFT JOIN (SELECT id, CAST(ROUND(price - price * 0.1) AS INTEGER) AS price
			  FROM menu) AS bebs ON bebs.id = menu.id
	ORDER BY 1, 2
);