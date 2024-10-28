-- Count the number of athletes and medals won from each country
SELECT A.Country, 
       COUNT(DISTINCT A.PersonName) AS TotalAthletes,  -- Count distinct athletes
       B.Total AS TotalMedals  -- Total medals won
FROM Athletes AS A
LEFT JOIN Medals AS B ON A.Country = B.TeamCountry
GROUP BY A.Country, B.Total  -- Group by country and total medals
ORDER BY TotalAthletes DESC;

--Find out how many athletes in a country played in each discipline
SELECT DISTINCT(Discipline),
    Count(TeamName) AS Country
FROM Teams
GROUP BY discipline
ORDER BY Country DESC;


-- count ho many athletes joined by distinct discipline for each country
SELECT 
    Country, 
    COUNT(DISTINCT Discipline) AS Total_Disciplines
FROM Athletes
GROUP BY Country
ORDER By Total_Disciplines DESC;

