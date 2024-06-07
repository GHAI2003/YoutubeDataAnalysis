create schema project2;
use project;
-- cleaning table data --
-- remove unnecessary columns from the table-- 
-- extract the youtube channel names from the first columns--
-- rename column names -- 
CREATE VIEW view_canada_youtuber1_2024 AS
SELECT 
    CAST(SUBSTRING(NAME, 1, INSTR(NAME, '@') - 1) AS CHAR(100)) AS CHANNEL_NAME,
    CAST(FOLLOWERS AS DOUBLE) AS FOLLOWERS,
    CAST(`POTENTIAL REACH` AS DOUBLE) AS POTENTIAL_REACH
FROM 
    top_canada_youtubers_2024;
