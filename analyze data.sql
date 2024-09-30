SELECT geo_area_name, year_2022 AS recent_infant_mortality_rate
FROM infant_mortality
WHERE sex = 'BOTHSEX'
ORDER BY recent_infant_mortality_rate DESC
LIMIT 10;

SELECT geo_area_name, year_2013, year_2014, year_2015, year_2016, year_2017, year_2018, year_2019, year_2020, year_2021, year_2022
FROM infant_mortality
WHERE geo_area_name = 'Nigeria' AND sex = 'BOTHSEX';

SELECT AVG(year_2022) AS avg_neonatal_mortality
FROM neonatal_mortality
WHERE sex = 'BOTHSEX';

SELECT geo_area_name, (year_2013 - year_2022) AS reduction_in_mortality
FROM under_five_mortality
WHERE sex = 'BOTHSEX'
ORDER BY reduction_in_mortality DESC
LIMIT 10;

SELECT geo_area_name, sex, year_2022 AS mortality_rate
FROM infant_mortality
WHERE geo_area_name = 'India'
ORDER BY sex, mortality_rate;

SELECT geo_area_name, (year_2022 - year_2013) AS increase_in_mortality
FROM infant_mortality
WHERE (year_2022 - year_2013) > 0 AND sex = 'BOTHSEX'
ORDER BY increase_in_mortality DESC;

SELECT geo_area_name, AVG(year_2013) AS avg_2013, AVG(year_2022) AS avg_2022, (AVG(year_2013) - AVG(year_2022)) AS reduction_in_mortality
FROM under_five_mortality
WHERE geo_area_code IN (SELECT geo_area_code FROM regions WHERE region_name = 'Sub-Saharan Africa')
GROUP BY geo_area_name
ORDER BY reduction_in_mortality DESC;

SELECT geo_area_name, year_2013, year_2014, year_2015, year_2016, year_2017, year_2018, year_2019, year_2020, year_2021, year_2022
FROM neonatal_mortality
WHERE geo_area_name = 'Afghanistan' AND sex = 'BOTHSEX';

SELECT geo_area_name, year_2022 AS under_five_mortality
FROM under_five_mortality
WHERE sex = 'BOTHSEX'
ORDER BY under_five_mortality ASC
LIMIT 10;

SELECT SUM(year_2013 - year_2022) AS global_reduction
FROM infant_mortality
WHERE sex = 'BOTHSEX';
