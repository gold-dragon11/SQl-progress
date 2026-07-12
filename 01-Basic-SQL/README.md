Загальна ввідна таблиця даних
<img width="1199" height="602" alt="image" src="https://github.com/user-attachments/assets/a3d92009-f5c1-4898-bc60-ca1ce2bbd15e" />
1. Вивести з/п спеціалістів ML Engineer в 2023 році, додати сортування за зростанням зп.
**Мій SQL-запит:**
```sql
SELECT salary, year, job_title
FROM salaries
WHERE year = 2023
AND job_title = 'ML Engineer'
ORDER BY salaries ASC
;
```
Результат:

<img width="308" height="473" alt="image" src="https://github.com/user-attachments/assets/8d2cb243-ae91-4d90-89c1-99e5ba55c8fb" />

2. Назвати локацію країни, в якій зафіксована найменша зп спеціаліста в сфері Data Scientist в 2023 році.
**Мій SQL-запит:**
```sql
SELECT salary, job_title, year
FROM salaries
WHERE job_title = 'Data Scientist'
AND year = 2023
ORDER BY salary ASC
LIMIT 1
;
```
Результат:

<img width="431" height="129" alt="image" src="https://github.com/user-attachments/assets/b28cb9c7-2be5-4c8a-bcfd-ddf4b3c0681a" />

3. Вивести Топ 5 зп спеціалістів, які працюють повністю віддалено.
**Мій SQL-запит:**
```sql
SELECT salary, remote_ratio, job_title
FROM salaries
WHERE remote_ratio = 100
ORDER BY salary DESC
LIMIT 5
;
```
Результат:

<img width="430" height="267" alt="image" src="https://github.com/user-attachments/assets/c9db4d7d-9b10-47b7-975b-2c9289cac4a0" />


4. Вивести унікальні значення для колонки.
**Мій SQL-запит:**
```sql
SELECT DISTINCT(company_location)
FROM salaries
;
```
Результат:

<img width="266" height="597" alt="image" src="https://github.com/user-attachments/assets/ec992b0a-17b5-4f08-b71c-bef393b1adaa" />


5. Вивести кількість унікальних значень колонки.
**Мій SQL-запит:**
```sql
SELECT COUNT(DISTINCT(company_location))
FROM salaries
;
```
Результат:

<img width="305" height="212" alt="image" src="https://github.com/user-attachments/assets/ab39d107-a7ed-4db8-9f1e-3af56fdf8a0e" />


6. Вивести середню, мінімальну та максимальну зп у 2023 році.
**Мій SQL-запит:**
```sql
SELECT 
ROUND(AVG(salary)) AS average_salary,
MIN(salary) AS minimum_salary,
MAX(salary) AS maximum_salary
FROM salaries
WHERE year = 2023
;
```
Результат:

<img width="487" height="165" alt="image" src="https://github.com/user-attachments/assets/be622158-8460-4a49-a43e-2bf1bb11d31d" />


7. Вивести 5 найвищих зп в 2023 році для спеціальності ML Engineer. Заробітні плати перевести в гривні.
**Мій SQL-запит:**
```sql
SELECT salary, job_title, year,
(salary_in_usd * 45) AS salary_in_uah
FROM salaries 
WHERE year = 2023
AND job_title = 'ML Engineer'
ORDER BY salary DESC
LIMIT 5
;
```
Результат:

<img width="466" height="224" alt="image" src="https://github.com/user-attachments/assets/73b9c205-e06f-4c46-85c3-9682bd120a87" />


