CREATE OR REPLACE VIEW v_generated_dates AS
SELECT date(generate_series(DATE '2022-01-01', DATE '2022-01-31', '1 day')) AS generated_date
ORDER BY generated_date;