-- Create non-partitioned copy (safety first)
CREATE TABLE orders_backup AS
SELECT * FROM orders;

-- Drop partitioned table only after validation
-- DROP TABLE orders;

-- Rename backup if rollback required
-- ALTER TABLE orders_backup RENAME TO orders;

