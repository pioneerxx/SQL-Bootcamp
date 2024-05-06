COMMENT ON TABLE person_discounts IS 'Discounts for each person at different pizzerias';
COMMENT ON COLUMN person_discounts.id IS 'Unique identificator column';
COMMENT ON COLUMN person_discounts.person_id IS 'Identificator of a person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Identificator of a pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'Percentage of the discount for corresponding person at a corresponding pizzeria';