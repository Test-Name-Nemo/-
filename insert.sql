
INSERT INTO genre (name_genre) VALUES 
('Славянский фолк'), ('Шансон'), ('Поп'), ('Евродэнс')
RETURNING *;


INSERT INTO artist (nick_name) VALUES 
('Николай Емелин'), ('Шура'), ('Ирина Салтыкова'), ('Круг')
RETURNING *;


INSERT INTO track (name_track, albom, duration_track) VALUES 
('Отшумели летние дожди', '4', '182'),
('Серые глаза', '1', '148'),
('Ясный мой свет', '1', '262'),
('Русь', '2', '231'),
('Сибирь', '2', '163'),
('Вечерком', '2', '189'),
('Ясный сокол', '1', '241'),
('Купола', '3', '262')
RETURNING *;


INSERT INTO album (name_genre, year_album) VALUES 
('Хочу куда нибудь свалить', '2020'),
('ЗавеД', '2018'),
('Живая струна', '2010'),
('Подруга', '2017');
RETURNING *;

INSERT INTO collections (name_collection, year_collection) VALUES 
('Союз', '2000'),
('Новая игрушка', '2017'),
('Сборник', '2019'),
('Песня года', '2020')
RETURNING *;
 


INSERT INTO collections_track (id_collection, id_track) VALUES 
('1', '2'),
('1', '3'),
('2', '2'),
('2', '3'),
('2', '4'),
('3', '1'),
('3', '2'),
('3', '3'),
('3', '4'),
('4', '1'),
('4', '2');

INSERT INTO album_a (id_album, id_artist) VALUES
('1', '3'),
('2', '1'),
('3', '4'),
('4', '2');

INSERT INTO genre_artist (id_artist, id_genre) VALUES
('1', '1'),
('2', '3'),
('2', '4'),
('3', '3'),
('4', '2');
