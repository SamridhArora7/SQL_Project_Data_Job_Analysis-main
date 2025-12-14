🥇 1. Top-Paying Data Analyst Jobs

Goal: Identify the highest-paying remote data analyst roles.
Approach: Filtered for remote jobs (job_location = 'Anywhere') with valid salary data and ranked them by yearly average salary.
Query File: 1_top_paying_jobs.sql 

1_top_paying_jobs

🔍 Key Insights

💰 Massive salary range — Top salaries range from $184K to $650K, showing huge earning potential.

🏢 Diverse employers like Meta, AT&T, Pinterest, SmartAsset, and Motional offer some of the highest-paying roles.

🎯 Job titles vary widely — from Data Analyst to Director of Analytics, indicating specialized and leadership opportunities within the field.

🧩 2. Skills Required for Top-Paying Jobs

Goal: Identify what skills appear in the highest-paying positions.
Approach: Took the top 10 roles from Query 1 and joined them to the skills tables to list required skills.
Query File: 2_top_paying_job_skills.sql 

2_top_paying_job_skills

🔍 Key Insights

🥇 SQL appears in 8 of the top roles — still the #1 essential skill.

🐍 Python shows up in 7 roles — crucial for advanced analytics.

📊 Tableau and Excel remain highly requested in top-tier jobs.

☁ Cloud tools (Azure, AWS, Snowflake) appear frequently in 6-figure jobs.

🔧 Engineering-leaning skills (GitLab, Databricks, Spark) appear more often in senior, higher-paying positions.

📈 3. Most In-Demand Skills for Data Analysts

Goal: Identify which skills appear most frequently across all job postings.
Approach: Count the number of postings requiring each skill for Data Analysts.
Query File: 3_top_demanded_skills.sql 

3_top_demanded_skills

🔍 Top 5 Most In-Demand Skills
Skill	Demand Count
SQL	7,291
Excel	4,611
Python	4,330
Tableau	3,745
Power BI	2,609
📌 Interpretation

SQL + Excel remain foundational.

Python’s demand highlights a shift toward programming-centered analytics.

Visualization tools (Tableau + Power BI) are crucial for communicating insights.

💵 4. Top-Paying Skills (Skills with the Highest Salaries)

Goal: Understand which skills correlate with higher salary levels.
Approach: Average salary per skill for remote roles with valid compensation.
Query File: 4_top_paying_skills.sql 

4_top_paying_skills

🔍 Key Insights

⚡ High salaries are linked to big data & engineering tools such as PySpark, Couchbase, Elasticsearch, Databricks, and Kubernetes.

🤖 Machine learning & AI tools like DataRobot, Jupyter, and Pandas/Numpy also correlate with strong salary boosts.

☁ Cloud platforms (GCP, AWS, Azure) significantly increase earning potential.

⭐ 5. Optimal Skills to Learn (High Demand + High Salary)

Goal: Identify skills that are both in high demand and pay well — the best ROI for learning.
Approach: Combined skill demand and average salary, filtered for skills with >10 demand count.
Query File: 5_optimal_skills.sql 

5_optimal_skills

🔍 Key Insights

🐍 Python remains one of the most valuable, appearing in 236 postings with ~$101K average salary.

☁ Cloud technologies (Snowflake, Azure, AWS, BigQuery) offer excellent salary growth + strong market demand.

📊 Visualization tools like Looker and Tableau remain critical and well-paid.

🗄 Database technologies like Oracle, SQL Server, NoSQL show strong demand and 6-figure averages.

🧠 Conclusion

This SQL project provides a data-driven look at the evolving landscape of data analyst roles.

📌 Overall Findings

SQL is still the #1 essential skill.

Python is nearly mandatory for high-level roles.

Cloud + big-data skills unlock top salary brackets.

Visualization skills remain crucial for storytelling and business impact.

The most optimal skills combine high demand + high earning potential, guiding where analysts should focus next.

📁 Project Structure
├── 1_top_paying_jobs.sql
├── 2_top_paying_job_skills.sql
├── 3_top_demanded_skills.sql
├── 4_top_paying_skills.sql
└── 5_optimal_skills.sql

🚀 Next Steps

Want to enhance this project?

Build dashboards (Tableau / Power BI)

Add Python exploratory analysis

Create an interactive web dashboard

Apply machine learning to predict salaries