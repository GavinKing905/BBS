DROP TABLE IF EXISTS `bbs`.`accounts`;
CREATE TABLE  `bbs`.`accounts` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personal_website` varchar(10000) NOT NULL DEFAULT '',
  `location` varchar(10000) NOT NULL DEFAULT '',
  `signature` varchar(45) NOT NULL DEFAULT '',
  `introduction` varchar(45) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `weibo_link` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bbs`.`comments`;
CREATE TABLE  `bbs`.`comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` varchar(500) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `old_comment_id` int(10) unsigned DEFAULT NULL,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `posting_device` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bbs`.`nodes`;
CREATE TABLE  `bbs`.`nodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(45) DEFAULT NULL,
  `topics_count` int(10) unsigned DEFAULT NULL,
  `introduction` varchar(500) DEFAULT NULL,
  `custom_html` varchar(10000) DEFAULT NULL,
  `custom_css` varchar(10000) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bbs`.`picture_topic`;
CREATE TABLE  `bbs`.`picture_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pic_url` varchar(450) DEFAULT NULL,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `alias_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bbs`.`topics`;
CREATE TABLE  `bbs`.`topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `node_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `comments_count` int(10) unsigned NOT NULL DEFAULT '0',
  `is_comments_closed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `browse_num` int(10) unsigned DEFAULT NULL,
  `last_replied_by` varchar(450) DEFAULT NULL,
  `last_replied_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bbs`.`users`;
CREATE TABLE  `bbs`.`users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `sign_in_count` int(10) unsigned NOT NULL DEFAULT '0',
  `current_sign_in_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_sign_in_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `current_sign_in_ip` varchar(45) DEFAULT NULL,
  `last_sign_in_ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` varchar(45) DEFAULT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO NODES(created_at,updated_at,name,topics_count,introduction) VALUES('2017-08-09 14:15:25','2017-08-09 14:15:25','NBA NEWS',100,'NBA NEWS');