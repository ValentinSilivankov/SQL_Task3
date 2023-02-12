CREATE TABLE IF NOT EXISTS Compiliations_of_tracks (
	PRIMARY KEY (id SERIAL),
	Title           TEXT    NOT NULL,
	Year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums_of_executor (
	PRIMARY KEY (id SERIAL),
	Title           VARCHAR(30) NOT NULL,
	Year_of_release INTEGER     NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	PRIMARY KEY (id SERIAL),
	Title    TEXT    NOT NULL,
	Duration TIME(0) NOT NULL,
	Album_id INTEGER NOT NULL 
	         REFERENCES Albums_of_executor(id)
);
CREATE TABLE IF NOT EXISTS TracksCompilations (
	Track_id       INTEGER REFERENCES Tracks(id),
	Compilation_id INTEGER REFERENCES Compiliations_of_tracks(id),
	               CONSTRAINT pk1
	               PRIMARY KEY (Track_id, Compilation_id)
);
CREATE TABLE IF NOT EXISTS Genre_of_music (
	PRIMARY KEY (id SERIAL),
	Title VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS Executors (
	PRIMARY KEY (id SERIAL),
	Nickname VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS ExecutorsGenre (
	Executors_id INTEGER REFERENCES Executors(id),
	Gernre_id    INTEGER REFERENCES Genre_of_music(id),
	             CONSTRAINT pk2
	             PRIMARY KEY (Executors_id, Gernre_id)
);
CREATE TABLE IF NOT EXISTS ExecutorsAlbums (
	Executor_id INTEGER REFERENCES Executors(id),
	Albums_id   INTEGER REFERENCES Albums_of_executor(id),
	            CONSTRAINT pk3 
	            PRIMARY KEY (Executor_id, Albums_id)
);