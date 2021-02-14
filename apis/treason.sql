~~~~~~~~

CREATE TABLE IF NOT EXISTS `runoob_tbl`(
   `runoob_id` INT UNSIGNED AUTO_INCREMENT,
   `runoob_title` VARCHAR(100) NOT NULL,
   `runoob_author` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `runoob_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from runoob_tbl;

INSERT INTO runoob_tbl 
(runoob_title, runoob_author, submission_date)
VALUES
("学习 PHP", "菜鸟教程", NOW());

INSERT INTO runoob_tbl
(runoob_title, runoob_author, submission_date)
VALUES
("学习 MySQL", "菜鸟教程", NOW());

INSERT INTO runoob_tbl
(runoob_title, runoob_author, submission_date)
VALUES
("JAVA 教程", "RUNOOB.COM", '2016-05-06');

select * from runoob_tbl;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

DROP TABLE test3;

CREATE TABLE test3 (
  test_id int(10) DEFAULT NULL,
  test_name varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

select * from test3;

INSERT INTO test3 (test_id, test_name) VALUES (1, "测试1");

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

DROP TABLE timeline;

CREATE TABLE timeline (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  date_start date NOT NULL,
  date_end date NOT NULL,
  type varchar(10) NOT NULL,
  content varchar(100) NOT NULL,
  comment1 varchar(100) NOT NULL,
  comment2 varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

select * from timeline;

INSERT INTO timeline (date_start, date_end, type, content, comment1, comment2) 
VALUES ("2015-06-20", "2015-06-22", "旅游", "秦皇岛", "北戴河&南戴河", "端午节");

INSERT INTO timeline (date_start, date_end, type, content, comment1, comment2) 
VALUES ("2016-06-09", "2016-06-10", "旅游", "北京怀柔", "青龙峡&雁栖湖", "端午节");

INSERT INTO timeline (date_start, date_end, type, content, comment1, comment2) 
VALUES ("2017-04-23", "2017-04-23", "旅游", "日照", "花仙子海景基地", "");

INSERT INTO timeline (date_start, date_end, type, content, comment1, comment2) 
VALUES ("2017-04-23", "", "旅游", "日照", "花仙子海景基地", "");

select * from timeline;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~







