/*
CREATED BY: PATRICK LYNCH
CREATE DATE: 07/03/2025
DESCRIPTION: Creates a resulting table with information on the percent of days that poor health (physical or mental) impacted one's ability to perform daily tasks
*/

SELECT
	Area,
	ROUND(Percent, 0)
FROM
	BRFSS
WHERE
	Question = 'During the past 30 days, how many days did poor physical or mental health keep you from doing your usual activities, such as self-care, work, or recreation?'
	AND Year = 2023