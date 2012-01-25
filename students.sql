-- Issue 27
-- Add default empty default values for columns
-- in 'students' table.
-- This might also work out if we made the columns
-- NULLable, but unsure how it might affect the rest
-- of the code, so just using a blank default.
-- Also, the default charset/collation for the columns
-- is latin1/latin1_swedish_ci, while some other tables have
-- UTF8/utf8_general_ci.  This should be standardized
-- over the entire dataset.

ALTER TABLE `students` 
  CHANGE `confirmation_number` 
    `confirmation_number` 
    VARCHAR(255) 
    CHARACTER SET latin1 
    COLLATE latin1_swedish_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `organization_name` 
    `organization_name` 
    VARCHAR(255) 
    CHARACTER SET latin1 
    COLLATE latin1_swedish_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `last_login` 
    `last_login` 
    VARCHAR(255) 
    CHARACTER SET latin1 
    COLLATE latin1_swedish_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `reg_date` 
    `reg_date` 
    VARCHAR(255) 
    CHARACTER SET latin1 
    COLLATE latin1_swedish_ci 
    NOT NULL 
    DEFAULT '';