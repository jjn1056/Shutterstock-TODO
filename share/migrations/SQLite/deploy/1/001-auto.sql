-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Tue Sep 18 17:39:51 2012
-- 

;
BEGIN TRANSACTION;
--
-- Table: person
--
CREATE TABLE person (
  person_id INTEGER PRIMARY KEY NOT NULL,
  email varchar(96) NOT NULL
);
CREATE UNIQUE INDEX person_email ON person (email);
--
-- Table: todo_list_item
--
CREATE TABLE todo_list_item (
  todo_list_item_id INTEGER PRIMARY KEY NOT NULL,
  person_id integer NOT NULL,
  description text NOT NULL,
  completed boolean NOT NULL DEFAULT 0,
  FOREIGN KEY (person_id) REFERENCES person(person_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX todo_list_item_idx_person_id ON todo_list_item (person_id);
COMMIT