CREATE DATABASE IF NOT EXISTS log;
USE log; 
CREATE TABLE musical (
  id INT PRIMARY KEY,
  interpark_id VARCHAR(255),
  interpark_path VARCHAR(255),
  name VARCHAR(255),
  place VARCHAR(255),
  cast VARCHAR(255),
  start_date DATE,
  end_date DATE,
  poster_path VARCHAR(255),
  create_date DATE DEFAULT CURRENT_DATE
);
CREATE TABLE schedule (
  id INT PRIMARY KEY,
  musical_id INT,
  date VARCHAR(255),
  time VARCHAR(255),
  create_date DATE DEFAULT CURRENT_DATE
);
CREATE TABLE casting (
  id INT PRIMARY KEY,
  musical_id INT,
  date VARCHAR(255),
  time VARCHAR(255),
  cast VARCHAR(255),
  create_date DATE DEFAULT CURRENT_DATE
);
