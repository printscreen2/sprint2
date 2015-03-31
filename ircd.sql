DROP DATABASE IF EXISTS ircd;
CREATE DATABASE ircd;
\c ircd;
CREATE EXTENSION pgcrypto;

CREATE TABLE IF NOT EXISTS users(
    id serial,
    username varchar(50) NOT NULL,
    password varchar(150) NOT NULL,
    PRIMARY KEY (id)
    );
INSERT INTO users (username, password) VALUES
    ('bob', crypt('bob',gen_salt('bf'))),
CREATE TABLE IF NOT EXISTS messages (
    id serial,
    username varchar(12) NOT NULL,
    message varchar(150) NOT NULL,
    PRIMARY KEY (id)
) ;
INSERT INTO messages (username, message) VALUES
    ('bob', 'coookies!'); 