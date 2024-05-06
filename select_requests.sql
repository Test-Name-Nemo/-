-- Задание 2
-- Название и продолжительность самого длительного трека.

SELECT name_track, duration_track
FROM track
WHERE MAX(duration_track);


-- Название треков, продолжительность которых не менее 3,5 минут.

SELECT name_track, duration_track
FROM track
WHERE duration_track > 3:30;


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT name_collection
FROM collections
WHERE name_collection BETWEEN  2001 and 2003;

-- Исполнители, чьё имя состоит из одного слова.

SELECT nick_name
FROM artist
WHERE nick_name NOT LIKE '% %';



-- Название треков, которые содержат слово «мой» или «my».

SELECT name_track
FROM track
WHERE name_track LIKE '%мой%' OR '%my%';


-- Задание 3
-- Количество исполнителей в каждом жанре.




-- Количество треков, вошедших в альбомы 2019–2020 годов.



-- Средняя продолжительность треков по каждому альбому.



-- Все исполнители, которые не выпустили альбомы в 2020 году.



-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).


