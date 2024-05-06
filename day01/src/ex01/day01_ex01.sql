SELECT name AS object_name
FROM (SELECT name FROM person ORDER BY name) AS sub
UNION ALL
SELECT pizza_name AS object_name
FROM menu
ORDER BY object_name;