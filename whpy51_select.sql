SELECT name, year 
FROM album 
WHERE year = 2018
;

SELECT name, length
FROM track 
ORDER BY length desc 
LIMIT 1
;

SELECT name
FROM track
WHERE length >= 185
;

SELECT name 
FROM compilation 
WHERE year between 2018 and 2020
;

SELECT name
FROM singer
WHERE name not like '% %'
;

SELECT name
FROM track
WHERE name ILIKE '%my%' or name ILIKE '%мой%' 
;
