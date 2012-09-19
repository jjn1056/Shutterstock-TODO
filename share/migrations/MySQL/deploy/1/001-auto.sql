-- 
-- Created by SQL::Translator::Producer::MySQL
-- Created on Wed Sep 19 10:12:26 2012
-- 
;
SET foreign_key_checks=0;
--
-- Table: `person`
--
CREATE TABLE `person` (
  `person_id` integer NOT NULL auto_increment,
  `email` varchar(96) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE `person_email` (`email`)
) ENGINE=InnoDB;
--
-- Table: `todo_list_item`
--
CREATE TABLE `todo_list_item` (
  `todo_list_item_id` integer NOT NULL auto_increment,
  `person_id` integer NOT NULL,
  `description` text NOT NULL,
  `completed` enum('0','1') NOT NULL DEFAULT '0',
  INDEX `todo_list_item_idx_person_id` (`person_id`),
  PRIMARY KEY (`todo_list_item_id`),
  CONSTRAINT `todo_list_item_fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
SET foreign_key_checks=1