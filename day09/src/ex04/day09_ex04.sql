CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS TABLE(
	id bigint,
	name varchar,
	age integer,
	gender varchar,
	address varchar
) AS $female$
	SELECT * FROM person WHERE person.gender = 'female'
$female$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE(
	id      bigint,
	name    varchar,
	age     integer,
	gender  varchar,
	address varchar
) AS $male$
	SELECT * FROM person WHERE person.gender = 'male'
$male$ LANGUAGE SQL;

SELECT * FROM fnc_persons_female();
--SELECT * FROM fnc_persons_male();