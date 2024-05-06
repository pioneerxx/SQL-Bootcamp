SELECT DISTINCT person.name AS person_name1, bebs.name AS person_name2, person.address AS common_address
FROM person
JOIN (SELECT * FROM person) AS bebs ON bebs.address = person.address
WHERE person.id > bebs.id
ORDER BY 1, 2, 3