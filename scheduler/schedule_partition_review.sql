BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'PARTITION_REVIEW_JOB',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN DBMS_STATS.GATHER_TABLE_STATS(''APP'', ''ORDERS''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=WEEKLY;BYDAY=SUN;BYHOUR=2',
    enabled         => TRUE
  );
END;
/

