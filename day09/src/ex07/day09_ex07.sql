CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr numeric[])
RETURNS numeric AS $min$
DECLARE min numeric := arr[1];
BEGIN
	FOR i IN 2..array_length(arr, 1) LOOP
	IF arr[i] < min THEN min = arr[i];
	END IF;
	END LOOP;
	RETURN min;
END;
$min$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);