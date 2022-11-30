create table if not exists Genre (
	id serial primary key,
	title varchar(60) not null

);


create table if not exists Musician (
	id serial primary key,
	musician_name varchar(60) unique not null

);

create table if not exists Genre_musician (
	genre_id integer not null references Genre(id),
	musician_id integer not null references Musician(id),
	constraint pk_genre_musician primary key (genre_id, musician_id)
	
);

create table if not exists Album (
	id serial primary key,
	name varchar(60) unique not null,
	year_of_release integer
);

create table if not exists Musician_album (
	musician_id integer not null references Musician(id),
	album_id integer not null references Album(id),
	constraint pk_musician_album primary key (musician_id, album_id)

);

create table if not exists Tracks (
	id serial primary key,
	track_name varchar(60) not null,
	track_duration integer not null,
	album_id integer references Album(id)

);

create table if not exists Collection (
	id serial primary key,
	name varchar(60) unique not null,
	year_of_release integer
	
);
	
create table if not exists Tracks_collection (
	collection_id integer not null references Collection(id),
	tracks_id integer not null references Tracks(id),
	constraint pk_tracks_collection primary key (collection_id, tracks_id)
	
);



