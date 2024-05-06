CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10)
RETURNS TABLE (value integer) AS $table$
DECLARE
    val1 INTEGER := 0;
    val2 INTEGER := 1;
BEGIN
    WHILE val2 < pstop LOOP
        value := val2;
        val2 := val1 + val2;
        val1 := value;
        RETURN NEXT;
    END LOOP;
    RETURN;
END;
$table$ LANGUAGE plpgsql;

select * from fnc_fibonacci(100);
--select * from fnc_fibonacci();