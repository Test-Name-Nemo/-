<<<<<<< HEAD
-- вариант 1

INSERT INTO genre (name_genre) VALUES ('Славянский фолк');
INSERT INTO genre (name_genre) VALUES ('Шансон');
INSERT INTO genre (name_genre) VALUES ('Поп');
INSERT INTO genre (name_genre) VALUES ('Евродэнс');

-- вавриат 2

INSERT INTO artist (nick_name) VALUES 
('Николай Емелин'),
('Шура'),
('Ирина Салтыкова'),
('Круг');


INSERT INTO track (name_track, albom, duration_track) VALUES 
('Отшумели летние дожди', '4', '182'),
('Серые глаза', '1', '148'),
('Ясный мой свет', '1', '262'),
('Русь', '2', '231'),
('Сибирь', '2', '163'),
('Вечерком', '2', '189'),
('Ясный сокол', '1', '241'),
('Купола', '4', '262');


INSERT INTO album (name_genre, year_album) VALUES 
('Хочу куда нибудь свалить', '2020'),
('ЗавеД', '2018'),
('Живая струна', '2010'),
('Подруга', '2017');


INSERT INTO collections (name_collection, year_collection) VALUES 
('Союз', '2000'),
('Новая игрушка', '2017'),
('Сборник', '2019'),
('Песня года', '2020');

INSERT INTO collections_track (id_collection, id_track) VALUES 
('1', '2')
('2', '2')
('3', '2')
('4', '2')
=======
INSERT INTO trach (title_track, duration_track) VALUES (Отшумели летние дожди, 188);
INSERT INTO trach (title_track, duration_track) VALUES (Серые глаза, 204);
INSERT INTO trach (title_track, duration_track) VALUES (Набат, 241);
INSERT INTO trach (title_track, duration_track) VALUES (Русь, 202);
INSERT INTO trach (title_track, duration_track) VALUES (Сибирь, );
INSERT INTO trach (title_track, duration_track) VALUES (Вечерком, 189);
INSERT INTO trach (title_track, duration_track) VALUES (Ясный сокол, 247);
INSERT INTO trach (title_track, duration_track) VALUES (Купола, 320);
INSERT INTO trach (title_track, duration_track) VALUES ();


INSERT INTO artist (nick_name) VALUES (Николай Емелин);
INSERT INTO artist (nick_name, names, surname) VALUES (Шура);
INSERT INTO artist (nick_name, names, surname) VALUES (Ирина Салтыкова);
INSERT INTO artist (nick_name, names, surname) VALUES (Круг);
INSERT INTO artist (nick_name, names, surname) VALUES ();
INSERT INTO artist (nick_name, names, surname) VALUES ();


INSERT INTO genre (name_genre) VALUES (Славянский фолк);
INSERT INTO name_genre (name_genre) VALUES (Шансон);
INSERT INTO name_genre (name_genre) VALUES (Поп);
INSERT INTO name_genre (name_genre) VALUES (Евродэнс);
INSERT INTO name_genre (name_genre) VALUES ();

INSERT INTO album (name_genre, year_album) VALUES 
(Хочу куда нибудь свалить, 2020),
(ЗавеД, 2018),
(Живая струна, 2010)
(Подруга, 2017)

INSERT INTO name_genre (name_genre) VALUES ();


>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
