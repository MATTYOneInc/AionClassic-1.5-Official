DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `title` varchar(64) NOT NULL,
  `context` varchar(64) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `itemCount` int(11) NOT NULL DEFAULT '0',
  `enchant` int(11) NOT NULL DEFAULT '0',
  `godstone` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (`ownerId`) references players (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
