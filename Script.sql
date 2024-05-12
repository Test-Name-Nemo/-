CREATE TABLE if not exists genre (
    id SERIAL PRIMARY KEY,
    genre VARCHAR(80) UNIQUE
);


CREATE TABLE IF NOT EXISTS play_out (
    id_artist INT REFERENCES artist(id),
    id_genre INT REFERENCES genre(id),
    CONSTRAINT play_out PRIMARY KEY (id_artist, id_genre)
);


CREATE TABLE IF NOT EXISTS artist (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(40) UNIQUE
);


CREATE TABLE IF NOT EXISTS album_a (
	id_album INT REFERENCES albom(id),
	id_artist INT REFERENCES artist(id), 
    CONSTRAINT pk_album_a PRIMARY KEY (id_album, id_artist)  
);



CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(90) NOT NULL,
    year_album INT CHECK (YAER > 1970)
);


CREATE TABLE if NOT EXISTS track (
    id SERIAL PRIMARY KEY,
    names TEXT NOT NULL,
    album INT REFERENCES album(id),
    duration_track NUMERIC NOT NULL
);


CREATE TABLE IF NOT EXISTS collection_track (
    id_collection INT REFERENCES collections(id),
    id_treak INT REFERENCES track(id)
    CONSTRAINT pk_сcollection_track PRIMARY KEY ( id_collection, id_treak)
);


CREATE TABLE if NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    name_collection VARCHAR(40) NOT NULL,
    year_collection INT CHECK (YAER > 1970)
);
