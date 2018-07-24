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


ALTER TABLE `player_minions` ADD COLUMN growthpoints INT(6) NOT NULL AFTER `birthday`;
ALTER TABLE `player_minions` MODIFY COLUMN `birthday` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `level`;
ALTER TABLE `player_minions` ADD COLUMN is_locked INT(1) NOT NULL AFTER `growthpoints`;
ALTER TABLE `player_minions` ADD COLUMN buff_bag VARCHAR(255) NULL DEFAULT NULL AFTER `is_locked`;

ALTER TABLE `player_minions`
MODIFY COLUMN `growthpoints`  int(6) NOT NULL DEFAULT 0 AFTER `birthday`;
ALTER TABLE `player_minions`
MODIFY COLUMN `is_locked`  int(1) NOT NULL DEFAULT 0 AFTER `growthpoints`;


ALTER TABLE `players` ADD COLUMN minion_function_time timestamp NULL DEFAULT NULL AFTER `minion_skill_points`;

ALTER TABLE `player_minions` MODIFY COLUMN `is_locked`  int(1) NOT NULL DEFAULT 0 AFTER `growthpoints`;

CREATE TABLE IF NOT EXISTS `f2paccount` (
  `account_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `player_events_window`;
CREATE TABLE `player_events_window`  (
  `account_id` int(11) NULL DEFAULT NULL,
  `event_id` int(11) NULL DEFAULT NULL,
  `last_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `elapsed` double(11, 0) NULL DEFAULT 0,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS player_skill_skins;
CREATE TABLE player_skill_skins (
  player_id int(11) NOT NULL DEFAULT '0',
  skin_id int(11) NOT NULL DEFAULT '0',
  remaining bigint(22) DEFAULT '0',
  active int(1) DEFAULT '0',
  PRIMARY KEY (player_id,skin_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for player_shugo_sweep
-- ----------------------------
CREATE TABLE `player_shugo_sweep` (
  `player_id` int(11) NOT NULL,
  `free_dice` int(10) NOT NULL DEFAULT '0',
  `sweep_step` int(10) NOT NULL DEFAULT '0',
  `board_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



ALTER TABLE `player_events_window`
MODIFY COLUMN `elapsed`  double(11,0) NOT NULL DEFAULT 0 AFTER `last_stamp`,
ADD COLUMN `reward_recived_count`  int(11) NOT NULL DEFAULT 0 AFTER `elapsed`;





ALTER TABLE `player_events_window`
MODIFY COLUMN `elapsed`  int(11) NOT NULL DEFAULT 0 AFTER `last_stamp`;










