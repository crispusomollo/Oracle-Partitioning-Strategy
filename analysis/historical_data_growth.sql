SELECT
    trunc(snap.begin_interval_time) snap_date,
    ROUND(SUM(s.bytes)/1024/1024/1024,2) size_gb
FROM dba_hist_seg_stat s
JOIN dba_hist_snapshot snap ON s.snap_id = snap.snap_id
WHERE s.obj# IN (
    SELECT object_id
    FROM dba_objects
    WHERE object_name = 'ORDERS'
)
GROUP BY trunc(snap.begin_interval_time)
ORDER BY snap_date;

