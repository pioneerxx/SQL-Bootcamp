CREATE SEQUENCE seq_person_discounts START 1 INCREMENT 1;
SELECT SETVAL('seq_person_discounts', (SELECT COUNT(*) + 1 FROM person_discounts));
ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');