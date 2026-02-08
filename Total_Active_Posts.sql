SELECT 
    COUNT(*) AS active_job_count
FROM 
    jobs
WHERE 
    status = 'published' 
    AND date_closing > NOW();
