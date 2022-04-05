CREATE TABLE IF NOT EXISTS 
	employer ( 
		id serial NOT NULL PRIMARY KEY , 
		name varchar(40) NOT NULL,
		depart_id integer,
		head_id integer NOT NULL REFERENCES employer (id)
	);