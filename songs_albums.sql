/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */




CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    song_name VARCHAR(70) NOT NULL,
    Album_id INTEGER,
    FOREIGN KEY (Album_id) REFERENCES Albums(id)
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */
 INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;

-- SELECT id
-- FROM Albums;


INSERT INTO Songs
    (song_name, Album_id)
VALUES
    ('California', 1),
    ('Country Road', 2),
    ('Teacher', 3),
    ('Freedom', 4),
    ('go!', 5)
    ;
 /* not best practice to hard code, but ok for basic lerning*/

-- /* Queries */

-- SELECT * FROM Songs;

SELECT * FROM Albums;


/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */
SELECT Albums.name, Songs.song_name
FROM Albums
JOIN Songs ON Albums.id = Songs.album_id;

/*
 * TODO: Find all albums published between 1970 and 1980.
 */
SELECT name
FROM Albums
WHERE year_published > 1970 AND Albums.year_published < 1980;
/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
 SELECT Songs.song_name
 FROM Albums
 JOIN Songs ON Albums.id = Songs.album_id;
 WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */
 SELECT Songs.song_name
 FROM Albums
 JOIN Songs ON Albums.id = Songs.album_id;
 WHERE Albums.name LIKE '%CALIFORNIA%';