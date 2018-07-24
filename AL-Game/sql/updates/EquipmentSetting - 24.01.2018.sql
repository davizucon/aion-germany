SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `player_equipment_setting`
-- ----------------------------
DROP TABLE IF EXISTS `player_equipment_setting`;
CREATE TABLE `player_equipment_setting` (
  `player_id` int(11) NOT NULL,
  `slot` int(255) NOT NULL,
  `display` tinyint(2) NOT NULL DEFAULT '0',
  `m_hand` int(21) NOT NULL DEFAULT '0',
  `s_hand` int(21) NOT NULL DEFAULT '0',
  `helmet` int(21) NOT NULL DEFAULT '0',
  `torso` int(21) NOT NULL DEFAULT '0',
  `glove` int(21) NOT NULL DEFAULT '0',
  `boots` int(21) NOT NULL DEFAULT '0',
  `earrings_left` int(21) NOT NULL DEFAULT '0',
  `earrings_right` int(21) NOT NULL DEFAULT '0',
  `ring_left` int(21) NOT NULL DEFAULT '0',
  `ring_right` int(21) NOT NULL DEFAULT '0',
  `necklace` int(21) NOT NULL DEFAULT '0',
  `shoulder` int(21) NOT NULL DEFAULT '0',
  `pants` int(21) NOT NULL DEFAULT '0',
  `powershard_left` int(21) NOT NULL DEFAULT '0',
  `powershard_right` int(21) NOT NULL DEFAULT '0',
  `wings` int(21) NOT NULL DEFAULT '0',
  `waist` int(21) NOT NULL DEFAULT '0',
  `m_off_hand` int(21) NOT NULL DEFAULT '0',
  `s_off_hand` int(21) NOT NULL DEFAULT '0',
  `plume` int(21) NOT NULL DEFAULT '0',
  `bracelet` int(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_equipment_setting
-- ----------------------------

ALTER TABLE `player_minions` MODIFY COLUMN `birthday` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `level`;
ALTER TABLE `player_minions` ADD COLUMN is_locked INT(1) NOT NULL AFTER `growthpoints`;
ALTER TABLE `player_minions` ADD COLUMN buff_bag VARCHAR(255) NULL DEFAULT NULL AFTER `is_locked`;



ALTER TABLE `players` ADD COLUMN minion_function_time timestamp NULL DEFAULT NULL AFTER `minion_skill_points`;