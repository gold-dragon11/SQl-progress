## Basic SQL Queries
SELECT *
FROM salaries
LIMIT 50
;

SELECT salary, year, job_title
FROM salaries
WHERE year = 2023
AND job_title = 'ML Engineer'
ORDER BY salaries ASC
;

SELECT company_location, salary, job_title, year
FROM salaries
WHERE job_title = 'Data Scientist'
AND year = 2023
ORDER BY salary ASC
LIMIT 1
;

SELECT salary, remote_ratio, job_title
FROM salaries
WHERE remote_ratio = 100
ORDER BY salary DESC
LIMIT 5
;

SELECT COUNT(DISTINCT(company_location))
FROM salaries
;

SELECT 
ROUND(AVG(salary)) AS average_salary,
MIN(salary) AS minimum_salary,
MAX(salary) AS maximum_salary
FROM salaries
WHERE year = 2023
;

SELECT salary, job_title, year,
(salary_in_usd * 45) AS salary_in_uah
FROM salaries 
WHERE year = 2023
AND job_title = 'ML Engineer'
ORDER BY salary DESC
LIMIT 5
;

SELECT *
, CASE
WHEN exp_level = 'SE' THEN 'SENIOR_LEVEL'
WHEN exp_level = 'MI' THEN 'MIDDLE_LEVEL'
WHEN exp_level = 'EN' THEN 'ENTRY_LEVEL'
ELSE 'EXECUTIVE_LEVEL'
END
AS exp_level_full
FROM salaries
LIMIT 100
;

SELECT (COUNT(*) - COUNT(company_location))
FROM salaries
;
