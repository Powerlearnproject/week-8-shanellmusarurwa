SELECT geo_area_name, year_2022 AS recent_infant_mortality_rate
FROM infant_mortality
WHERE sex = 'BOTHSEX'
ORDER BY recent_infant_mortality_rate DESC;

SELECT geo_area_name, year_2013, year_2014, year_2015, year_2016, year_2017, year_2018, year_2019, year_2020, year_2021, year_2022
FROM under_five_mortality
WHERE geo_area_name = 'Afghanistan' AND sex = 'BOTHSEX';

SELECT geo_area_name, year_2022 AS recent_year, sex, year_2022
FROM neonatal_mortality
WHERE year_2022 IS NOT NULL
ORDER BY geo_area_name, sex;

SELECT geo_area_name, (year_2013 - year_2022) AS mortality_reduction, year_2013, year_2022
FROM infant_mortality
WHERE sex = 'BOTHSEX'
ORDER BY mortality_reduction DESC;

SELECT geo_area_name, AVG(year_2022) AS avg_infant_mortality_2022
FROM infant_mortality
WHERE sex = 'BOTHSEX'
GROUP BY geo_area_name
ORDER BY avg_infant_mortality_2022 DESC;

SELECT geo_area_name, year_2022
FROM under_five_mortality
WHERE sex = 'BOTHSEX'
ORDER BY year_2022 DESC;

SELECT geo_area_name, year_2013, year_2014, year_2015, year_2016, year_2017, year_2018, year_2019, year_2020, year_2021, year_2022
FROM neonatal_mortality
WHERE geo_area_name = 'India' AND sex = 'BOTHSEX';

SELECT geo_area_name, year_2022
FROM under_five_mortality
WHERE geo_area_name IN ('India', 'Nigeria') AND sex = 'BOTHSEX';

SELECT geo_area_name, (year_2022 - year_2013) AS mortality_increase
FROM infant_mortality
WHERE sex = 'BOTHSEX' AND (year_2022 - year_2013) > 0
ORDER BY mortality_increase DESC;

SELECT geo_area_name, year_2022 AS neonatal_mortality
FROM neonatal_mortality
WHERE sex = 'BOTHSEX'
ORDER BY neonatal_mortality ASC
LIMIT 5;

