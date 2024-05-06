SELECT person.name, COUNT(*) AS count_of_visits
FROM person_visits
LEFT JOIN person ON person.id = person_visits.person_id
GROUP BY person.id
HAVING COUNT(person.id) > 3;