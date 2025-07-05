/*
CREATED BY: PATRICK LYNCH
CREATE DATE: 07/03/2025
DESCRIPTION: Creates a resulting table with information on percent of poor physical and poor mental health days per state in 2023
*/

CREATE TEMP TABLE q_phys AS 
SELECT 
	b.Area AS State, 
	b.Percent AS Num_Phys_Health_Days
FROM 
	BRFSS b
WHERE 
	b.Year = 2023 
	AND b.Question  = 'Now thinking about your physical health, which includes physical illness and injury, for how many days during the past 30 days was your physical health not good?';

CREATE TEMP TABLE q_ment AS 
SELECT 
	b.Area AS State, 
	b.Percent AS Num_Ment_Health_Days
FROM 
	BRFSS b
WHERE 
	b.Year = 2023
	AND b.Question  = 'Now thinking about your mental health, which includes stress, depression, and problems with emotions, for how many days during the past 30 days was your mental health not good?';

SELECT 
	q_phys.State, 
	Num_Phys_Health_Days, 
	Num_Ment_Health_Days
FROM 
	q_phys
LEFT JOIN 
	q_ment
ON 
	q_phys.State = q_ment.State

-- DROP TABLE IF EXISTS q_phys;
-- DROP TABLE IF EXISTS q_ment;