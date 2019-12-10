DROP DATABASE earworm;

CREATE DATABASE earworm;

\c earworm;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    genre_name TEXT UNIQUE
);

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    img_url text,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    genre_id INT REFERENCES genres(id) ON DELETE SET NULL
);

CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    song_id INT REFERENCES songs(id) ON DELETE SET NULL
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    comment_body VARCHAR,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    song_id INT REFERENCES songs(id) ON DELETE SET NULL
);

-- INSERT INTO users(username) VALUES('trey1');
-- INSERT INTO users(username) VALUES('trey2');

-- INSERT INTO genres(genre_name) VALUES('Rock');
-- INSERT INTO genres(genre_name) VALUES('Rap');
-- INSERT INTO genres(genre_name) VALUES('Electronic');
-- INSERT INTO genres(genre_name) VALUES('R&B');
-- INSERT INTO genres(genre_name) VALUES('World');

-- INSERT INTO songs(title, img_url, user_id, genre_id) VALUES('Numb', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzZDl4rlR99A-WtkD3EvGt4o4yl1djegOa61iWclIBs1bRi3kD', 1, 1);
-- INSERT INTO songs(title, img_url, user_id, genre_id) VALUES('Hip Hop Saved My Life', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqGvbR3cTNoRbImwEzhhi83Hi5QpX3iZNxzeaKz60y20LnusrE', 2, 2);
-- INSERT INTO songs(title, img_url, user_id, genre_id) VALUES('Bohemian Rhapsody', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTedo8TMwzDq1BpOCBYwcvNskhoDVc480THW-NLa__yFkRc2g_ahA', 2, 1);
-- INSERT INTO songs(title, img_url, user_id, genre_id) VALUES('Don''t You Worry Child', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpForcXzFUNmXr70JF8txL8iqs6cxRJpGAHPSQddHEZXm1OT0B6A', 3, 3);
-- INSERT INTO songs(title, img_url, user_id, genre_id) VALUES('Sweetest Taboo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi14lkR0bT2b3_9kCYdzoYclW_jBcjI2FRP8t9Z8fjqdrYKfYXbg', 4, 4);

-- INSERT INTO favorites(user_id, song_id) VALUES(1, 15);
-- INSERT INTO favorites(user_id, song_id) VALUES(2, 14);
-- INSERT INTO favorites(user_id, song_id) VALUES(3, 13);
-- INSERT INTO favorites(user_id, song_id) VALUES(4, 12);
-- INSERT INTO favorites(user_id, song_id) VALUES(5, 11);

-- INSERT INTO comments(comment_body, user_id, song_id) VALUES('Nice use of turquoise in this type, friend.', 10, 4);
-- INSERT INTO comments(comment_body, user_id, song_id) VALUES('Let me take a nap... great shot, anyway.
-- ', 9, 6);
-- INSERT INTO comments(comment_body, user_id, song_id) VALUES('Incredibly thought out! Flat design is going to die.', 8, 11);
-- INSERT INTO comments(comment_body, user_id, song_id) VALUES('This notification blew my mind.
-- ', 1, 15);
-- INSERT INTO comments(comment_body, user_id, song_id) VALUES('Killer. So gorgeous.
-- ',5, 11);