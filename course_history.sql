ALTER TABLE course_history
  CHANGE lesson_location 
  lesson_location VARCHAR( 255 )
   NOT NULL 
  DEFAULT '';

ALTER TABLE  course_history
  ADD enroll_date 
  DATE NULL 
  DEFAULT  '0000-00-00' 
  AFTER  start_date;
