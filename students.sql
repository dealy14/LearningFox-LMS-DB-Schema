ALTER TABLE `students`  
    ADD `organization` VARCHAR(50) NOT NULL DEFAULT '',  
    ADD `location` VARCHAR(50) NOT NULL DEFAULT '',
    ADD `domain` VARCHAR(50) NOT NULL DEFAULT '',
    ADD `manager` VARCHAR(50) NOT NULL DEFAULT '';