SELECT DISTINCT person.name
FROM person_order
LEFT JOIN person ON person_order.person_id = person.id
WHERE person.id IS NOT null
ORDER BY 1;