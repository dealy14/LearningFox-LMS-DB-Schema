-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 10.6.186.199
-- Generation Time: Mar 13, 2012 at 08:01 AM
-- Server version: 5.0.92
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `LearningFox-LMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `abs_events`
--

DROP TABLE IF EXISTS `abs_events`;
CREATE TABLE `abs_events` (
  `id` int(32) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `end_date` date NOT NULL,
  `time1` varchar(255) default NULL,
  `time2` varchar(255) default NULL,
  `seats` int(25) NOT NULL,
  `address` text NOT NULL,
  `maximum` int(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facility_phone` varchar(255) NOT NULL,
  `abrevationLoc` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

DROP TABLE IF EXISTS `class_students`;
CREATE TABLE `class_students` (
  `id` int(25) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `waiting` int(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `ID` int(20) NOT NULL auto_increment,
  `created` varchar(255) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `type` varchar(255) NOT NULL default '',
  `course_type` varchar(255) NOT NULL default '',
  `folder_name` varchar(255) NOT NULL default '',
  `course_id` varchar(255) NOT NULL default '',
  `category_id` int(10) NOT NULL,
  `status` enum('active','not active') default 'active',
  `description` blob,
  `cmi_credit` varchar(255) NOT NULL default '',
  `link` varchar(255) default 'http://davidealytechnologies.com',
  `sco_version` varchar(255) default NULL,
  `description2` varchar(255) default NULL,
  `keyword` varchar(1000) default NULL,
  `catalog_name` varchar(255) default NULL,
  `catalog_entry` varchar(255) default NULL,
  `c_description` varchar(255) NOT NULL default '',
  `purpose` varchar(255) NOT NULL default '',
  `contribute` varchar(255) NOT NULL default '',
  `entity` varchar(255) NOT NULL default '',
  `classifiedkeyword` varchar(255) NOT NULL default '',
  `role` varchar(255) NOT NULL default '',
  `date` varchar(100) NOT NULL default '',
  `structure` varchar(255) NOT NULL default '',
  `format` varchar(255) NOT NULL default '',
  `size` varchar(255) NOT NULL default '',
  `md_scheme` varchar(255) NOT NULL default '',
  `md_catalog` varchar(255) NOT NULL default '',
  `md_entry` varchar(255) NOT NULL default '',
  `learning_resource_type` varchar(255) NOT NULL default '',
  `cost` varchar(100) NOT NULL default '',
  `copyright` varchar(150) NOT NULL default '',
  `right_description` varchar(255) NOT NULL default '',
  `interactive_type` varchar(255) NOT NULL default '',
  `interactive_level` varchar(100) NOT NULL default '',
  `typical_learning_time` varchar(100) NOT NULL default '',
  `location` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `course-backup`
--

DROP TABLE IF EXISTS `course-backup`;
CREATE TABLE `course-backup` (
  `modified` date default '0000-00-00',
  `created` date default '0000-00-00',
  `name` varchar(50) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  `status` enum('active','not active') default 'not active',
  `description` blob,
  `link` varchar(255) default 'http://davidealytechnologies.com',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Table structure for table `courses_r`
--

DROP TABLE IF EXISTS `courses_r`;
CREATE TABLE `courses_r` (
  `course_name` varchar(50) NOT NULL default '',
  `course_ID` int(11) NOT NULL default '0',
  `lesson_name` varchar(50) NOT NULL default '',
  `lesson_ID` int(11) NOT NULL default '0',
  `ID` int(11) NOT NULL auto_increment,
  `lesson_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

DROP TABLE IF EXISTS `course_categories`;
CREATE TABLE `course_categories` (
  `category_id` int(10) NOT NULL auto_increment,
  `category_name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `course_history`
--

DROP TABLE IF EXISTS `course_history`;
CREATE TABLE `course_history` (
  `last_usage` date default '0000-00-00',
  `start_date` date default '0000-00-00',
  `course_status` varchar(40) NOT NULL default 'Incomplete',
  `course_ID` int(4) NOT NULL default '0',
  `lesson` int(4) NOT NULL default '0',
  `topic` int(4) NOT NULL default '0',
  `last_au` int(15) NOT NULL default '0',
  `completed_aus` varchar(250) NOT NULL default '',
  `custom_inf` text NOT NULL,
  `user_ID` int(15) NOT NULL default '0',
  `total_time` varchar(50) NOT NULL default '',
  `total_score` int(3) NOT NULL default '0',
  `start_time` varchar(50) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  `lesson_location` varchar(255) NOT NULL default '',
  `core_exit` varchar(20) NOT NULL default '',
  `score_raw` float(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `course_metdata_info`
--

DROP TABLE IF EXISTS `course_metdata_info`;
CREATE TABLE `course_metdata_info` (
  `course_id` varchar(255) NOT NULL default '',
  `row_id` int(11) NOT NULL auto_increment,
  `version` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `catalogentry` varchar(255) NOT NULL default '',
  `catalogname` varchar(255) NOT NULL default '',
  `keywords` varchar(1000) default NULL,
  PRIMARY KEY  (`row_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `efiles`
--

DROP TABLE IF EXISTS `efiles`;
CREATE TABLE `efiles` (
  `ID` int(255) NOT NULL auto_increment,
  `assetnum` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  `course_type` varchar(255) NOT NULL default '',
  `folder_name` varchar(255) NOT NULL default '',
  `course_id` varchar(255) NOT NULL default '',
  `status` enum('active','not active') default 'active',
  `description` blob,
  `cmi_credit` varchar(255) NOT NULL default '',
  `link` varchar(255) default 'http://davidealytechnologies.com',
  `sco_version` varchar(255) default NULL,
  `description2` varchar(255) default NULL,
  `keyword` varchar(255) default NULL,
  `catalog_name` varchar(255) default NULL,
  `catalog_entry` varchar(255) default NULL,
  `c_description` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `contribute` varchar(255) NOT NULL,
  `entity` varchar(255) NOT NULL,
  `classifiedkeyword` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `structure` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `md_scheme` varchar(255) NOT NULL,
  `md_catalog` varchar(255) NOT NULL,
  `md_entry` varchar(255) NOT NULL,
  `learning_resource_type` varchar(255) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `copyright` varchar(150) NOT NULL,
  `right_description` varchar(255) NOT NULL,
  `interactive_type` varchar(255) NOT NULL,
  `interactive_level` varchar(100) NOT NULL,
  `typical_learning_time` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
CREATE TABLE `forums` (
  `orgID` varchar(24) NOT NULL default '0',
  `maxposts` int(15) unsigned NOT NULL default '100',
  `ID` int(15) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `orgID` (`orgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `forums`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_messages`
--

DROP TABLE IF EXISTS `forum_messages`;
CREATE TABLE `forum_messages` (
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `subject` varchar(255) default '0',
  `message` blob,
  `replied_to` enum('yes','no') NOT NULL default 'no',
  `userID` int(15) NOT NULL default '0',
  `threadID` int(15) NOT NULL default '0',
  `ID` int(15) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `userID` (`userID`,`threadID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `forum_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_threads`
--

DROP TABLE IF EXISTS `forum_threads`;
CREATE TABLE `forum_threads` (
  `tokenID` int(15) unsigned NOT NULL default '0',
  `userID` int(15) NOT NULL default '0',
  `topicsID` int(15) NOT NULL default '0',
  `ID` int(15) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `topicsID` (`topicsID`,`userID`,`tokenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `forum_threads`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
CREATE TABLE `forum_topics` (
  `title` varchar(255) NOT NULL default '0',
  `status` enum('on','off') NOT NULL default 'off',
  `courseID` int(15) NOT NULL default '0',
  `forumID` int(15) NOT NULL default '0',
  `ID` int(15) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `courseID` (`courseID`,`forumID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `forum_topics`
--


-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `name` varchar(225) NOT NULL default '',
  `sname` varchar(225) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
CREATE TABLE `item_info` (
  `id` int(20) NOT NULL auto_increment,
  `course_id` varchar(255) NOT NULL default '',
  `identifier` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `launch` varchar(255) NOT NULL default '',
  `data_from_lms` varchar(255) NOT NULL default '',
  `cmi_credit` varchar(255) NOT NULL default '',
  `prerequisites` varchar(255) NOT NULL default '',
  `masteryscore` varchar(255) NOT NULL default '',
  `maximumtime` varchar(255) NOT NULL default '',
  `timelimitaction` varchar(255) NOT NULL default '',
  `sequence` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `modified` date default '0000-00-00',
  `created` date default '0000-00-00',
  `name` varchar(50) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `lessons_r`
--

DROP TABLE IF EXISTS `lessons_r`;
CREATE TABLE `lessons_r` (
  `lesson_name` varchar(50) NOT NULL default '',
  `lesson_ID` int(11) NOT NULL default '0',
  `topic_name` varchar(50) NOT NULL default '',
  `topic_ID` int(11) NOT NULL default '0',
  `ID` int(11) NOT NULL auto_increment,
  `topic_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `libdocID` int(11) NOT NULL auto_increment,
  `userID` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetype` varchar(255) NOT NULL,
  `img_type` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `targetID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`libdocID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `library_folders`
--

DROP TABLE IF EXISTS `library_folders`;
CREATE TABLE `library_folders` (
  `folder_id` int(11) NOT NULL auto_increment,
  `folder_name` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY  (`folder_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `library_link`
--

DROP TABLE IF EXISTS `library_link`;
CREATE TABLE `library_link` (
  `linkID` int(11) NOT NULL auto_increment,
  `userID` varchar(150) NOT NULL,
  `links` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY  (`linkID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(255) NOT NULL auto_increment,
  `sid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `uid` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

DROP TABLE IF EXISTS `objectives`;
CREATE TABLE `objectives` (
  `course_ID` varchar(50) NOT NULL default '',
  `objective` varchar(220) NOT NULL default '',
  `link` varchar(50) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `orgs`
--

DROP TABLE IF EXISTS `orgs`;
CREATE TABLE `orgs` (
  `name` varchar(100) default NULL,
  `org_ID` varchar(24) NOT NULL default '',
  `seats` int(10) default NULL,
  `address` varchar(255) default '0',
  `city` varchar(75) default NULL,
  `state` varchar(6) default NULL,
  `contact` varchar(100) default NULL,
  `phone` varchar(14) default NULL,
  `fax` varchar(14) default NULL,
  `url` varchar(100) default NULL,
  `ID` int(15) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `org_ID` (`org_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `orgs` VALUES('All Users', 'ALL', 100, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `PID` mediumint(9) NOT NULL auto_increment,
  `Question` varchar(255) default NULL,
  `FECHA` date default NULL,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `question` blob NOT NULL,
  `qname` varchar(225) NOT NULL default '',
  `question_type` enum('TF','MC','SA') NOT NULL default 'MC',
  `choice_1` varchar(225) NOT NULL default '',
  `choice_2` varchar(225) NOT NULL default '',
  `choice_3` varchar(225) NOT NULL default '',
  `choice_4` varchar(225) NOT NULL default '',
  `correct_answ` varchar(225) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `ref`
--

DROP TABLE IF EXISTS `ref`;
CREATE TABLE `ref` (
  `course_ID` varchar(50) NOT NULL default '',
  `rname` varchar(255) default NULL,
  `filename` varchar(220) default NULL,
  `description` varchar(200) default NULL,
  `ID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `cid` (`course_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `reg_form`
--

DROP TABLE IF EXISTS `reg_form`;
CREATE TABLE `reg_form` (
  `field_name` varchar(50) NOT NULL default '',
  `status` varchar(10) NOT NULL default '',
  `forder` int(5) NOT NULL default '0',
  `stored` enum('y','n') NOT NULL default 'n',
  `ID` int(11) NOT NULL auto_increment,
  `display` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `reg_form`
--

INSERT INTO `reg_form` VALUES('fname', 'on', 1, 'y', 1, 'First Name');
INSERT INTO `reg_form` VALUES('mname', 'off', 8, 'y', 2, 'SSN');
INSERT INTO `reg_form` VALUES('lname', 'on', 2, 'y', 3, 'Last Name');
INSERT INTO `reg_form` VALUES('sex', 'off', 0, 'y', 4, '');
INSERT INTO `reg_form` VALUES('phone', 'on', 12, 'y', 5, 'Phone number');
INSERT INTO `reg_form` VALUES('email', 'on', 4, 'y', 6, 'Email Address');
INSERT INTO `reg_form` VALUES('address', 'off', 0, 'y', 7, '');
INSERT INTO `reg_form` VALUES('city', 'off', 0, 'y', 8, '');
INSERT INTO `reg_form` VALUES('state', 'off', 0, 'n', 9, '');
INSERT INTO `reg_form` VALUES('zip', 'off', 0, 'n', 10, '');
INSERT INTO `reg_form` VALUES('orgID', 'off', 7, 'y', 11, 'Organization ID');
INSERT INTO `reg_form` VALUES('user_group', 'off', 3, 'y', 12, 'Department');
INSERT INTO `reg_form` VALUES('user_subgroup', 'off', 4, 'n', 13, 'Sub group');
INSERT INTO `reg_form` VALUES('username', 'on', 5, 'y', 14, 'UserName');
INSERT INTO `reg_form` VALUES('password', 'on', 6, 'y', 15, 'Password');
INSERT INTO `reg_form` VALUES('date_of_birth', 'off', 0, 'n', 16, '');
INSERT INTO `reg_form` VALUES('provider_number', 'on', 5, 'y', 17, 'Provider Number');
INSERT INTO `reg_form` VALUES('buisness_type', 'on', 0, 'y', 18, 'Buisness Type');
INSERT INTO `reg_form` VALUES('active', 'on', 0, 'y', 19, 'Active');
INSERT INTO `reg_form` VALUES('security_question', 'on', 0, 'y', 20, 'Security Question');
INSERT INTO `reg_form` VALUES('security_answer', 'on', 0, 'y', 21, 'Security Answer');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `date_of_reg` date default '0000-00-00',
  `date_of_mod` date default '0000-00-00',
  `date_of_hire` date default '0000-00-00',
  `fname` varchar(50) NOT NULL default '',
  `lname` varchar(50) NOT NULL default '',
  `mname` varchar(10) NOT NULL default '',
  `orgID` varchar(50) default '00000000',
  `user_group` varchar(70) NOT NULL default '',
  `user_subgroup` varchar(50) NOT NULL default '',
  `date_of_birth` varchar(10) NOT NULL default '00000000',
  `sex` enum('m','f','na') NOT NULL default 'na',
  `phone` varchar(15) NOT NULL default '0000000000',
  `email` varchar(50) NOT NULL default '',
  `address` varchar(100) default NULL,
  `city` varchar(50) default NULL,
  `state` varchar(5) default NULL,
  `zip` varchar(20) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `userlevel` int(3) NOT NULL default '0',
  `ID` int(11) NOT NULL auto_increment,
  `cookie` varchar(32) NOT NULL default '',
  `session` varchar(32) NOT NULL default '',
  `ip` int(4) unsigned NOT NULL default '0',
  `ssn` varchar(255) NOT NULL default '',
  `security_question` varchar(255) default '',
  `security_answer` varchar(255) default NULL,
  `buisness_type` varchar(255) default NULL,
  `active` varchar(255) default NULL,
  `provider_number` varchar(255) default NULL,
  `confirmation_number` varchar(255) NOT NULL default '',
  `organization_name` varchar(255) NOT NULL default '',
  `last_login` varchar(255) NOT NULL default '',
  `reg_date` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `subgroups`
--

DROP TABLE IF EXISTS `subgroups`;
CREATE TABLE `subgroups` (
  `sub_name` varchar(225) NOT NULL default '',
  `sub_sname` varchar(225) NOT NULL default '',
  `ID` int(11) NOT NULL auto_increment,
  `group_ID` int(15) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- This table should be empty when a new implementation is created.

-- --------------------------------------------------------

--
-- Table structure for table `temp_wtest`
--

DROP TABLE IF EXISTS `temp_wtest`;
CREATE TABLE `temp_wtest` (
  `user_ID` int(11) unsigned NOT NULL default '0',
  `test_ID` int(11) unsigned NOT NULL default '0',
  `date_taken` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `answers` blob,
  `ID` int(11) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`ID`),
  KEY `user_ID` (`user_ID`,`test_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `temp_wtest`
--


-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test` char(128) default 'test'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--


-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `name` varchar(225) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `randomize` enum('Y','N') NOT NULL default 'N',
  `ID` int(11) NOT NULL auto_increment,
  `status` enum('active','not active') NOT NULL default 'active',
  `description` blob,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Table structure for table `tests_r`
--

DROP TABLE IF EXISTS `tests_r`;
CREATE TABLE `tests_r` (
  `test_ID` int(11) NOT NULL default '0',
  `question_ID` int(11) NOT NULL default '0',
  `question_order` int(11) NOT NULL default '1',
  `ID` int(11) NOT NULL auto_increment,
  `resource_l` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `modified` date default '0000-00-00',
  `created` date default '0000-00-00',
  `name` varchar(100) NOT NULL default '',
  `time_limit` varchar(250) NOT NULL default '',
  `time_req` varchar(50) NOT NULL default '',
  `topic_type` varchar(50) NOT NULL default '',
  `content_location` enum('local','remote') NOT NULL default 'local',
  `content_link` varchar(200) NOT NULL default '',
  `content` blob NOT NULL,
  `test_link` int(11) NOT NULL default '0',
  `ID` int(11) NOT NULL auto_increment,
  `course_ID` int(11) NOT NULL default '0',
  `prerequisites` varchar(50) NOT NULL default '0',
  `datafromlms` varchar(100) default '',
  `identifier` varchar(100) default '',
  `mastery_score` float(10,2) NOT NULL default '0.00',
  `max_time` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL auto_increment,
  `fname` varchar(30) NOT NULL default '',
  `lname` varchar(30) NOT NULL default '',
  `org` int(3) NOT NULL default '0',
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usersco_history`
--

DROP TABLE IF EXISTS `usersco_history`;
CREATE TABLE `usersco_history` (
  `ID` int(11) NOT NULL auto_increment,
  `sco_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `sco_status` varchar(50) NOT NULL default 'Incomplete',
  `sco_exit` varchar(50) NOT NULL default '',
  `sco_sess_time` varchar(50) NOT NULL default '',
  `course_id` int(11) NOT NULL default '0',
  `suspand_data` text,
  `score_raw` float(10,2) NOT NULL default '0.00',
  `lesson_location` varchar(50) NOT NULL default '',
  `score_max` float(10,2) NOT NULL default '0.00',
  `prerequisites` varchar(100) NOT NULL default '',
  `identifier` varchar(100) NOT NULL default '',
  `score_min` float(10,2) NOT NULL default '0.00',
  `pref_audio` int(3) NOT NULL default '0',
  `pref_lang` varchar(50) NOT NULL default '',
  `pref_speed` int(3) NOT NULL default '0',
  `pref_text` int(3) NOT NULL default '0',
  `mastery_score` float(10,2) NOT NULL default '0.00',
  `max_time` varchar(50) NOT NULL default '',
  `time_limit` varchar(250) NOT NULL default '',
  `datafromlms` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `usersco_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE `user_messages` (
  `MESSAGEID` int(11) NOT NULL auto_increment,
  `USERID` int(11) NOT NULL,
  `CREATEDATE` datetime NOT NULL,
  `MESSAGE` varchar(500) NOT NULL,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY  (`MESSAGEID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Table structure for table `user_message_mapping`
--

DROP TABLE IF EXISTS `user_message_mapping`;
CREATE TABLE `user_message_mapping` (
  `USERID` int(11) NOT NULL,
  `LASTMESSAGEID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `user_own_messages`
--

DROP TABLE IF EXISTS `user_own_messages`;
CREATE TABLE `user_own_messages` (
  `RECORDID` int(11) NOT NULL auto_increment,
  `OWNERID` int(11) NOT NULL,
  `MESSAGEID` int(11) NOT NULL,
  PRIMARY KEY  (`RECORDID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_questions`
--

DROP TABLE IF EXISTS `user_questions`;
CREATE TABLE `user_questions` (
  `ID` int(50) NOT NULL auto_increment,
  `user` int(11) default '1',
  `question` int(11) default '1',
  `answer` varchar(5) default 'A',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_questions`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_scorm_rte1vars`
--

DROP TABLE IF EXISTS `user_scorm_rte1vars`;
CREATE TABLE `user_scorm_rte1vars` (
  `id` int(100) NOT NULL auto_increment,
  `cid` varchar(255) default NULL,
  `course_ref_id` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `sco_id` varchar(255) default NULL,
  `cmi_core_children` varchar(1000) default NULL,
  `cmi_core_student_id` varchar(255) default NULL,
  `cmi_core_student_name` varchar(255) default NULL,
  `cmi_core_lesson_location` varchar(255) default NULL,
  `cmi_core_credit` varchar(255) default NULL,
  `cmi_core_lesson_status` varchar(255) default NULL,
  `cmi_core_entry` varchar(255) default NULL,
  `cmi_core_score_children` varchar(300) default NULL,
  `cmi_core_score_raw` varchar(255) default NULL,
  `cmi_core_total_time` varchar(255) default NULL,
  `cmi_core_exit` varchar(255) default NULL,
  `cmi_core_session_time` varchar(255) default NULL,
  `cmi_suspend_data` varchar(255) default NULL,
  `cmi_launch_data` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_scorm_rte1vars`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_scorm_rte1vars1`
--

DROP TABLE IF EXISTS `user_scorm_rte1vars1`;
CREATE TABLE `user_scorm_rte1vars1` (
  `id` int(100) NOT NULL auto_increment,
  `cid` varchar(255) default NULL,
  `course_ref_id` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `sco_id` varchar(255) default NULL,
  `cmi_core_children` varchar(1000) default NULL,
  `cmi_core_student_id` varchar(255) default NULL,
  `cmi_core_student_name` varchar(255) default NULL,
  `cmi_core_lesson_location` varchar(255) default NULL,
  `cmi_core_credit` varchar(255) default NULL,
  `cmi_core_lesson_status` varchar(255) default NULL,
  `cmi_core_entry` varchar(255) default NULL,
  `cmi_core_score_children` varchar(300) default NULL,
  `cmi_core_score_raw` varchar(255) default NULL,
  `cmi_core_total_time` varchar(255) default NULL,
  `cmi_core_exit` varchar(255) default NULL,
  `cmi_core_session_time` varchar(255) default NULL,
  `cmi_suspend_data` varchar(255) default NULL,
  `cmi_launch_data` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_scorm_rte1vars1`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_scorm_rte2vars`
--

DROP TABLE IF EXISTS `user_scorm_rte2vars`;
CREATE TABLE `user_scorm_rte2vars` (
  `id` int(255) NOT NULL auto_increment,
  `cid` varchar(255) NOT NULL,
  `course_ref_id` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `sco_id` varchar(255) NOT NULL,
  `cmi_core_score_max` varchar(255) NOT NULL,
  `cmi_core_score_min` varchar(255) NOT NULL,
  `cmi_core_lesson_mode` varchar(255) NOT NULL,
  `cmi_comments` varchar(255) NOT NULL,
  `cmi_comments_from_lms` varchar(255) NOT NULL,
  `cmi_objectives_children` varchar(500) NOT NULL,
  `cmi_objectives_count` varchar(255) NOT NULL,
  `cmi_objectives_n_id` varchar(255) NOT NULL,
  `cmi_objectives_n_score_children` varchar(500) NOT NULL,
  `cmi_objectives_n_score_raw` varchar(255) NOT NULL,
  `cmi_objectives_n_score_max` varchar(255) NOT NULL,
  `cmi_objectives_n_score_min` varchar(255) NOT NULL,
  `cmi_objectives_n_status` varchar(255) NOT NULL,
  `cmi_student_data_children` varchar(500) NOT NULL,
  `cmi_student_data_mastery_score` varchar(255) NOT NULL,
  `cmi_student_data_max_time_allowed` varchar(255) NOT NULL,
  `cmi_student_data_time_limit_action` varchar(255) NOT NULL,
  `cmi_student_preference_children` varchar(500) NOT NULL,
  `cmi_student_preference_audio` varchar(255) NOT NULL,
  `cmi_student_preference_language` varchar(255) NOT NULL,
  `cmi_student_preference_speed` varchar(255) NOT NULL,
  `cmi_student_preference_text` varchar(255) NOT NULL,
  `cmi_interactions_children` varchar(500) NOT NULL,
  `cmi_interactions_count` varchar(255) NOT NULL,
  `cmi_interactions_n_id` varchar(255) NOT NULL,
  `cmi_interactions_n_objectives_count` varchar(255) NOT NULL,
  `cmi_interactions_n_objectives_n_id` varchar(255) NOT NULL,
  `cmi_interactions_n_time` varchar(255) NOT NULL,
  `cmi_interactions_n_type` varchar(255) NOT NULL,
  `cmi_interactions_n_correct_responses_count` varchar(255) NOT NULL,
  `cmi_interactions_n_correct_responses_n_pattern` varchar(255) NOT NULL,
  `cmi_interactions_n_weighting` varchar(255) NOT NULL,
  `cmi_interactions_n_student_response` varchar(255) NOT NULL,
  `cmi_interactions_n_result` varchar(255) NOT NULL,
  `cmi_interactions_n_latency` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_scorm_rte2vars`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_scorm_rte3vars`
--

DROP TABLE IF EXISTS `user_scorm_rte3vars`;
CREATE TABLE `user_scorm_rte3vars` (
  `id` int(255) NOT NULL auto_increment,
  `cid` varchar(255) NOT NULL,
  `course_ref_id` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `sco_id` varchar(255) NOT NULL,
  `cmi_core_score_max` varchar(255) NOT NULL,
  `cmi_core_score_min` varchar(255) NOT NULL,
  `cmi_core_lesson_mode` varchar(255) NOT NULL,
  `cmi_comments` varchar(255) NOT NULL,
  `cmi_comments_from_lms` varchar(255) NOT NULL,
  `cmi_objectives_children` varchar(500) NOT NULL,
  `cmi_objectives_count` varchar(255) NOT NULL,
  `cmi_objectives_n_id` varchar(255) NOT NULL,
  `cmi_objectives_n_score_children` varchar(500) NOT NULL,
  `cmi_objectives_n_score_raw` int(255) NOT NULL,
  `cmi_objectives_n_score_max` int(255) NOT NULL,
  `cmi_objectives_n_score_min` int(255) NOT NULL,
  `cmi_objectives_n_status` varchar(255) NOT NULL,
  `cmi_student_data_children` varchar(500) NOT NULL,
  `cmi_student_data_mastery_score` int(255) NOT NULL,
  `cmi_student_data_max_time_allowed` varchar(255) NOT NULL,
  `cmi_student_data_time_limit_action` varchar(255) NOT NULL,
  `cmi_student_preference_children` varchar(500) NOT NULL,
  `cmi_student_preference_audio` varchar(255) NOT NULL,
  `cmi_student_preference_language` varchar(255) NOT NULL,
  `cmi_student_preference_speed` varchar(255) NOT NULL,
  `cmi_student_preference_text` varchar(255) NOT NULL,
  `cmi_interactions_children` varchar(500) NOT NULL,
  `cmi_interactions_count` varchar(255) NOT NULL,
  `cmi_interactions_n_id` varchar(255) NOT NULL,
  `cmi_interactions_n_objectives_count` varchar(255) NOT NULL,
  `cmi_interactions_n_objectives_n_id` varchar(255) NOT NULL,
  `cmi_interactions_n_time` varchar(255) NOT NULL,
  `cmi_interactions_n_type` varchar(255) NOT NULL,
  `cmi_interactions_n_correct_responses_count` varchar(255) NOT NULL,
  `cmi_interactions_n_correct_responses_n_pattern` varchar(255) NOT NULL,
  `cmi_interactions_n_weighting` varchar(255) NOT NULL,
  `cmi_interactions_n_student_response` varchar(255) NOT NULL,
  `cmi_interactions_n_result` varchar(255) NOT NULL,
  `cmi_interactions_n_latency` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_scorm_rte3vars`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_sco_info`
--

DROP TABLE IF EXISTS `user_sco_info`;
CREATE TABLE `user_sco_info` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL default '0',
  `course_id` varchar(255) NOT NULL default '',
  `sco_id` varchar(255) NOT NULL default '',
  `launch` varchar(255) default NULL,
  `lesson_status` varchar(255) NOT NULL default '',
  `lesson_location` varchar(255) NOT NULL default '',
  `prerequisite` varchar(255) NOT NULL default '',
  `sco_exit` varchar(255) NOT NULL default '',
  `sco_entry` varchar(255) NOT NULL default '',
  `data_from_lms` varchar(255) NOT NULL default '',
  `masteryscore` varchar(255) NOT NULL default '',
  `suspend_data` longtext NOT NULL,
  `maximumtime` varchar(255) NOT NULL default '',
  `total_time` varchar(255) NOT NULL default '',
  `timelimitaction` varchar(255) NOT NULL default '',
  `sequence` int(20) NOT NULL default '0',
  `cmi_credit` varchar(255) NOT NULL default '',
  `score` int(10) NOT NULL default '0',
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_surveys`
--

DROP TABLE IF EXISTS `user_surveys`;
CREATE TABLE `user_surveys` (
  `ID` int(11) NOT NULL auto_increment,
  `student` int(5) NOT NULL default '1',
  `survey` int(5) NOT NULL default '1',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_surveys`
--

INSERT INTO `user_surveys` VALUES(1, 1, 3);
INSERT INTO `user_surveys` VALUES(2, 1, 5);
INSERT INTO `user_surveys` VALUES(3, 2, 5);
INSERT INTO `user_surveys` VALUES(4, 2, 3);
INSERT INTO `user_surveys` VALUES(5, 1, 6);
INSERT INTO `user_surveys` VALUES(6, 1, 9);
INSERT INTO `user_surveys` VALUES(7, 33, 9);
INSERT INTO `user_surveys` VALUES(8, 33, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_survey_log`
--

DROP TABLE IF EXISTS `user_survey_log`;
CREATE TABLE `user_survey_log` (
  `ID` int(11) NOT NULL auto_increment,
  `student` int(5) NOT NULL default '1',
  `test` int(5) NOT NULL default '1',
  `fecha` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_survey_question_log`
--

DROP TABLE IF EXISTS `user_survey_question_log`;
CREATE TABLE `user_survey_question_log` (
  `ID` int(11) NOT NULL auto_increment,
  `survey_log_ID` int(5) NOT NULL default '1',
  `answer` char(2) NOT NULL default '',
  `qid` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

