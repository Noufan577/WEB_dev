-- Run this script while connected to the database used by index.js.

CREATE TABLE IF NOT EXISTS countries (
  country_code CHAR(2) PRIMARY KEY,
  country_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS users (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL CHECK (length(trim(name)) > 0),
  color VARCHAR(30) NOT NULL CHECK (length(trim(color)) > 0)
);

CREATE TABLE IF NOT EXISTS visited_countries (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  country_code CHAR(2) NOT NULL REFERENCES countries(country_code),
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  UNIQUE (country_code, user_id)
);

CREATE INDEX IF NOT EXISTS visited_countries_user_id_idx
  ON visited_countries(user_id);

INSERT INTO users (name, color)
VALUES
  ('Angela', 'teal'),
  ('Jack', 'powderblue')
ON CONFLICT DO NOTHING;