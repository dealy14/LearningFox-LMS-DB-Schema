-- Issue #25
-- Update existing, plain-text passwords in the 'students'
-- table to hashed values in order to match changes in the 
-- PHP authentication code. 
-- Specifically, the PHP code hashes the user's password 
-- input with sha1(username.password). The equivalent hashing 
-- function in MySQL is SHA1. The same salt value is used.

--UPDATE `students` SET `password` = ENCRYPT(`password`,'lF');
UPDATE `students` SET `password` = SHA1(CONCAT(`username`,`password`));