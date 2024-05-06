WITH orders AS (SELECT pizzeria.name, COUNT(*) as count, 'order' AS action_type
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name
ORDER BY count DESC
LIMIT 3), visits AS
(SELECT pizzeria.name, COUNT(*) as count, 'visit' AS action_type
FROM person_visits
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
GROUP BY pizzeria.name
ORDER BY count DESC
LIMIT 3)
(SELECT *
 FROM orders)
UNION
(SELECT *
 FROM visits)
ORDER BY action_type, count DESC;