DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `itemUniqueId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `itemCount` int(11) NOT NULL DEFAULT '0',
  `itemOwner` int(11) NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  `enchant` int(11) NOT NULL DEFAULT '0',
  `godstone` int(11) NOT NULL DEFAULT '0',
  FOREIGN KEY (`itemOwner`) references players (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
