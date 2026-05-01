PRAGMA foreign_keys = ON;

-- USERS: 15
INSERT INTO users (username, email, display_name, account_type) VALUES
('ayman', 'ayman@mail.com', 'Ayman Ghanem', 'premium'),
('sara', 'sara@mail.com', 'Sara Ali', 'free'),
('omar', 'omar@mail.com', 'Omar Hassan', 'free'),
('lina', 'lina@mail.com', 'Lina Mostafa', 'premium'),
('youssef', 'youssef@mail.com', 'Youssef Adel', 'free'),
('mona', 'mona@mail.com', 'Mona Samir', 'premium'),
('nour', 'nour@mail.com', 'Nour Khaled', 'free'),
('ziad', 'ziad@mail.com', 'Ziad Tarek', 'premium'),
('farah', 'farah@mail.com', 'Farah Nabil', 'free'),
('karim', 'karim@mail.com', 'Karim Sameh', 'premium'),
('jana', 'jana@mail.com', 'Jana Ahmed', 'free'),
('hassan', 'hassan@mail.com', 'Hassan Reda', 'free'),
('malak', 'malak@mail.com', 'Malak Sherif', 'premium'),
('adam', 'adam@mail.com', 'Adam Wael', 'free'),
('reem', 'reem@mail.com', 'Reem Magdy', 'premium');

-- ARTISTS: 15
INSERT INTO artists (user_id, name, bio) VALUES
(1, 'Ayman Beats', 'Electronic music producer'),
(2, 'Sara Voice', 'Pop singer'),
(3, 'Omar Flow', 'Hip-hop artist'),
(NULL, 'LoFi Girl', 'Chill beats creator'),
(NULL, 'DJ Nile', 'Egyptian electronic DJ'),
(NULL, 'Future Sound', 'Trap producer'),
(NULL, 'Ambient Waves', 'Ambient artist'),
(NULL, 'Cairo Strings', 'Acoustic band'),
(NULL, 'Night Pulse', 'Synthwave artist'),
(NULL, 'Golden Oud', 'Arabic instrumental artist'),
(NULL, 'Bass Factory', 'Bass music producer'),
(NULL, 'Skyline', 'Indie pop group'),
(NULL, 'Red Moon', 'Alternative rock band'),
(NULL, 'Blue Echo', 'Deep house artist'),
(NULL, 'Desert Wind', 'World music artist');

-- ALBUMS: 15
INSERT INTO albums (title, release_date, album_type) VALUES
('Midnight Vibes', '2023-01-01', 'album'),
('Chill Nights', '2024-03-10', 'ep'),
('Trap Season', '2022-07-01', 'album'),
('Ocean Sounds', '2021-11-20', 'album'),
('Cairo Nights', '2023-08-15', 'ep'),
('Golden Hour', '2020-05-12', 'album'),
('Late Drive', '2024-01-19', 'single'),
('Dream Space', '2022-09-09', 'album'),
('Street Lights', '2021-02-14', 'mixtape'),
('Acoustic Days', '2023-04-22', 'album'),
('Synth City', '2024-02-02', 'album'),
('Old Cairo', '2020-12-01', 'ep'),
('Bass Room', '2022-06-18', 'album'),
('Soft Rain', '2023-10-30', 'single'),
('Desert Road', '2021-07-07', 'album');

-- ALBUM_ARTISTS: 15
INSERT INTO album_artists (album_id, artist_id) VALUES
(1,1),(2,4),(3,6),(4,7),(5,5),
(6,10),(7,9),(8,7),(9,3),(10,8),
(11,9),(12,10),(13,11),(14,14),(15,15);

-- SONGS: 15
INSERT INTO songs (album_id, title, file_url, duration_sec) VALUES
(1, 'Night Drive', 'audio/night_drive.mp3', 210),
(1, 'City Lights', 'audio/city_lights.mp3', 180),
(2, 'Rainy Mood', 'audio/rainy_mood.mp3', 240),
(3, 'Street Flow', 'audio/street_flow.mp3', 200),
(3, 'Bass Drop', 'audio/bass_drop.mp3', 220),
(4, 'Deep Ocean', 'audio/deep_ocean.mp3', 300),
(4, 'Calm Waves', 'audio/calm_waves.mp3', 280),
(5, 'Night in Cairo', 'audio/night_in_cairo.mp3', 210),
(6, 'Golden Sky', 'audio/golden_sky.mp3', 190),
(7, 'Late Ride', 'audio/late_ride.mp3', 175),
(8, 'Dream Signals', 'audio/dream_signals.mp3', 260),
(9, 'Street Memory', 'audio/street_memory.mp3', 230),
(10, 'Wooden Heart', 'audio/wooden_heart.mp3', 205),
(11, 'Neon Road', 'audio/neon_road.mp3', 245),
(15, 'Desert Wind', 'audio/desert_wind.mp3', 270);

-- ARTIST_SONGS: 15
INSERT INTO artist_songs (song_id, artist_id, role) VALUES
(1,1,'main'),(2,1,'main'),(3,4,'main'),(4,6,'main'),(5,6,'main'),
(6,7,'main'),(7,7,'main'),(8,5,'main'),(9,10,'main'),(10,9,'main'),
(11,7,'main'),(12,3,'main'),(13,8,'main'),(14,9,'main'),(15,15,'main');

-- GENRES: 15
INSERT INTO genres (name) VALUES
('Hip-Hop'),('LoFi'),('Electronic'),('Trap'),('Ambient'),
('Pop'),('Rock'),('Indie'),('House'),('Synthwave'),
('Arabic'),('Acoustic'),('Jazz'),('World'),('Bass');

