-- Close old record
UPDATE dim_customer
SET valid_to = CURRENT_DATE,
    is_current = FALSE
WHERE customer_id = 101
AND is_current = TRUE;

-- Insert new version
INSERT INTO dim_customer
VALUES (2, 101, 'Anna', 'Berlin', CURRENT_DATE, NULL, TRUE);
