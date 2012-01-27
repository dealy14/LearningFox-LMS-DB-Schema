-- Issue 14
-- Lengthen keyword column in table 'course_metdata_info' to minimum required (1,000 chars)


-- Issue 18
-- Add default empty values for columns
-- in 'course' table.
-- This might also work out if we made the columns
-- NULLable, but unsure how it might affect the rest
-- of the code, so just using a blank default.
-- Also, the default charset/collation for the columns
-- is UTF8/utf8_general_ci, while some other tables have
-- latin1/latin1_swedish_ci.  This should be standardized
-- over the entire dataset.

ALTER TABLE `course` 
  CHANGE `keyword` 
    `keyword` 
    VARCHAR( 1000 ) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NULL
    DEFAULT NULL,
  CHANGE `c_description` 
    `c_description` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `purpose` 
    `purpose` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `contribute` 
    `contribute` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `entity` 
    `entity` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `classifiedkeyword` 
    `classifiedkeyword` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `role` 
    `role` 
    VARCHAR(255) 
   CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `date` 
    `date` 
    VARCHAR(100) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `structure` 
    `structure` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `format` 
    `format` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `size` 
    `size` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `md_scheme` 
    `md_scheme` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `md_catalog` 
    `md_catalog` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `md_entry` 
    `md_entry` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `learning_resource_type` 
    `learning_resource_type` 
    VARCHAR(255) 
    CHARACTER SET utf8 
   COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `cost` 
    `cost` 
    VARCHAR(100) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `copyright` 
    `copyright` 
    VARCHAR(150) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `right_description` 
    `right_description` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `interactive_type` 
    `interactive_type` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `interactive_level` 
    `interactive_level` 
    VARCHAR(100) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `typical_learning_time` 
  `typical_learning_time` 
    VARCHAR(100) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '', 
  CHANGE `location` 
    `location` 
    VARCHAR(255) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NOT NULL 
    DEFAULT '';