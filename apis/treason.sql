~~~~~~~~

CREATE TABLE IF NOT EXISTS `runoob_tbl`(
   `runoob_id` INT UNSIGNED AUTO_INCREMENT,
   `runoob_title` VARCHAR(100) NOT NULL,
   `runoob_author` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `runoob_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `runoob_tbl` (
  `runoob_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `runoob_title` varchar(100) NOT NULL,
  `runoob_author` varchar(40) NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`runoob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

SELECT * FROM runoob_tbl;
DROP TABLE runoob_tbl;

INSERT INTO runoob_tbl (runoob_title, runoob_author, submission_date)
VALUES ("学习 PHP", "菜鸟教程", NOW());

INSERT INTO runoob_tbl (runoob_title, runoob_author, submission_date)
VALUES ("学习 MySQL", "菜鸟教程", NOW());

INSERT INTO runoob_tbl (runoob_title, runoob_author, submission_date)
VALUES ("JAVA 教程", "RUNOOB.COM", '2016-05-06');

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CREATE TABLE test3 (
  test_id int(10) DEFAULT NULL,
  test_name varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

SELECT * FROM test3;
DROP TABLE test3;

INSERT INTO test3 (test_id, test_name) VALUES (1, "测试1");
INSERT INTO test3 (test_id, test_name) VALUES (2, "测试2");
INSERT INTO test3 (test_id, test_name) VALUES (3, "测试3");

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CREATE TABLE timeline_type (
  type_id int unsigned NOT NULL AUTO_INCREMENT,
  type_name varchar(12) NOT NULL,
  PRIMARY KEY (type_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

SELECT * FROM timeline_type;
DROP TABLE timeline_type;

INSERT INTO timeline_type (type_name) VALUES ("旅游");
INSERT INTO timeline_type (type_name) VALUES ("团建");

INSERT INTO timeline_type (type_name) VALUES 
("旅游"),
("团建");

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CREATE TABLE timeline_content (
  id int unsigned NOT NULL AUTO_INCREMENT,
  type_id int NOT NULL,
  date_start varchar(12) NOT NULL,
  date_end varchar(12) NOT NULL,
  content varchar(100) NOT NULL,
  remark varchar(100) NOT NULL,
  remark2 varchar(100),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

SELECT * FROM timeline_content;
DROP TABLE timeline_content;
DELETE FROM timeline_content;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CREATE OR REPLACE VIEW timeline_content_view AS
SELECT 
  timeline_content.id,
  timeline_content.type_id,
  timeline_type.type_name,
  STR_TO_DATE(date_start, '%Y%m%d') as date_start_format,
  STR_TO_DATE(date_end, '%Y%m%d') as date_end_format,
  DATEDIFF(STR_TO_DATE(date_end, '%Y%m%d'), STR_TO_DATE(date_start, '%Y%m%d'))+1 as date_during_format,
  timeline_content.content,
  timeline_content.remark,
  timeline_content.remark2
FROM timeline_content, timeline_type
WHERE timeline_content.type_id = timeline_type.type_id
;

SELECT * FROM timeline_content_view;
DROP VIEW timeline_content_view;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~








