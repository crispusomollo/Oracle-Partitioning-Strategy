ALTER TABLE transactions
PARTITION BY LIST (region)
(
    PARTITION p_east VALUES ('EAST'),
    PARTITION p_west VALUES ('WEST'),
    PARTITION p_central VALUES ('CENTRAL'),
    PARTITION p_other VALUES (DEFAULT)
);

