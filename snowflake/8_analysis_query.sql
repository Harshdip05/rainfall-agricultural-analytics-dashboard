-- =========================================================
-- RAINFALL & AGRICULTURE ANALYTICS
-- ANALYSIS QUERIES
-- =========================================================
-- Database : RAINFALL_AGRI_DB
-- Schema   : RAW
-- Table    : RAINFALL_AGRI_DATA
-- =========================================================


-- =========================================================
-- 1. USE DATABASE AND SCHEMA
-- =========================================================

USE DATABASE RAINFALL_AGRI_DB;
USE SCHEMA RAW;


-- =========================================================
-- 2. BASIC DATASET OVERVIEW
-- =========================================================

-- Total number of records

SELECT
    COUNT(*) AS TOTAL_RECORDS
FROM RAINFALL_AGRI_DATA;


-- =========================================================
-- 3. CHECK DISTINCT YEARS
-- =========================================================

SELECT DISTINCT
    YEAR
FROM RAINFALL_AGRI_DATA
ORDER BY YEAR;


-- =========================================================
-- 4. CHECK DISTINCT LOCATIONS
-- =========================================================

SELECT DISTINCT
    LOCATION
FROM RAINFALL_AGRI_DATA
ORDER BY LOCATION;


-- =========================================================
-- 5. CHECK DISTINCT CROPS
-- =========================================================

SELECT DISTINCT
    CROPS
FROM RAINFALL_AGRI_DATA
ORDER BY CROPS;


-- =========================================================
-- 6. CHECK DISTINCT SEASONS
-- =========================================================

SELECT DISTINCT
    SEASON
FROM RAINFALL_AGRI_DATA
ORDER BY SEASON;


-- =========================================================
-- 7. YEAR-WISE RAINFALL ANALYSIS
-- =========================================================

SELECT
    YEAR,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(MAX(RAINFALL), 2) AS MAX_RAINFALL,
    ROUND(MIN(RAINFALL), 2) AS MIN_RAINFALL
FROM RAINFALL_AGRI_DATA
GROUP BY YEAR
ORDER BY YEAR;


-- =========================================================
-- 8. YEAR-WISE AGRICULTURAL ANALYSIS
-- =========================================================

SELECT
    YEAR,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE,
    ROUND(AVG(AREA), 2) AS AVG_AREA
FROM RAINFALL_AGRI_DATA
GROUP BY YEAR
ORDER BY YEAR;


-- =========================================================
-- 9. LOCATION-WISE RAINFALL ANALYSIS
-- =========================================================

SELECT
    LOCATION,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(MAX(RAINFALL), 2) AS MAX_RAINFALL,
    ROUND(MIN(RAINFALL), 2) AS MIN_RAINFALL
FROM RAINFALL_AGRI_DATA
GROUP BY LOCATION
ORDER BY AVG_RAINFALL DESC;


-- =========================================================
-- 10. LOCATION-WISE YIELD ANALYSIS
-- =========================================================

SELECT
    LOCATION,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(AREA), 2) AS AVG_AREA,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY LOCATION
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 11. SEASON-WISE RAINFALL ANALYSIS
-- =========================================================

SELECT
    SEASON,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(MAX(RAINFALL), 2) AS MAX_RAINFALL,
    ROUND(MIN(RAINFALL), 2) AS MIN_RAINFALL
FROM RAINFALL_AGRI_DATA
GROUP BY SEASON
ORDER BY AVG_RAINFALL DESC;


-- =========================================================
-- 12. SEASON-WISE YIELD ANALYSIS
-- =========================================================

SELECT
    SEASON,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY SEASON
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 13. CROP-WISE YIELD ANALYSIS
-- =========================================================

SELECT
    CROPS,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    MAX(YIELDS) AS MAX_YIELD,
    MIN(YIELDS) AS MIN_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY CROPS
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 14. CROP-WISE PRICE ANALYSIS
-- =========================================================

SELECT
    CROPS,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE,
    ROUND(MAX(PRICE), 2) AS MAX_PRICE,
    ROUND(MIN(PRICE), 2) AS MIN_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY CROPS
ORDER BY AVG_PRICE DESC;


-- =========================================================
-- 15. CROP-WISE AREA ANALYSIS
-- =========================================================

SELECT
    CROPS,
    ROUND(AVG(AREA), 2) AS AVG_AREA,
    SUM(AREA) AS TOTAL_AREA
FROM RAINFALL_AGRI_DATA
GROUP BY CROPS
ORDER BY TOTAL_AREA DESC;


