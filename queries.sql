
--Get songs in a playlist
SELECT songs.title AS 'Song', artists.name AS 'artist'
FROM playlist_songs 
JOIN songs on songs.song_id = playlist_songs.song_id
JOIN artist_songs ON artist_songs.song_id = songs.song_id
JOIN artists on artists.artist_id = artist_songs.artist_id
WHERE playlist_songs.playlist_id = 1 AND artist_songs.role = 'main'
ORDER BY playlist_songs.song_order;


--Get all likes by a user
SELECT songs.title, artists.name as artist
FROM liked_songs
JOIN songs ON liked_songs.song_id = songs.song_id
JOIN artist_songs ON artist_songs.song_id = songs.song_id
JOIN artists ON artists.artist_id = artist_songs.artist_id
WHERE liked_songs.user_id = 1  
AND artist_songs.role = 'main';


--Recently played Songs
SELECT songs.title, listening_history.played_at
FROM listening_history
JOIN songs ON listening_history.song_id = songs.song_id
WHERE listening_history.user_id = 1
ORDER BY listening_history.played_at DESC
LIMIT 50;  


--Mosty played songs
SELECT songs.title , COUNT(*) AS Number_Of_Streams
FROM listening_history
JOIN songs ON listening_history.song_id = songs.song_id
GROUP BY songs.song_id
ORDER BY Number_Of_Streams DESC LIMIT 10;


