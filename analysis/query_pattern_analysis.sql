-- Identify frequently filtered columns from SQL history
SELECT
    object_name       AS table_name,
    column_name,
    COUNT(*)          AS filter_count
FROM dba_hist_sql_plan p
JOIN dba_hist_sqltext t ON p.sql_id = t.sql_id
JOIN dba_tab_columns c ON p.object_name = c.table_name
WHERE p.operation LIKE '%TABLE ACCESS%'
  AND t.sql_text LIKE '%' || c.column_name || '%'
GROUP BY object_name, column_name
ORDER BY filter_count DESC;

