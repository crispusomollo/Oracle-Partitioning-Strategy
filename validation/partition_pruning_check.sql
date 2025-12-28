SELECT
    name,
    partition_position,
    high_value
FROM dba_tab_partitions
WHERE table_name = 'ORDERS'
ORDER BY partition_position;

