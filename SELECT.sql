SELECT title, year_of_release 
  FROM albums_of_executor
 WHERE year_of_release = '2018';
 
SELECT title, duration 
  FROM tracks
 ORDER BY duration DESC
 LIMIT 1;
 
SELECT title, duration 
  FROM tracks
 WHERE duration >= '00:03:30';
 
SELECT title, year_of_release 
  FROM compiliations_of_tracks
 WHERE year_of_release BETWEEN 2018 AND 2020;
 
SELECT nickname 
  FROM executors
 WHERE nickname NOT LIKE '% %';
 
SELECT title 
  FROM tracks
 WHERE title LIKE '%Мой%' 
 	OR title LIKE '%мой%'
 	OR title LIKE '%My%'
 	OR title LIKE '%my%';