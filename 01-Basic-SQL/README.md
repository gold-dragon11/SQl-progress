Загальна ввідна таблиця даних:
* [Початкова таблиця з даними для запитів (CSV)](ds_salaries.csv)
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


8. Вивести дані таблиці, додавши колонку exp_level_full, з повною назвою рівня досвіду працівників відповідно до колонки exp_level.
**Мій SQL-запит:**
```sql
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
```
Результат:

<img width="1346" height="583" alt="image" src="https://github.com/user-attachments/assets/474f01df-7495-4edc-bf8b-6aa17b9e4b7f" />


9. Дослідити колонку company_location на наявність відсутніх значень.
**Мій SQL-запит:**
```sql
SELECT (COUNT(*) - COUNT(company_location))
FROM salaries
;
```
Результат:

<img width="397" height="177" alt="image" src="https://github.com/user-attachments/assets/753c8008-6dcc-446c-bad6-2a585a8ac034" />


##Відеодемонстрація процесу
Для підтвердження самостійного виконання завдань (Proof of Work) я записав процес написання коду. Відео прискорено вдвічі (2x) для економії вашого часу:
https://drive.google.com/file/d/1LvpnzuOQA04_x2ncGtfneWYq_sSfCakL/view?usp=sharing
