-- Issue #28
-- Change data types for fields 'last_login' and
-- 'reg_date' in students table from VARCHAR to
-- DATE, as they represent date values.

ALTER TABLE `students` 
	CHANGE `last_login` 
		`last_login` DATE 
		NOT NULL 
		DEFAULT '0000-00-00', 
	CHANGE `reg_date` 
		`reg_date` DATE 
		NOT NULL 
		DEFAULT '0000-00-00';