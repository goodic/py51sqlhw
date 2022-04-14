SELECT 
	g."name" , 
		count(*) AS quant
FROM singer s 
INNER JOIN singer_genres sg ON sg.singer_id  = s.id 
INNER JOIN genre g ON g.id = sg.genre_id 
GROUP BY g."name" 
;
SELECT 
	count(t."name") AS quant  
FROM track t 
INNER JOIN album a ON a.id = t.album_id 
WHERE a."year" IN (2019,2020)
;
SELECT 
	a."name",
	sum(t.length)/count(*) AS mlenth
FROM track t 
INNER JOIN album a ON a.id = t.album_id 
GROUP BY a."name"  
;
SELECT 
	DISTINCT s."name" 
FROM singer s 
INNER JOIN singer_albums sa ON sa.singer_id = s.id 
INNER JOIN album a ON a.id = sa.album_id 
WHERE a."year" != 2020
;
SELECT 
	DISTINCT c."name" 
FROM compilation c
INNER JOIN comp_traks ct ON ct.comp_id = c.id 
INNER JOIN track t ON t.id = ct.track_id 
INNER JOIN singer_albums sa ON sa.album_id = t.album_id 
INNER JOIN singer s ON s.id = sa.singer_id 
WHERE s."name" = 'Мятое печенье'
;
SELECT
	a."name"  
FROM album a 
INNER JOIN singer_albums sa ON sa.album_id = a.id 
INNER JOIN (SELECT singer_id AS id, count(*) AS quant FROM singer_genres sg GROUP BY singer_id ) sel ON sel.id = sa.singer_id and sel.quant > 1
;
SELECT 
	t."name" 
FROM track t 
WHERE t.id NOT IN (SELECT ct.track_id AS id FROM comp_traks ct)
;
SELECT 
	DISTINCT s."name" 
FROM singer s 
INNER JOIN singer_albums sa ON sa.singer_id = s.id 
INNER JOIN track t ON t.album_id = sa.album_id and t.length IN (SELECT min(t2.length) AS length FROM track t2)
;

CREATE TEMPORARY TABLE track_count as
SELECT 
	t.album_id, 
	count(*)
FROM track t 
GROUP BY t.album_id
;
SELECT 
	a."name" 
FROM album a 
INNER JOIN track_count tc ON tc.album_id = a.id 
WHERE tc.count = (SELECT min(count) FROM track_count )