-- =========================================================
-- 16. LOCATION + CROP ANALYSIS
-- =========================================================

SELECT
    LOCATION,
    CROPS,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY LOCATION, CROPS
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 17. LOCATION + SEASON ANALYSIS
-- =========================================================

SELECT
    LOCATION,
    SEASON,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(TEMPERATURE), 2) AS AVG_TEMPERATURE,
    ROUND(AVG(HUMIDITY), 2) AS AVG_HUMIDITY,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY LOCATION, SEASON
ORDER BY AVG_RAINFALL DESC;


-- =========================================================
-- 18. RAINFALL VS YIELD
-- =========================================================

SELECT
    RAINFALL,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY RAINFALL
ORDER BY RAINFALL;


-- =========================================================
-- 19. RAINFALL RANGE VS YIELD
-- =========================================================
-- Groups rainfall into useful ranges for analysis.

SELECT
    CASE
        WHEN RAINFALL < 500 THEN 'Low Rainfall'
        WHEN RAINFALL BETWEEN 500 AND 1000 THEN 'Moderate Rainfall'
        WHEN RAINFALL BETWEEN 1000 AND 1500 THEN 'High Rainfall'
        ELSE 'Very High Rainfall'
    END AS RAINFALL_CATEGORY,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY RAINFALL_CATEGORY
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 20. TEMPERATURE VS YIELD
-- =========================================================

SELECT
    ROUND(TEMPERATURE, 0) AS TEMPERATURE_RANGE,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY ROUND(TEMPERATURE, 0)
ORDER BY TEMPERATURE_RANGE;


-- =========================================================
-- 21. HUMIDITY VS YIELD
-- =========================================================

SELECT
    ROUND(HUMIDITY, 0) AS HUMIDITY_RANGE,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
GROUP BY ROUND(HUMIDITY, 0)
ORDER BY HUMIDITY_RANGE;


-- =========================================================
-- 22. IRRIGATION VS YIELD
-- =========================================================

SELECT
    IRRIGATION,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL
FROM RAINFALL_AGRI_DATA
GROUP BY IRRIGATION
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 23. SOIL TYPE VS YIELD
-- =========================================================

SELECT
    SOIL_TYPE,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL
FROM RAINFALL_AGRI_DATA
WHERE SOIL_TYPE IS NOT NULL
GROUP BY SOIL_TYPE
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 24. SOIL TYPE VS CROP
-- =========================================================

SELECT
    SOIL_TYPE,
    CROPS,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD
FROM RAINFALL_AGRI_DATA
WHERE SOIL_TYPE IS NOT NULL
GROUP BY SOIL_TYPE, CROPS
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 25. IRRIGATION + CROP ANALYSIS
-- =========================================================

SELECT
    IRRIGATION,
    CROPS,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY IRRIGATION, CROPS
ORDER BY AVG_YIELD DESC;


-- =========================================================
-- 26. CROP + SEASON ANALYSIS
-- =========================================================

SELECT
    CROPS,
    SEASON,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY CROPS, SEASON
ORDER BY CROPS, AVG_YIELD DESC;


-- =========================================================
-- 27. YEAR + CROP ANALYSIS
-- =========================================================

SELECT
    YEAR,
    CROPS,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE
FROM RAINFALL_AGRI_DATA
GROUP BY YEAR, CROPS
ORDER BY YEAR, AVG_YIELD DESC;


-- =========================================================
-- 28. YEAR + LOCATION ANALYSIS
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(TEMPERATURE), 2) AS AVG_TEMPERATURE,
    ROUND(AVG(HUMIDITY), 2) AS AVG_HUMIDITY
FROM RAINFALL_AGRI_DATA
GROUP BY YEAR, LOCATION
ORDER BY YEAR, AVG_RAINFALL DESC;


-- =========================================================
-- 29. TOP 10 HIGHEST RAINFALL RECORDS
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    SEASON,
    CROPS,
    RAINFALL,
    YIELDS
FROM RAINFALL_AGRI_DATA
ORDER BY RAINFALL DESC
LIMIT 10;


-- =========================================================
-- 30. TOP 10 LOWEST RAINFALL RECORDS
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    SEASON,
    CROPS,
    RAINFALL,
    YIELDS
FROM RAINFALL_AGRI_DATA
ORDER BY RAINFALL ASC
LIMIT 10;


-- =========================================================
-- 31. TOP 10 HIGHEST YIELD RECORDS
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    CROPS,
    SEASON,
    YIELDS,
    RAINFALL,
    TEMPERATURE,
    IRRIGATION
