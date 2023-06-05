select year, count(year) as total
FROM demography 
group by year 
order by total asc;

-- count baby female per year--
SELECT demography.female0to4, country.country, year.year_id
FROM demography
JOIN country ON country.country_id = demography.country_id
JOIN year ON year.year_id = demography.year_id
ORDER BY demography.female0to4 DESC
LIMIT 10;

-- count baby male per year--
SELECT demography.male0to4, country.country, year.year_id
FROM demography
JOIN country ON country.country_id = demography.country_id
JOIN year ON year.year_id = demography.year_id
ORDER BY demography.male0to4 DESC
LIMIT 10;

-- count male per year--
SELECT country.country, year.year_id
FROM demography
JOIN country ON country.country_id = demography.country_id
JOIN year ON year.year_id = demography.year_id
ORDER BY demography.male5to17 DESC
LIMIT 10;

-- count female per year--
SELECT country.country, year.year_id
FROM demography
Inner JOIN country ON country.country_id = demography.country_id
Inner JOIN year ON year.year_id = demography.year_id
ORDER BY demography.female5to17 DESC
LIMIT 10;

SELECT year
From year where year_id=15;

SELECT year
From year where year_id=9;




