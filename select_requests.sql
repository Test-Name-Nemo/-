-- Задание 2
-- Название и продолжительность самого длительного трека.
SELECT name_track, duration_track FROM track
ORDER BY duration_track DESC
LIMIT 1;


-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name_track, duration_track FROM track WHERE duration_track > 210;


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_collection FROM collections WHERE name_collection BETWEEN 2001 AND 2003;

-- Исполнители, чьё имя состоит из одного слова.
SELECT nick_name FROM artist WHERE nick_name NOT LIKE '% %';


-- Название треков, которые содержат слово «мой» или «my».
SELECT name_track FROM track WHERE name_track LIKE '%мой%' OR '%my%';


-- Задание 3
-- Количество исполнителей в каждом жанре.
SELECT name_genre, COUNT(nick_name) FROM artist a
JOIN genre_artist ga ON a.id = ga.id_artist
JOIN genres g ON ga.id_artisr = g.id;


-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT year_album, COUNT(name_track) FROM album al
JOIN track t  ON al.id = t.album
WHERE al.year_album BETWEEN 2019 AND 2020
GROUP BY year_album;

-- Средняя продолжительность треков по каждому альбому.
SELECT name_album, AVG(duration_track) FROM album al
JOIN track t  ON al.id = t.album 
GROUP BY name_album;


-- Все исполнители, которые не выпустили альбомы в 2020 году.
-- вариант 1 
SELECT DISTINCT nick_name FROM artist a
WHERE a.nick_name NOT IN album.year_album
(SELECT DISTINCT nick_name FROM artist a
JOIN album_a aa ON a.id = aa.id_artist  
JOIN album al ON aa.id_artist = al.id
WHERE al.year_album = 2020)
ORDER BY a.nick_name;

-- вариант 2
SELECT nick_name FROM artist a
JOIN aibum_a aa  ON a.id = aa.id_artist
JOIN album al  ON aa.id_album = a.id
WHERE al.year_album <> 2020;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT name_collection FROM collections c
JOIN collection_track ct  ON c.id = ct.id_collection
JOIN track t  ON ct.id_track = t.id
JOIN album al  ON ct.id_album = al.id
JOIN album_a aa  ON al.id = aa.id_album
JOIN artist a  ON aa.id_artist = a.id
WHERE a.nick_name LIKE 'Николай Емелин';
