<<<<<<< HEAD
CREATE TABLE if not exists genre (
=======
CREATE TABLE genre (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
    id SERIAL NOT NULL,
    genre VARCHAR(80) NOT NULL,
    CONSTRAINT pk_genre PRIMARY KEY (id)
);


<<<<<<< HEAD
CREATE TABLE if not exists play_out (
=======
CREATE TABLE play_out (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
    id_artist INT NOT NULL, 
    id_genre INT NOT NULL, 
    CONSTRAINT fk_play_out FOREIGN KEY (id_artist) REFERENCES artist(id),
    CONSTRAINT fk_play_out FOREIGN KEY (id_genre) REFERENCES genre(id)
);


<<<<<<< HEAD
CREATE TABLE if not exists artist (
=======
CREATE TABLE artist (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
    id SERIAL NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    CONSTRAINT fk_artist PRIMARY KEY(id_)
);


<<<<<<< HEAD
CREATE TABLE if not exists album_a (
=======
CREATE TABLE album_a (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
	id_album INT NOT NULL,
	id_track INT NOT NULL,
    CONSTRAINT fk_album_artist FOREIGN KEY (id_album) REFERENCES albom(id), 
	CONSTRAINT fk_aibum_artist FOREIGN KEY (id_track) REFERENCES artist(id) 
);



<<<<<<< HEAD
CREATE TABLE if not exists album (
=======
CREATE TABLE album (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
	id SERIAL NOT NULL,
	name_album VARCHAR(90) NOT NULL,
    year_album INT NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id) 
);


<<<<<<< HEAD
CREATE TABLE if not exists track (
=======
CREATE TABLE track (
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
    id_track SERIAL NOT NULL,
    album INT NOT NULL,
    duration_track INT NOT NULL,
    CONSTRAINT pk_track PRIMARY KEY (id_track),
    CONSTRAINT fk_track FOREIGN KEY (album) REFERENCES fk_album_track(id) 
);

<<<<<<< HEAD
-- Возможно и так формировать таблицу

CREATE TABLE if not exists collection_track (
    id_collection INT REFERENCES collections(id),
    id_treak INT REFERENCES track(id),
     
);


CREATE TABLE if not exists collections (
    id SERIAL PRIMARY KEY ,
    name_collection VARCHAR(40) NOT NULL,
    year_collection INT NOT NULL,
=======

CREATE TABLE collection_track (
    id_collection INT NOT NULL,
    id_treak INT NOT NULL,
    CONSTRAINT fk_collection_track FOREIGN KEY (id_collection) REFERENCES collections(id)
    CONSTRAINT fk_collection_track FOREIGN KEY (id_track) REFERENCES track(id) 
);


CREATE TABLE collections (
    id SERIAL NOT NULL,
    name_collection VARCHAR(40) NOT NULL,
    year_collection INT NOT NULL,
    CONSTRAINT pk_collection PRIMARY KEY (id)
>>>>>>> b78eba79dae896b4a824a2ba51555af3d240b1a8
);
