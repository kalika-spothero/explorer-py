CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  email varchar(255) NOT NULL,
  firstname varchar(255) NOT NULL,
  lastname varchar(255) NOT NULL,
  git_hub_username varchar(255) NOT NULL,
  rating smallint DEFAULT 0,
  created_at timestamp NOT NULL default NOW(),
  unique (email, git_hub_username)
);
