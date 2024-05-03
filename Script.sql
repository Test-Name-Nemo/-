CREATE TABLE genre (
    id_genre SERIAL NOT NULL,
    genre VARCHAR(80) NOT NULL,
    CONSTRAINT pk_genre PRIMARY KEY (id_genre)
);


CREATE TABLE play_out (
    id_artist SERIAL NOT NULL, 
    id_genre INT NOT NULL, 
    name_play VARCHAR(40) NULL,
    CONSTRAINT pk_play_out PRIMARY KEY (id_artist), 
    CONSTRAINT fk_play_out FOREIGN KEY (id_genre) REFERENCES genre(id_genre)
);


CREATE TABLE artist (
    id_artist SERIAL NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    firname VARCHAR(40) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    CONSTRAINT fk_artist FOREIGN KEY (id_artist) REFERENCES play_out(id_artist)
);


CREATE TABLE collections (
    id_collection SERIAL NOT NULL,
    id_artidt INT NOT NULL,
    year_collection INT NOT NULL,
    tracks_collection VARCHAR(40) NOT NULL,
    CONSTRAINT pk_collection PRIMARY KEY (id_collection),
    CONSTRAINT fk_collection FOREIGN KEY (id_artist) REFERENCES play_out(id_artist)
);



CREATE TABLE collection_track (
    id_collection SERIAL NOT NULL,
    id_treak INT NOT NULL,
    number_track INT NOT NULL,
    CONSTRAINT fk_collection_track FOREIGN KEY (id_collection) REFERENCES collections(id_collection)
    CONSTRAINT fk_collection_track FOREIGN KEY (id_track) REFERENCES track(id_track) 
);    


CREATE TABLE track (
    id_track SERIAL NOT NULL,
    title_track VARCHAR(90) NOT NULL,
    duration_track INT NOT NULL,
    CONSTRAINT pk_track PRIMARY KEY (id_track)
);


CREATE TABLE album_track (
	id_album SERIAL NOT NULL,
	id_track INT NOT NULL,
    number_track INT NOT NULL,
    CONSTRAINT fk_album_track FOREIGN KEY (id_album) REFERENCES albom(id_album) 
	CONSTRAINT fk_aibum_track FOREIGN KEY (id_track) REFERENCES track(id_track) 
);



CREATE TABLE album (
	id_album SERIAL NOT NULL,
	id_track INT NOT NULL,
    year_album INT NOT NULL,
	tracks_album VARCHAR(40) NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id_album),
	CONSTRAINT fk_aibum FOREIGN KEY (id_track) REFERENCES play_out(id_artist) 
);