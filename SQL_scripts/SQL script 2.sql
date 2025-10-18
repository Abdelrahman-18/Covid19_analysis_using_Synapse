CREATE VIEW vu_top_countries1
AS
SELECT top(10) country_region ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP BY country_region
ORDER by total_confirmed  desc
 
 
CREATE VIEW vu_covid_summary1
as
SELECT
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered,
       sum (cast (confirmed as BIGINT) /1000) - ( sum (cast (deaths as BIGINT) /1000) + sum (cast (recovered as BIGINT) /1000)) as total_active
FROM COVID_INFO
 
 
 
CREATE VIEW vu_covid_trend1
as
SELECT updated_report ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered
FROM COVID_INFO
GROUP BY updated_report
 
-- KPI top 10 countries  -> Bar chart
CREATE VIEW vu_top_countries1
AS
SELECT top(10) country_region ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP BY country_region
ORDER by total_confirmed  desc
 
SELECT * from vu_top_countries1
 
CREATE VIEW vu_covid_summary
as
SELECT
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered,
       sum (cast (confirmed as BIGINT) /1000) - ( sum (cast (deaths as BIGINT) /1000) + sum (cast (recovered as BIGINT) /1000)) as total_active
FROM COVID_INFO
 
SELECT * from vu_covid_summary
 
CREATE VIEW vu_covid_trend
as
SELECT updated_report ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered
FROM COVID_INFO
GROUP BY updated_report
 
CREATE  VIEW vu_location
as
SELECT top (10) country_region ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP BY country_region
ORDER by total_confirmed DESC
 
 
SELECT * from vu_location
 
 
 