FROM RAINFALL_AGRI_DATA
ORDER BY YIELDS DESC
LIMIT 10;


-- =========================================================
-- 32. TOP 10 HIGHEST PRICE RECORDS
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    CROPS,
    SEASON,
    PRICE,
    YIELDS
FROM RAINFALL_AGRI_DATA
ORDER BY PRICE DESC
LIMIT 10;


-- =========================================================
-- 33. OVERALL AGRICULTURAL SUMMARY
-- =========================================================

SELECT
    COUNT(*) AS TOTAL_RECORDS,
    COUNT(DISTINCT YEAR) AS TOTAL_YEARS,
    COUNT(DISTINCT LOCATION) AS TOTAL_LOCATIONS,
    COUNT(DISTINCT CROPS) AS TOTAL_CROPS,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(TEMPERATURE), 2) AS AVG_TEMPERATURE,
    ROUND(AVG(HUMIDITY), 2) AS AVG_HUMIDITY,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE,
    SUM(AREA) AS TOTAL_AREA
FROM RAINFALL_AGRI_DATA;


-- =========================================================
-- 34. MISSING VALUE ANALYSIS
-- =========================================================

SELECT
    COUNT(*) AS TOTAL_RECORDS,
    COUNT_IF(YEAR IS NULL) AS NULL_YEAR,
    COUNT_IF(LOCATION IS NULL) AS NULL_LOCATION,
    COUNT_IF(AREA IS NULL) AS NULL_AREA,
    COUNT_IF(RAINFALL IS NULL) AS NULL_RAINFALL,
    COUNT_IF(TEMPERATURE IS NULL) AS NULL_TEMPERATURE,
    COUNT_IF(SOIL_TYPE IS NULL) AS NULL_SOIL_TYPE,
    COUNT_IF(IRRIGATION IS NULL) AS NULL_IRRIGATION,
    COUNT_IF(YIELDS IS NULL) AS NULL_YIELDS,
    COUNT_IF(HUMIDITY IS NULL) AS NULL_HUMIDITY,
    COUNT_IF(CROPS IS NULL) AS NULL_CROPS,
    COUNT_IF(PRICE IS NULL) AS NULL_PRICE,
    COUNT_IF(SEASON IS NULL) AS NULL_SEASON
FROM RAINFALL_AGRI_DATA;


-- =========================================================
-- 35. DUPLICATE RECORD CHECK
-- =========================================================

SELECT
    YEAR,
    LOCATION,
    AREA,
    RAINFALL,
    TEMPERATURE,
    SOIL_TYPE,
    IRRIGATION,
    YIELDS,
    HUMIDITY,
    CROPS,
    PRICE,
    SEASON,
    COUNT(*) AS DUPLICATE_COUNT
FROM RAINFALL_AGRI_DATA
GROUP BY
    YEAR,
    LOCATION,
    AREA,
    RAINFALL,
    TEMPERATURE,
    SOIL_TYPE,
    IRRIGATION,
    YIELDS,
    HUMIDITY,
    CROPS,
    PRICE,
    SEASON
HAVING COUNT(*) > 1
ORDER BY DUPLICATE_COUNT DESC;


-- =========================================================
-- 36. BUSINESS SUMMARY BY YEAR
-- =========================================================

SELECT
    YEAR,
    COUNT(*) AS RECORD_COUNT,
    ROUND(AVG(RAINFALL), 2) AS AVG_RAINFALL,
    ROUND(AVG(TEMPERATURE), 2) AS AVG_TEMPERATURE,
    ROUND(AVG(HUMIDITY), 2) AS AVG_HUMIDITY,
    ROUND(AVG(YIELDS), 2) AS AVG_YIELD,
    ROUND(AVG(PRICE), 2) AS AVG_PRICE,
    SUM(AREA) AS TOTAL_AREA
FROM RAINFALL_AGRI_DATA
GROUP BY YEAR
ORDER BY YEAR;


-- =========================================================
-- 37. POWER BI SUMMARY DATASET
-- =========================================================
-- This query can be used as a source for Power BI.

SELECT
    YEAR,
    LOCATION,
    SEASON,
    CROPS,
    SOIL_TYPE,
    IRRIGATION,
    AREA,
    RAINFALL,
    TEMPERATURE,
    HUMIDITY,
    YIELDS,
    PRICE
FROM RAINFALL_AGRI_DATA
ORDER BY YEAR, LOCATION, CROPS;
