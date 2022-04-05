CREATE TABLE IF NOT EXISTS 
	genre ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL
	);

CREATE TABLE IF NOT EXISTS 
	singer ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL, 
		genre_id integer NOT NULL REFERENCES genre (id)
	);

CREATE TABLE IF NOT EXISTS 
	singer_genres ( 
		singer_id integer NOT NULL REFERENCES singer (id), 
		genre_id integer NOT NULL REFERENCES genre (id)
	);

CREATE TABLE IF NOT EXISTS 
	alias ( 
		alias varchar(40) NOT NULL, 
		singer_id integer NOT NULL REFERENCES singer (id)
	);

CREATE TABLE IF NOT EXISTS 
	album ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL, 
		year integer NOT NULL
	);
		
CREATE TABLE IF NOT EXISTS 
	singer_albums ( 
		singer_id integer NOT NULL REFERENCES singer (id), 
		album_id integer NOT NULL REFERENCES album (id)
	);
		
CREATE TABLE IF NOT EXISTS 
	track ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL, 
		length integer NOT NULL, 
		album_id integer NOT NULL REFERENCES album (id)
	);
	
CREATE TABLE IF NOT EXISTS 
	compilation ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL, 
		year integer NOT NULL
	);

CREATE TABLE IF NOT EXISTS 
	comp_traks ( 
		comp_id integer NOT NULL REFERENCES compilation (id), 
		track_id integer NOT NULL REFERENCES track (id)
	);