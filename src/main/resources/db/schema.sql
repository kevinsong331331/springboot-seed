SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `permission_name` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `department`
-- ----------------------------
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `duty` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `auth_type` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(50) DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `union_id` varchar(50) DEFAULT NULL,
  `session_key` varchar(50) DEFAULT '',
  `nickName` varchar(100) DEFAULT '',
  `gender` smallint NOT NULL DEFAULT 0,
  `language` varchar(50) DEFAULT '',
  `city` varchar(100) DEFAULT '',
  `province` varchar(100) DEFAULT '',
  `country` varchar(100) DEFAULT '',
  `avatar_url` varchar(200) DEFAULT '',
  `sms_code` varchar(200) DEFAULT '',
  `sms_time` DATETIME DEFAULT NULL,
  `money` DECIMAL(6,2) DEFAULT 0,
  `points` smallint DEFAULT 0,
  `vip_level` smallint DEFAULT 0,
  PRIMARY KEY (`id`)
);
ALTER TABLE `user` ADD UNIQUE (`username`);
ALTER TABLE `user` ADD UNIQUE (`email`);
ALTER TABLE `user` ADD UNIQUE (`phone`);
ALTER TABLE `user` ADD UNIQUE (`open_id`);
ALTER TABLE `user` ADD UNIQUE (`union_id`);

-- ----------------------------
--  Table structure for `car`
-- ----------------------------
CREATE TABLE `car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `car_number` varchar(100) DEFAULT '',
  `car_type` varchar(100) DEFAULT '',
  `owner` varchar(100) DEFAULT '',
  `license_picture` varchar(100) DEFAULT '',
  `vin_code` varchar(100) DEFAULT '',
  `engine_code` varchar(100) DEFAULT '',
  `register_date` DATETIME DEFAULT NULL,
  `issue_date` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `car_fee`
-- ----------------------------
CREATE TABLE `car_fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `park_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT '',
  `code` INT DEFAULT 0,
  `in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `out_time` DATETIME DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `payment_time` DATETIME DEFAULT NULL,
  `payment_amount` DECIMAL(6,2) DEFAULT 0,
  `payment_mode` varchar(100) DEFAULT '',
  `in_operation_type` INT DEFAULT 0,
  `in_operator` varchar(200) DEFAULT '',
  `in_image_url` varchar(200) DEFAULT '',
  `in_gate` varchar(100) DEFAULT '',
  `in_comment` varchar(100) DEFAULT '',
  `out_operation_type` INT DEFAULT 0,
  `out_operator` varchar(200) DEFAULT '',
  `out_image_url` varchar(200) DEFAULT '',
  `out_gate` varchar(100) DEFAULT '',
  `out_comment` varchar(100) DEFAULT '',
  `cash` DECIMAL(6,2) DEFAULT 0,
  `comment` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `park`
-- ----------------------------
CREATE TABLE `park` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `address` varchar(200) DEFAULT '',
  `province` varchar(200) DEFAULT '',
  `city` varchar(200) DEFAULT '',
  `longitude` varchar(100) DEFAULT '',
  `latitude` varchar(100) DEFAULT '',
  `user_id` bigint(20) NOT NULL,
  `fee_id` bigint(20) NOT NULL,
  `parent` bigint(20) NULL,
  `gates` varchar(200) DEFAULT '',
  `count` smallint DEFAULT 0,
  `remaining_count` smallint DEFAULT 0,
  `is_member_only` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `park_member`
-- ----------------------------
CREATE TABLE `park_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `park_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT '',
  `user_phone` varchar(50) DEFAULT '',
  `car_number` varchar(50) DEFAULT '',
  `start_date` DATETIME NOT NULL,
  `end_date` DATETIME NOT NULL,
  `payment_amount` DECIMAL(6,2) DEFAULT 0,
  `payment_mode` varchar(100) DEFAULT '',
  `payment_time` DATETIME DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `fee`
-- ----------------------------
CREATE TABLE `fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_free` tinyint(1) NOT NULL DEFAULT 0,
  `parameters` varchar(200) DEFAULT 'per_hour',
  `in_free_minutes` SMALLINT DEFAULT 20,
  `out_free_minutes` SMALLINT DEFAULT 20,
  `per_time` DECIMAL(6,2) DEFAULT 0,
  `per_hour` DECIMAL(6,2) DEFAULT 1,
  `per_month` DECIMAL(6,2) DEFAULT 0,
  `per_year` DECIMAL(6,2) DEFAULT 0,
  `limit_per_time` DECIMAL(6,2) DEFAULT 0,
  `limit_per_day` DECIMAL(6,2) DEFAULT 0,
  `differential_pricing` varchar(100) DEFAULT '',
  `comment` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
);

-- ----------------------------
--  Table structure for `payment`
-- ----------------------------
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(100) DEFAULT '',
  `detail` varchar(200) DEFAULT '',
  `ip` varchar(100) DEFAULT '',
  `bank_type` varchar(100) DEFAULT '',
  `trade_type` varchar(100) DEFAULT '',
  `fee_type` varchar(100) DEFAULT '',
  `out_trade_no` varchar(100) DEFAULT '',
  `transaction_no` varchar(100) DEFAULT '',
  `total_fee` int DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
);

SET FOREIGN_KEY_CHECKS = 1;
