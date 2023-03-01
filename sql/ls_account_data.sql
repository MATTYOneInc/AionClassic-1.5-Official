DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `password` varchar(65) NOT NULL,
  `access_level` tinyint(3) NOT NULL default '0',
  `online` tinyint(3) NOT NULL default '0',
  `last_ip` varchar(20) default NULL,
  `last_online` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
