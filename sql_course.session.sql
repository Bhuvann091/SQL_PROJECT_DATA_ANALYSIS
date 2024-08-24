SELECT
    count(job_id) AS number_jobs,
    CASE
        WHEN job_location= 'Anywhere' THEN 'Remote'
        WHEN job_location= 'Chicago, IL' THEN 'Live'
        ELSE 'None'
    END AS location_category
    FROM job_postings_fact
    Group by location_category
   