INSERT INTO genre (name) VALUES
('rock'),
('rap'),
('rave'),
('grange'),
('punck'),
('rapcore')
;

INSERT INTO singer (name) VALUES
('Пол Маккартни'),
('Мятое печенье'),
('Самокат'),
('Куртка Бейна'),
('Вундеркинд'),
('Виктор Цой'),
('Эминем'),
('Потомство')
;

INSERT INTO singer_genres (singer_id, genre_id) VALUES
(1, 1),
(2, 6),
(3, 3),
(4, 4),
(5, 4),
(6, 1),
(7, 2),
(8, 5),
(3, 1)
;

INSERT INTO album (name, year) VALUES
('Americana', 1998),
('Smash', 1994),
('Let the Bad Times Roll', 2018),
('No Tourists', 2018),
('The Fat of the Land', 1997),
('Invaders Must Die', 2009),
('Scooter Forever', 2018),
('Age of Love', 1997),
('No Time to Chill', 1998),
('Sheffield', 2000),
('Back to the Heavyweight Jam', 1999),
('Gold Cobra', 2019)
;
		
INSERT INTO  singer_albums (singer_id, album_id) VALUES
(8 , 1),
(8, 2),
(8, 3),
(5, 4),
(5, 5),
(5, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(2, 12)
;
		
INSERT INTO  track (name, length, album_id) VALUES
('Have You Ever', 234, 1),
('Staring at the Sun', 133, 1),
('Pretty Fly (for a White Guy)', 188, 1),
('The Kids Aren’t Alright', 180, 1),
('Feelings', 172, 1),
('She’s Got Issues', 183, 1),
('Walla Walla', 177, 1),
('The End of the Line', 182, 1),
('No Brakes', 124, 1),
('Why Don’t You Get a Job?', 172, 1),
('Americana', 195, 1),
('Pay the Man', 621, 1),
('Need Some1', 163, 4),
('Light Up the Sky', 200, 4),
('We Live Forever', 223, 4),
('Introbra', 80, 12),
('Bring It Back', 137, 12),
('Gold Cobra', 257, 12),
('Shark Attack', 206, 12),
('Get A Life', 294, 12),
('Shotgun', 272, 12),
('My generation', 272, 12)

;
	
INSERT INTO  compilation (name, year) VALUES
('Greatest Hits', 2005),
('Happy Hour!', 2010),
('The Offspring Collection', 1999),
('100% Scooter – 25 Years Wild & Wicked', 2020),
('20 Years of Hardcore', 2013),
('Icon', 2011),
('Collected', 2008),
('Greatest Hitz', 2005),
('New Old Songs', 2001),
('Кино в кино', 2002)
;

INSERT INTO  comp_traks (comp_id, track_id) VALUES
(1, 3),
(1, 4),
(1, 10),
(4, 12),
(4, 18),
(4, 7),
(3, 6),
(3, 11),
(3, 21)
;