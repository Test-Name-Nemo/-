CREATE TABLE genre (
    id SERIAL NOT NULL,
    genre VARCHAR(80) NOT NULL,
    CONSTRAINT pk_genre PRIMARY KEY (id)
);


CREATE TABLE play_out (
    id_artist INT NOT NULL, 
    id_genre INT NOT NULL, 
    CONSTRAINT fk_play_out FOREIGN KEY (id_artist) REFERENCES artist(id),
    CONSTRAINT fk_play_out FOREIGN KEY (id_genre) REFERENCES genre(id)
);


CREATE TABLE artist (
    id SERIAL NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    CONSTRAINT fk_artist PRIMARY KEY(id_)
);


CREATE TABLE album_a (
	id_album INT NOT NULL,
	id_track INT NOT NULL,
    CONSTRAINT fk_album_artist FOREIGN KEY (id_album) REFERENCES albom(id), 
	CONSTRAINT fk_aibum_artist FOREIGN KEY (id_track) REFERENCES artist(id) 
);



CREATE TABLE album (
	id SERIAL NOT NULL,
	name_album VARCHAR(90) NOT NULL,
    year_album INT NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id) 
);


CREATE TABLE track (
    id_track SERIAL NOT NULL,
    album INT NOT NULL,
    duration_track INT NOT NULL,
    CONSTRAINT pk_track PRIMARY KEY (id_track),
    CONSTRAINT fk_track FOREIGN KEY (album) REFERENCES fk_album_track(id) 
);


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
);
