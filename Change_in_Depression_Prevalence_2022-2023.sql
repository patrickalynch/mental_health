/*
CREATED BY: PATRICK LYNCH
CREATE DATE: 07/03/2025
DESCRIPTION: Creates a resulting table with information on change in reported depression from 2022-2023 on a state level
*/

CREATE TEMP TABLE q_2023 AS 
SELECT 
	b.Area, 
	b.Percent AS Percent_2023
FROM 
	BRFSS b
WHERE 
	b.Year = 2023 
	AND b.Question  = 'Have you ever been told you have a depressive disorder (including depression, major depression, dysthymia, or minor depression)?';

CREATE TEMP TABLE q_2022 AS 
SELECT 
	b.Area, 
	b.Percent AS Percent_2022
FROM 
	BRFSS b
WHERE 
	b.Year = 2022 
	AND b.Question  = 'Have you ever been told you have a depressive disorder (including depression, major depression, dysthymia, or minor depression)?';

SELECT 
	q_2022.Area, 
	Percent_2022, 
	Percent_2023,
	CASE
		WHEN Percent_2022 < Percent_2023 THEN 'Increase'
		WHEN Percent_2022 > Percent_2023 THEN 'Decrease'
		ELSE 'No Change'
		END AS Change
FROM 
	q_2022
LEFT JOIN 
	q_2023
ON 
	q_2022.Area = q_2023.Area

-- DROP TABLE IF EXISTS q_2022;
-- DROP TABLE IF EXISTS q_2023;