-- List all artists (only names)
-- SELECT column_names FROM table_name
SELECT name FROM artists;

-- Count the number of tracks that are shorter than 2 minutes
SELECT COUNT(*) FROM tracks
WHERE milliseconds >= 3 * 60 * 1000;

-- List the first ten albums of the Jukebox DB, sorted alphabetically
SELECT * FROM albums
ORDER BY title ASC
LIMIT 10;

-- List the track and album information for the tracks which names are containing a given keyword (case insensitive)
SELECT tracks.name, albums.title FROM tracks
JOIN albums ON albums.id = tracks.album_id
WHERE tracks.name LIKE '%you%';

-- List the top 5 Rock artists with the most tracks
SELECT ar.id, ar.name, COUNT(*) AS c FROM artists ar
JOIN albums al ON ar.id = al.artist_id
JOIN tracks t ON al.id = t.album_id
JOIN genres g ON g.id = t.genre_id
WHERE g.name LIKE 'Rock'
GROUP BY ar.name
ORDER BY c DESC
LIMIT 10;
