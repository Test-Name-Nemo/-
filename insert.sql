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
