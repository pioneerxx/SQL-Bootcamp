CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts USING btree(person_id, pizzeria_id);
SET enable_seqscan = off;
EXPLAIN ANALYZE SELECT pizzeria_id
FROM person_discounts
WHERE person_id = 2;