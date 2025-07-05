# Mental Health Indicators in USA from 2022-2023

## Introduction
This project explores the CDC's state-level data on mental health indicators, giving insight into the current-day mental health crisis. After downloading the dataset, SQL queries were used to manipulate the data, allowing for geographic comparison, evaluation of the distribution of particular data points, and ultimately visualization of the data in Power BI.

## Analysis
The querying and data manipulation all took place in the `.sql` files listed. This included techniques such as:
* Data extraction from a `.csv` file
* Loading data into a database to allow for querying
* Use of standard SQL clauses to select and filter data
* Creating temporary tables to allow for easy comparison
* Joining tables using primary/foreign key

## Conclusions
Looking at whether states had an increase or decrease in the prevalence of depression from 2022 to 2023, a visual comparison shows that while there is no clear geographic trend, there is approximately an even split. For many states, the change was not drastic one way or the other, but for a few (an increase in depression in South Dakota and West Virginia, and a decrease in depression in New Hampshire) the change was notable. The distribution of percent of days where poor health (physical or mental) prevented the completion of daily tasks is slightly skewed to the right, but generally follows a normal distribution with a mode of 10 percent. Although 10 percent may seem like a low number, the interpretation of this statistic is important: the average person in those states is prevented from the completion of usual activities (such as self-care, work, or recreation) for about 3 days a month, which is a serious hindrance. Finally, the data shows a predictable yet interesting correlation between declining physical health and declining mental health: those who experienced more days with poor physical health were more likely to experience more days with poor mental health. This helps to frame a holistic understanding to public health, where the physical and mental health of individuals are related.

## Files
File | Description | Source
-------|------------|-------
Behavioral_Risk_Factor_Surveillance_System_Mental_Health_Indicators.csv | Data regarding mental health indicators on a state-by-state basis from 2022-2023 | data.cdc.gov
Change_in_Depression_Prevalence_2022-2023.sql | SQL query to find change in prevalence of depression between 2022 and 2023 | Created by Patrick Lynch
Effect_of_Poor_Health.sql | SQL query to find distribution of average percent of days that poor health interfered with daily tasks | Created by Patrick Lynch
Poor_Phys_Ment_Health.sql | SQL query to compare poor physical health days and poor mental health days at the state level | Created by Patrick Lynch
Depression_Increase_by_State.csv | Resulting data from `Change_in_Depression_Prevalence_2022-2023.sql` query | Created by Patrick Lynch
Poor_Health_Effect_2023.csv | Resulting data from `Effect_of_Poor_Health.sql` query | Created by Patrick Lynch
Poor_Phys_Ment_Health_Days_by_State.csv | Resulting data from `Poor_Phys_Ment_Health.sql` query | Created by Patrick Lynch
Behavioral_Health_BI_Report.pbix | Power BI report with visualizations to display findings from SQL queries | Created by Patrick Lynch
