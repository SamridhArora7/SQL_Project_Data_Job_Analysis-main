WITH skills_by_demand AS (
    SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count
    FROM
        job_postings_fact
    INNER JOIN skills_job_dim  
        ON job_postings_fact.job_id=skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id=skills_dim.skill_id
    WHERE
        job_title_short='Data Analyst' AND
        job_work_from_home=TRUE AND
        salary_year_avg IS NOT NULL
    GROUP BY 
        skills_dim.skill_id
),
skills_by_salary AS(
    SELECT 
        skills_job_dim.skill_id,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
    FROM
        job_postings_fact
    INNER JOIN skills_job_dim  
        ON job_postings_fact.job_id=skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id=skills_dim.skill_id
    WHERE 
        job_title_short='Data Analyst' AND
        job_work_from_home=TRUE AND 
        salary_year_avg IS NOT NULL
    GROUP BY 
        skills_job_dim.skill_id
)


SELECT
    skills_by_demand.skill_id,
    skills_by_demand.skills,
    demand_count,
    avg_salary
FROM 
    skills_by_demand
INNER JOIN skills_by_salary 
    ON skills_by_demand.skill_id=skills_by_salary.skill_id
WHERE
    demand_count>10
ORDER BY 
    avg_salary DESC,
    demand_count DESC
    

--reused queries we made in the 3rd and 4th file 
--removed limit cause we want all the skills
--to make it run faster we just remove ORDER by cause we aren't concerned with it abhi
--we changed GROUP By from skills to skill_id cause using skills is not best practice
--This is because we usually do GROUP BY on KEYS-primary or foreign