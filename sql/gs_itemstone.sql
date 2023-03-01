-- ----------------------------
-- item_stones
-- ----------------------------
CREATE TABLE `item_stones` (
  `itemUniqueId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `pos` int(2) NOT NULL,
  FOREIGN KEY (`itemUniqueId`) references inventory (`itemUniqueId`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
