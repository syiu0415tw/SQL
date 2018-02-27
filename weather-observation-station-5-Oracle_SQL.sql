/*
    Query the shortest and longest CITY names from STATION
    If there is more than one result, choose the one that comes first alphabetically
*/
SELECT * FROM (SELECT CITY, LENGTH(CITY) FROM STATION WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) ORDER BY CITY) WHERE ROWNUM = 1;
SELECT * FROM (SELECT CITY, LENGTH(CITY) FROM STATION WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION) ORDER BY CITY) WHERE ROWNUM = 1;