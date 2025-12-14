
WITH top_paying_jobs AS (
    SELECT 
        job_id,
        company_dim.name,
        job_title,
        salary_year_avg
    FROM
        job_postings_fact
    LEFT JOIN company_dim
        ON job_postings_fact.company_id=company_dim.company_id
    WHERE
        job_title_short='Data Analyst' AND
        salary_year_avg IS NOT NULL AND 
        job_location='Anywhere'
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)
    
SELECT 
    top_paying_jobs.*,
    skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim AS skills_to_job
    ON top_paying_jobs.job_id=skills_to_job.job_id
INNER JOIN skills_dim
    ON skills_to_job.skill_id=skills_dim.skill_id
ORDER BY 
    top_paying_jobs.salary_year_avg DESC
--inner join isliye kyunki if we have a job with no skills mentioned
--we are not concerned with that so inner join simply hata dega aisi entries ko 















