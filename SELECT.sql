SELECT
    job_title_short,
    job_location
    CASE
        WHEN job_location='Anywhere' THEN 'Remote'
        WHEN job_location='Chicago, IL' THEN 'Live'
        END 'Other'
    FROM job_postings_fact
    LIMIT 100;