-- SONG_GENRES: 15
INSERT INTO song_genres (song_id, genre_id) VALUES
(1,3),(2,3),(3,2),(4,1),(5,4),
(6,5),(7,5),(8,3),(9,11),(10,10),
(11,5),(12,1),(13,12),(14,10),(15,14);

-- PLAYLISTS: 15
INSERT INTO playlists (user_id, title, description, is_public) VALUES
(1,'My Favorites','Songs I play the most',1),
(2,'Chill Playlist','Relaxing music',1),
(3,'Gym Hits','Workout songs',1),
(4,'Focus Mode','Study music',0),
(5,'Road Trip','Driving playlist',1),
(6,'Late Night','Night listening',0),
(7,'Arabic Mood','Arabic music collection',1),
(8,'Coding Flow','Music for coding',1),
(9,'Morning Energy','Start the day strong',1),
(10,'Sleep Sounds','Soft relaxing music',0),
(11,'Party Mix','Songs for parties',1),
(12,'Old Favorites','Classic saved songs',1),
(13,'Rainy Day','Soft rain mood',0),
(14,'Bass Boost','Heavy bass songs',1),
(15,'Travel Vibes','Music for travel',1);

-- PLAYLIST_SONGS: 15
INSERT INTO playlist_songs (playlist_id, song_id, song_order) VALUES
(1,1,1),(1,2,2),(2,3,1),(3,4,1),(3,5,2),
(4,6,1),(4,7,2),(5,8,1),(6,10,1),(7,9,1),
(8,11,1),(9,12,1),(10,13,1),(14,5,1),(15,15,1);

-- LIKED_SONGS: 15
INSERT INTO liked_songs (user_id, song_id) VALUES
(1,1),(1,3),(2,3),(3,4),(4,6),
(5,7),(6,8),(7,9),(8,11),(9,12),
(10,13),(11,14),(12,15),(13,2),(14,5);

-- LISTENING_HISTORY: 15
INSERT INTO listening_history (user_id, song_id, played_at) VALUES
(1,1,'2024-04-01 10:00:00'),
(1,2,'2024-04-01 10:05:00'),
(2,3,'2024-04-02 12:00:00'),
(3,4,'2024-04-03 15:30:00'),
(3,5,'2024-04-03 15:35:00'),
(4,6,'2024-04-04 18:20:00'),
(5,7,'2024-04-05 20:10:00'),
(6,8,'2024-04-06 21:00:00'),
(7,9,'2024-04-07 09:15:00'),
(8,10,'2024-04-08 11:45:00'),
(9,11,'2024-04-09 14:10:00'),
(10,12,'2024-04-10 16:55:00'),
(11,13,'2024-04-11 19:25:00'),
(12,14,'2024-04-12 22:00:00'),
(13,15,'2024-04-13 23:30:00');

-- FOLLOWS: 15
INSERT INTO follows (follower_id, followed_artist_id) VALUES
(1,2),(2,4),(3,6),(4,7),(5,5),
(6,10),(7,15),(8,9),(9,3),(10,8),
(11,11),(12,12),(13,13),(14,14),(15,1);

-- SUBSCRIPTION_PLANS: 15
INSERT INTO subscription_plans (name, price_cents, billing_interval) VALUES
('Free Plan', 0, 'monthly'),
('Premium Monthly', 999, 'monthly'),
('Premium Yearly', 9999, 'yearly'),
('Student Monthly', 499, 'monthly'),
('Family Monthly', 1499, 'monthly'),
('Duo Monthly', 1299, 'monthly'),
('Creator Monthly', 1999, 'monthly'),
('Creator Yearly', 19999, 'yearly'),
('Mini Weekly Equivalent', 299, 'monthly'),
('Trial Monthly', 0, 'monthly'),
('Business Monthly', 2999, 'monthly'),
('Business Yearly', 29999, 'yearly'),
('HiFi Monthly', 1799, 'monthly'),
('HiFi Yearly', 17999, 'yearly'),
('Basic Yearly', 4999, 'yearly');

-- USER_SUBSCRIPTIONS: 15
INSERT INTO user_subscriptions (plan_id, user_id, status, started_at, expires_at) VALUES
(2,1,'active','2024-01-01','2024-02-01'),
(1,2,'active','2024-01-02',NULL),
(4,3,'active','2024-01-03','2024-02-03'),
(2,4,'active','2024-01-04','2024-02-04'),
(3,5,'active','2024-01-05','2025-01-05'),
(5,6,'cancelled','2024-01-06','2024-02-06'),
(6,7,'active','2024-01-07','2024-02-07'),
(10,8,'trial','2024-01-08','2024-02-08'),
(13,9,'active','2024-01-09','2024-02-09'),
(15,10,'expired','2023-01-10','2024-01-10'),
(7,11,'active','2024-01-11','2024-02-11'),
(8,12,'active','2024-01-12','2025-01-12'),
(11,13,'active','2024-01-13','2024-02-13'),
(12,14,'active','2024-01-14','2025-01-14'),
(14,15,'active','2024-01-15','2025-01-15');

-- PAYMENTS: 15
INSERT INTO payments (user_id, subscription_id, amount_cents, paid_at) VALUES
(1,1,999,'2024-01-01'),
(3,3,499,'2024-01-03'),
(4,4,999,'2024-01-04'),
(5,5,9999,'2024-01-05'),
(6,6,1499,'2024-01-06'),
(7,7,1299,'2024-01-07'),
(9,9,1799,'2024-01-09'),
(10,10,4999,'2023-01-10'),
(11,11,1999,'2024-01-11'),
(12,12,19999,'2024-01-12'),
(13,13,2999,'2024-01-13'),
(14,14,29999,'2024-01-14'),
(15,15,17999,'2024-01-15'),
(1,1,999,'2024-02-01'),
(4,4,999,'2024-02-04');