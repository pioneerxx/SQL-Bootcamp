SELECT DISTINCT person.name
FROM person_order
LEFT JOIN person ON person.id = person_order.person_id
LEFT JOIN menu ON person_order.menu_id = menu.id
WHERE (menu.pizza_name = 'pepperoni pizza' OR menu.pizza_name = 'mushroom pizza') AND (person.address = 'Moscow' OR person.address = 'Samara') AND gender = 'male'
ORDER BY person.name DESC