--Название и год выхода альбомов, вышедших в 2018 году
SELECT album_title, year_of_release
  FROM albums_of_executor
 WHERE year_of_release = '2018';
 
--Название и продолжительность самого длительного трека
SELECT tracks_title, duration 
  FROM tracks
 ORDER BY duration DESC
 LIMIT 1;
 
--Название треков, продолжительность которых не менее 3,5 минуты
SELECT tracks_title, duration 
  FROM tracks
 WHERE duration >= '00:03:30'
ORDER BY duration DESC;
 
--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compiliation_title 
  FROM compiliations_of_tracks
 WHERE year_of_release BETWEEN 2018 AND 2020;
 
--Исполнители, чье имя состоит из 1 слова
SELECT nickname 
  FROM executors
 WHERE nickname NOT LIKE '% %';

--Название треков, которые содержат слово "мой"/"my".
SELECT tracks_title 
  FROM tracks
 WHERE tracks_title LIKE '%Мой%' 
 	OR tracks_title LIKE '%мой%'
 	OR tracks_title LIKE '%My%'
 	OR tracks_title LIKE '%my%';