/*
MySQL Data Transfer
Source Host: 122.117.100.47
Source Database: au_server_gs
Target Host: 122.117.100.47
Target Database: au_server_gs
Date: 2010/2/1 ¤W¤È 08:54:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for droplist
-- ----------------------------
DROP TABLE IF EXISTS `droplist`;
CREATE TABLE `droplist` (
  `Id` int(11) NOT NULL auto_increment,
  `mobId` int(11) NOT NULL default '0',
  `itemId` int(11) NOT NULL default '0',
  `min` int(11) NOT NULL default '0',
  `max` int(11) NOT NULL default '0',
  `chance` float NOT NULL default '0',
  `quest` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=364232 DEFAULT CHARSET=utf8;

