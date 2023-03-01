-- ----------------------------
-- legions
-- ----------------------------

CREATE TABLE IF NOT EXISTS `legions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(16) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '1',
  `leader` int(11) NOT NULL,
  `legionar_permission2` int(11) NOT NULL DEFAULT '64',
  `centurion_permission1` int(11) NOT NULL DEFAULT '104',
  `centurion_permission2` int(11) NOT NULL DEFAULT '8',
  `emblem_id` int(1) NOT NULL default '0',
  `color_r` int(3) NOT NULL default '0',  
  `color_g` int(3) NOT NULL default '0', 
  `color_b` int(3) NOT NULL default '0',
  `announcement` varchar(120) default NULL,
  `data` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `legion_members` (
  `legion_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `level` int(3) NOT NULL, 
  `job`   int(3) NOT NULL,
  `mapid` int(11) NOT NULL,
  `rank` int(1) NOT NULL default '2',
  `name` varchar(16) NOT NULL default '', 
  `nickname` varchar(16) NOT NULL default '',  
  `selfintro` varchar(25) default '',
  PRIMARY KEY  (`player_id`),
  FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`legion_id`) REFERENCES `legions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
