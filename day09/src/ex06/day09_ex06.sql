CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar DEFAULT 'Dmitriy', IN pprice numeric DEFAULT 500, IN pdate DATE DEFAULT '2022-01-08')
RETURNS TABLE(
	name varchar
) AS $visits$
BEGIN
    RETURN QUERY SELECT DISTINCT pizzeria.name
	FROM person_visits
	JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	JOIN person ON person.id = person_visits.person_id
	JOIN menu ON menu.pizzeria_id = pizzeria.id
	WHERE person_visits.visit_date = pdate AND person.name = pperson AND menu.price < pprice;
END;
$visits$ LANGUAGE plpgsql;

SELECT * FROM fnc_person_visits_and_eats_on_date(pprice := 800);
--SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');