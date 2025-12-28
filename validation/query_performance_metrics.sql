SELECT
    sql_id,
    executions,
    ROUND(elapsed_time/1e6,2) elapsed_seconds,
    buffer_gets,
    disk_reads
FROM v$sql
WHERE sql_text LIKE '%FROM orders%'
ORDER BY elapsed_time DESC;

