CREATE UNIQUE INDEX idx_menu_unique ON menu USING btree(pizzeria_id, pizza_name);
SET enable_seqscan = off;
EXPLAIN SELECT pizzeria_id
FROM menu
WHERE pizza_name = 'cheese pizza';