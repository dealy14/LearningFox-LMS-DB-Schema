-- Issue 14
-- Lengthen keyword column in table 'course_metdata_info' to minimum required (1,000 chars)

ALTER TABLE `course_metdata_info` 
  CHANGE `keywords` 
    `keywords` 
    VARCHAR( 1000 ) 
    CHARACTER SET utf8 
    COLLATE utf8_general_ci 
    NULL
    DEFAULT NULL;

