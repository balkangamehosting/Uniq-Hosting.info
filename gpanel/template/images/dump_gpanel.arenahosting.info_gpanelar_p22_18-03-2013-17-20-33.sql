# MySQL Database Dump - GNY.Shell 
#
# Host settings: 
# MySQL version: (5.1.68-cll) running on 5.9.50.88 (gpanel.arenahosting.info) 
# Date: 18.03.2013 17:20:33 
# Database: "gpanelar_p22" 
#--------------------------------------------------------- 
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `napomena` text CHARACTER SET utf8 NOT NULL,
  `lastactivity` text NOT NULL,
  `boja` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO `admin`(`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES ('1', 'Boris', 'Kospic', 'Boris', '3456dcbn', 'info@arenahosting.info', 'admin', 'test', '1363623486', 'red');
INSERT INTO `admin`(`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES ('22', 'Boban', 'Stojanovic', 'GuerriNI^^ ', 'boban2308', 'guerrini2308@hotmail.com', 'support', 'Bob[@]N GuerriNI^^ :)', '1363607824', '#0A93CC');
INSERT INTO `admin`(`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES ('23', 'Aleksandar', 'Jovanovic', 'demon', 'demonarena89', 'demon@sd-hq.info', 'admin', 'e', '1363622778', 'red');
INSERT INTO `admin`(`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES ('24', 'Zemir', 'Cama', 'Dlu', 'televizor', 'dlu@sd-hq.info', 'support', 'Napomena neka :)
', '1363614988', '#0A93CC');
INSERT INTO `admin`(`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES ('25', 'Demir', 'Izdirovic', 'MorpheuS ^^', 'morphpro123', 'morphe_uS@live.com', 'admin', 'Dobrodosao na arena hosting! :)', '1363620512', 'red');
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `razlog` text NOT NULL,
  `vreme` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `bans`(`id`, `ip`, `razlog`, `vreme`) VALUES ('6', '178.222.207.146', 'test morph :D', '18.03.2013 - 02:03:26');
INSERT INTO `bans`(`id`, `ip`, `razlog`, `vreme`) VALUES ('7', '144.76.46.198', 'Vredjanje supporta', '18.03.2013 - 02:03:37');
DROP TABLE IF EXISTS `box`;
CREATE TABLE `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `ip` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `ftp_port` int(11) NOT NULL,
  `ssh_port` int(11) NOT NULL,
  `location` text CHARACTER SET utf8 NOT NULL,
  `slobodan` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `box`(`id`, `name`, `ip`, `username`, `password`, `ftp_port`, `ssh_port`, `location`, `slobodan`) VALUES ('3', 'Game.ArenaHosting', '144.76.46.198', 'root', 'WjZKZzY4SkdBNjU=', '21', '5924', 'Njema?ka', '');
DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE `chat_messages` (
  `Text` text,
  `Autor` text NOT NULL,
  `Datum` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5745 DEFAULT CHARSET=utf8;

INSERT INTO `chat_messages`(`Text`, `Autor`, `Datum`, `ID`) VALUES ('Borise', '<span style=\"color: red;\">Aleksandar Jovanovic</span>', '18 Mar 2013, 17:6:18', '5742');
INSERT INTO `chat_messages`(`Text`, `Autor`, `Datum`, `ID`) VALUES ('Otvorio sam nov tiket <a href=admin.php?page=tiket&akcija=pregled&id=667>Server</a>', '<span>Adnan Kovacevic</span>', '18 Mar 2013, 17:16:11', '5743');
INSERT INTO `chat_messages`(`Text`, `Autor`, `Datum`, `ID`) VALUES ('Odgovorio sam na tiket ID <a href=admin.php?page=tiket&akcija=pregled&id=667>#667</a>', '<span>Adnan Kovacevic</span>', '18 Mar 2013, 17:19:5', '5744');
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `lastactivity` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('1', 'Demo123', 'Klient123', 'demo@arenahosting.info', 'd41d8cd98f00b204e9800998ecf8427e', '1363614475');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('4', 'Regicide', 'Gaming', 'sampovac@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1363532045');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('8', 'Boban', 'Stojanovic', 'guerrini2308@hotmail.com', 'e9f6976d17cf33ccc0a613eb6288edfd', '1363607751');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('11', 'Nikola', 'Srdanovic', 'nikolans2@live.com', '3b76b876b927ed775f8f0ecdb9dd16a0', '1363466875');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('33', 'Aleksandar', 'Anicic', 'botaqua123@gmail.com', 'f5d46adf26be21c8a70c5a4ec391b792', '1363549985');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('34', 'Rahic', 'Elmir', 'rahicelmir@hotmail.com', 'f6a240dc7bb4752a8f9d6fd710ab7d3f', '1363519864');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('30', 'Osman', 'Malagic', 'malagic49@yahoo.com', '06ffbbee274731fc2c0decadaeb1b99a', '1363524294');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('31', 'Milan', 'Milanovic', 'lan_kw_95@live.com', 'c30ac88409cb015104dd8c547d059d59', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('35', 'Uros', 'Zivaljevic', 'zivaljevicu@gmail.com', '3a45a924255a8d38bb74b67e338f9e01', '1363519497');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('36', 'Nikola', 'Bozic', 'nikolabozicmica@gmail.com', 'fa8e41a7585b7e6ee15068518fbf6b27', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('37', 'Mehmed', 'Spahic', 'ajlica_spahic@hotmail.com', '81565dc244e632a174316ea1b75170fa', '1363609127');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('38', 'Milan', 'Besker', 'hackermilan61@gmail.com', '85c0db08e43fd4450c0f9a5c8e1699a6', '1363466888');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('39', 'Nemanja', 'Nikolic', 'zeljko_bukovo@live.com', '964f550b9b1be5e72c331630cb7cafcb', '1363623398');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('40', 'Stefan', 'Ra?enovi?', 'bystefke@gmail.com', 'a701dcfaa228c19162fd1147a29564d9', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('41', 'Ognjen', 'Pesic', 'gio.pesic@gmail.com', '4b9968469ca0050832edc157fafa016f', '1363618826');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('43', 'Nikola ', 'Simic', 'gencicnikola@hotmail.com ', '4297f44b13955235245b2497399d7a93', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('44', 'Ivan', 'Zebic', 'ivanandjelkov@gmail.com', '04fa73717e8890e8b67726511ecf37c4', '1363615683');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('45', 'Fler', 'Fler', 'crissfler@gmail.com', '74fd451545d64eaec7700685b60c85c1', '1363621745');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('46', 'Zemir', 'Cama', 'dlu@sd-hq.info', 'e30219e75ae169b7f4fd7013cda70e04', '1363524096');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('47', 'Demir', 'Izdirovic', 'morphe_uS@live.com', 'cbc9f4a95cf05c8ab0792b8e65c511e9', '1363535957');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('50', 'Filip', 'Borisavljevic', 'filipovicc@ymail.com', '1bff30f094d1c71eba18ec7f048864df', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('59', 'Nikola', 'Zdravkovic', 'zivkovicnikola30@yahoo.com', 'fc767ed4ebd1f993bb61c786e380aeaa', '1363620312');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('51', 'Aleksandar', 'Jovanovic', 'dzokej89@hotmail.com', '055a292f6789ac5fd3934dafd5f0e174', '1363622744');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('52', 'Marko', 'Kotrosan', 'kotrosanm@gmail.com', 'd5cb3484d6e5d743c6e02e868a986973', '1363547862');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('62', 'Filip', 'Djordjevic', 'fixedjony@yahoo.com', '8be8ddb075ef0c895941c9275a5d6afe', '1363623555');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('60', 'Mirsad', 'Hanic', 'mirsad_wonta@hotmail.com', '96b9c75a37a87f34ea0297d566eb9da1', '1363541482');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('61', 'Bla bla', 'Tra la', 'hns1312server@gmail.com', '3441511e0685ddecc3eec91ae5bfdec1', '1363598174');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('56', 'Ramo', 'Mujagic', 'ramo_fl@hotmail.com', 'e52a99ddb84755e521b7e9416354f5cf', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('58', 'Adnan', 'Kovacevic', 'adnankovacevic539@yahoo.com ', '98900160de0295c5ccab61f12a5de5e4', '1363623632');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('63', 'Fuad', 'Mekic', 'dofu_mekic@hotmail.com', '50713a3b0cc08da85ad8027431e578b6', '');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('64', 'Ivan', 'Matic', 'ivancapelletti240@gmail.com', '5d29b9185b1a4eb5b559a61373555225', '1363620680');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('65', 'Tarik', 'Jasarevic', 'mux_325@hotmail.com', 'ba269c1adda71c67339cc1f3cc12a88e', '1363605033');
INSERT INTO `clients`(`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES ('66', 'Nikola', 'Glisic', 'nikola.glisic27@gmail.com', 'fe341352c143dc16d212c73c8ba0ef91', '1363622750');
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `ip`(`id`, `box_id`, `ip`) VALUES ('3', '3', '144.76.46.198');
DROP TABLE IF EXISTS `logovi`;
CREATE TABLE `logovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `boxid` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vreme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=837 DEFAULT CHARSET=latin1;

INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('812', '1', '59', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=59>Novi server</a>', 'Boris Kospic', '188.124.194.206', '16.03.2013 19:11');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('813', '1', '59', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=59>Novi server</a>', 'Boris Kospic', '188.124.194.206', '16.03.2013 19:11');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('814', '1', '121', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=121>Zombie Test Server.</a>', 'Boris Kospic', '188.124.194.206', '16.03.2013 19:12');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('815', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>testic</a>', 'Boris Kospic', '188.124.194.206', '16.03.2013 19:15');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('816', '1', '530', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=530>testic</a>', 'Boris Kospic', '188.124.194.206', '16.03.2013 19:19');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('817', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>sumadija cw</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 12:34');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('818', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>samp</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 13:30');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('819', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>samp</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 13:31');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('820', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>CS Server</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 13:31');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('821', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>CS Server</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 13:44');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('822', '1', '58', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=58>Ms Wizard Deathrun for Life</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 14:00');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('823', '1', '174', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=174>Šumadija PUB CW</a>', 'Boban Stojadinovic', '93.87.198.76', '17.03.2013 14:16');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('824', '1', '177', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=177>CS Server</a>', 'Zemir Cama', '109.175.76.161', '17.03.2013 14:25');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('825', '1', '157', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=157>-ZoMbIe PlAgUe-Zm InFeCtEd-</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 17:51');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('826', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>-ZoMbIe PlAgUe-Zm InFeCtEd-</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 17:54');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('827', '1', '172', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=172>Serbian Deluxe Zombie</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 18:36');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('828', '1', '172', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=172>Serbian Deluxe Zombie</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 18:41');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('829', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Serbian Deluxe Zombie</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 18:42');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('830', '1', '180', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=180>Serbian Deluxe Zombie</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 18:43');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('831', '1', '0', '', 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Serbian Deluxe Zombie</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 18:43');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('832', '1', '60', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=60> Balkan Killers DeathRun 18+</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 19:45');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('833', '1', '68', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=68>-=ExoDuS-G@M1NG=-</a>', 'Aleksandar Jovanovic', '94.228.238.105', '17.03.2013 20:40');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('834', '1', '58', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=58>Ms Wizard Deathrun for Life</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 21:48');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('835', '1', '59', '', 'Admin je izbrisao server: <a href=admin.php?page=serveri&akcija=uredi&id=59>Novi server</a>', 'Boris Kospic', '188.124.194.206', '17.03.2013 21:49');
INSERT INTO `logovi`(`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES ('836', '1', '178', '', 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=178>CS Server</a>', 'Zemir Cama', '31.176.243.47', '18.03.2013 11:37');
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od` varchar(30) NOT NULL,
  `za` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `server` varchar(30) NOT NULL,
  `server_id` varchar(30) NOT NULL,
  `vreme` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('6', '47', '1', 'demo@arenahosting.info', 'MORPH Public', '122', '03.03.2013 - 04:03:32');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('7', '1', '47', 'morphe_uS@live.com', 'MORPH Public', '122', '03.03.2013 - 04:03:37');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('8', '47', '3', 'info@arenahosting.info', 'MORPH Public', '122', '03.03.2013 - 06:03:22');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('9', '3', '47', 'morphe_uS@live.com', 'MORPH Public', '122', '03.03.2013 - 06:03:27');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('10', '33', '33', 'botaqua123@gmail.com', '-=ExoDuS-G@M1NG=-', '68', '04.03.2013 - 09:03:37');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('11', '1', '47', 'morphe_uS@live.com', 'Arena Hosting ', '127', '04.03.2013 - 05:03:03');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('14', '1', '1', 'demo@arenahosting.info', 'Arena Hosting ', '127', '04.03.2013 - 08:03:37');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('13', '47', '1', 'demo@arenahosting.info', 'Arena Hosting ', '127', '04.03.2013 - 05:03:04');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('15', '51', '54', 'demon@sd-hq.info', 'Serbian Deluxe Zombie', '138', '08.03.2013 - 12:03:35');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('16', '54', '1', 'demo@arenahosting.info', 'Capture the Flag', '151', '08.03.2013 - 02:03:36');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('17', '33', '33', 'botaqua123@gmail.com', '-=ExoDuS-G@M1NG=-', '68', '09.03.2013 - 09:03:50');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('18', '3', '3', 'info@arenahosting.info', 'zombie', '161', '11.03.2013 - 10:03:14');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('19', '3', '54', 'demon@sd-hq.info', 'zombie', '161', '11.03.2013 - 10:03:15');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('20', '1', '1', 'demo@arenahosting.info', 'Arena Hosting ', '127', '12.03.2013 - 12:03:13');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('21', '54', '51', 'dzokej89@hotmail.com', 'Serbian Deluxe Zombie', '138', '13.03.2013 - 05:03:54');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('22', '1', '51', 'dzokej89@hotmail.com', 'Zombie Test', '163', '13.03.2013 - 06:03:50');
INSERT INTO `logs`(`id`, `od`, `za`, `email`, `server`, `server_id`, `vreme`) VALUES ('23', '1', '51', 'dzokej89@hotmail.com', 'Zombie Test', '165', '13.03.2013 - 07:03:08');
DROP TABLE IF EXISTS `modovi`;
CREATE TABLE `modovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `putanja` text CHARACTER SET utf8 NOT NULL,
  `ime` text CHARACTER SET utf8 NOT NULL,
  `igra` text CHARACTER SET utf8 NOT NULL,
  `komanda` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('1', '/home/modovi/gamefiles/cs16/public', 'Public', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('2', '/home/modovi/gamefiles/cs16/codmw3', 'COD:MW3', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('3', '/home/modovi/cs-zm', 'Zombie', 'CS', './hlds_run -game cstrike +ip {ip} +port {port} +maxplayers {slots} +sys_ticrate {cfg1} -pingboost {cfg2} +map {cfg3} +servercfgfile {cfg4}', '1');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('4', '/home/modovi/gamefiles/cs16/cw', 'CW', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('5', '/home/modovi/gamefiles/cs16/gg', 'GunGame', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('6', '/home/modovi/gamefiles/cs16/dm', 'DeathMatch', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('7', '/home/modovi/samp0.3x/samp03', 'SA:MP (default)', 'SA:MP', './samp03svr', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('8', '/home/ts3/teamspeak3-server_linux-x86', 'TeamSpeak3', 'TeamSpeak3', './ts3server_startscript.sh', '1');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('9', '/home/modovi/gamefiles/cs16/jb', 'JailBreak', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('10', '/home/modovi/gamefiles/cs16/surf', 'Surf', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', '1');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('11', '/home/modovi/gamefiles/cs16/dr', 'DeathRun', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('12', '/home/modovi/gamefiles/cs16/hns', 'HideNSeek', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '1');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('13', '/home/modovi/gamefiles/cs16/zombi', 'Zombie 5.0.5', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('14', '/home/modovi/gamefiles/cs16/kreedz', 'Kreedz', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('15', '/home/modovi/gamefiles/cs16/knife', 'Knife', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('16', '/home/gamefiles/cs16/public', 'milan milanovic', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '1');
INSERT INTO `modovi`(`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`) VALUES ('17', '/home/modovi/gamefiles/cs16/codmw4', 'COD:MW4', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', '0');
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `news`(`id`, `title`, `date`, `text`, `hidden`) VALUES ('10', 'Restart ', '2013-02-27', 'Odradili smo Restart masine, tako ako nekom ne radi server neka ga samo restartuje.Hvala na Razumevanju.<p>            </p>', '0');
INSERT INTO `news`(`id`, `title`, `date`, `text`, `hidden`) VALUES ('11', 'Modovi', '2013-03-03', 'Posotvani korisnici,<p>            </p><div><br></div><div>Obavjestavamo vas da su modovi od servera promjenjeni,tako da se apeluje na vlasnike: public,cod,gg i cw servera da obavezno urade reinstall (Stopiraju server i promjene mod na isti koji koristite)</div><div>Podatke popud plugina ili admina mozete sacuvati na vase racunalo i ponovo ubaciti.</div><div>Takodje korisnici koji su koristili druge modove a imali su problem-a,mogu da urade reinstall.<br></div><div><br></div><div>Hvala na razumjevanju.</div>', '0');
INSERT INTO `news`(`id`, `title`, `date`, `text`, `hidden`) VALUES ('12', 'GameTracker.rs', '2013-03-03', 'Postovani,&nbsp;<div><br></div><div>Obavestavamo vas da je problem sa GameTracker.rs resen, sada mozete dodavati vase servere.&nbsp;<p>            </p>
            </div>
            
            ', '0');
INSERT INTO `news`(`id`, `title`, `date`, `text`, `hidden`) VALUES ('13', 'Transfer servera', '2013-03-03', '<p>Postovani korisnici,&nbsp;</p><p><br></p><div><div>Obavestavamo vas da je odradjena nova funkcija na gamepanelu transfer servera.Nalazi se kada udjete na profil servera na desnoj strani ispod \"Promeni Mod\" slike.Pripazite malo kome saljete vas server zato jer kada jednom prebacite server administracija nece ulaziti u to da li je doslo do neke prevare ili ne.</div><div><br></div><div>&nbsp;Hvala<br><div>
            
            
            </div></div></div>
            <p></p>
            
            ', '0');
INSERT INTO `news`(`id`, `title`, `date`, `text`, `hidden`) VALUES ('17', 'Promjena cjena', '2013-03-13', 'Postovani korisnici,<p></p><div><br></div><div>Obavjestavamo vas da su cjene server-a promjenjene iz razloga da bi serveri mogli biti dodavani na gametracker.rs,</div><div>Svi stari klienti servere placaju po starim cjenam-a (32 slota ostaje po 5€ )</div><p>            </p>', '0');
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `online` varchar(2) DEFAULT NULL,
  `poruka` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207724');
INSERT INTO `online`(`online`, `poruka`) VALUES ('Da', 'Test');
INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207727');
INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207858');
INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207866');
INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207877');
INSERT INTO `online`(`online`, `poruka`) VALUES ('fi', '1347207953');
DROP TABLE IF EXISTS `serveri`;
CREATE TABLE `serveri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `mod` text COLLATE latin1_general_ci NOT NULL,
  `map` text CHARACTER SET utf8 NOT NULL,
  `port` text COLLATE latin1_general_ci NOT NULL,
  `fps` int(11) NOT NULL DEFAULT '300',
  `slotovi` int(11) NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `istice` date NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `startovan` int(11) NOT NULL DEFAULT '0',
  `free` text COLLATE latin1_general_ci,
  `uplatnica` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('76', '39', '3', '3', 'SSFGaming', '1', 'de_dust2', '27036', '300', '14', 'srv_39_1', 'kWTB3mMt', '2013-03-21', 'Aktivan', '1', '0', 'gfdg');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('75', '38', '3', '3', 'Cudotvorci PUB', '2', 'de_dust2', '27035', '300', '32', 'srv_38_1', 'pJqPDxKG', '2013-03-20', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('73', '36', '3', '3', 'iMMunized | Clan War', '4', 'de_dust2', '27032', '300', '12', 'srv_36_1', 'BRPnyrJj', '2013-03-15', 'Aktivan', '0', '0', 'fgfd');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('72', '35', '3', '3', 'Jagodina Public', '1', 'de_dust2', '27031', '300', '32', 'srv_35_1', 'nZHk4qrw', '2013-03-15', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('74', '37', '3', '3', 'ToloviciGaming|Extreme', '1', 'de_dust2', '27033', '300', '24', 'srv_37_1', 'FVQZWw3D', '2013-03-19', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('68', '33', '3', '3', '-=ExoDuS-G@M1NG=-', '15', 'de_dust2', '27025', '300', '14', 'srv_33_1', 'qM6FWhK9', '2013-03-09', 'Suspendovan', '0', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('168', '61', '3', '3', 'Maximum Hns', '1', 'de_dust2', '27052', '300', '20', 'srv_61_1', '8mK7y43H', '2013-04-14', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('78', '40', '3', '3', 'Z0MbIe HuNtEr\'S[VIP+Imunitet]', '1', 'de_dust2', '27037', '300', '24', 'srv_40_1', 'zJPfGcdN', '2013-03-22', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('140', '52', '3', '3', 'Vojvodina [Public]', '13', 'zm_westwood', '27045', '300', '31', 'srv_52_1', 'p8hWRPnm', '2013-04-04', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('166', '60', '3', '3', 'SA:MP by arenahosting.info', '7', '', '7707', '300', '50', 'srv_60_1', 'P3TvqXwm', '2013-04-10', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('70', '34', '3', '3', 'sam cu', '1', 'de_dust2', '27028', '300', '30', 'srv_34_1', 'bmCJGVZ4', '2013-03-15', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('121', '46', '3', '3', 'Zombie Test Server.', '13', 'de_dust2', '2740', '300', '4', 'srv_46_1', 'HTwKR6mC', '2019-03-30', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('122', '47', '3', '3', 'MORPH Public', '1', 'de_dust2', '27129', '300', '32', 'srv_47_1', 'PgkwhN4Y', '2013-04-30', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('105', '43', '3', '3', 'Svilajnac Public', '1', 'de_dust2', '27038', '300', '22', 'srv_43_1', 'r6TjwbJ2', '2013-03-27', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('106', '44', '3', '3', 'PaKlEnI IgRaCi', '13', 'de_dust2', '27039', '300', '32', 'srv_44_1', 'fZmbTj4K', '2013-03-27', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('114', '45', '3', '3', 'Free Fler', '1', 'de_dust2', '27056', '300', '31', 'srv_45_1', 'Q4qHkBfg', '2014-12-31', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('123', '50', '3', '3', 'server', '1', 'de_dust2', '27040', '300', '22', 'srv_50_1', '3gtnZpjx', '2013-03-26', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('137', '51', '3', '3', 'Serbian Deluxe Public', '1', 'de_dust2', '11111', '300', '31', 'srv_51_1', 'Kh2RQFDz', '2015-02-28', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('124', '41', '3', '3', 'D2K; DeathMatch', '6', 'de_dust2', '27041', '300', '24', 'srv_41_1', 'nyQ9YGMx', '2013-04-03', 'Aktivan', '0', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('125', '41', '3', '3', 'D2K; ClanWar', '4', 'de_dust2', '27042', '300', '12', 'srv_41_2', '3w7Vxtjz', '2013-04-03', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('126', '4', '3', '3', 'Arena Hosting ', '7', 'de_dust2', '7771', '300', '50', 'srv_4_1', 'wQjXBLtr', '2015-03-30', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('181', '62', '3', '3', 'Serbian Deluxe Zombie', '1', 'de_dust2', '22222', '300', '24', 'srv_62_1', 'TKQZ7yDL', '2015-11-30', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('164', '1', '3', '3', 'Arena Hosting Test Server', '1', 'de_dust2', '27106', '300', '5', 'srv_1_1', 'ybPmRkLJ', '2017-01-31', 'Aktivan', '0', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('170', '8', '3', '3', 'Šumadija Public', '1', 'de_dust2_long2', '27022', '300', '32', 'srv_8_1', 'dMnfcygq', '2015-08-31', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('153', '56', '3', '3', 'X-Evolution CS', '1', 'de_dust2', '27046', '300', '18', 'srv_56_1', 'PMyYdkZq', '2013-04-08', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('159', '46', '3', '3', 'fds', '11', 'de_dust2', '27050', '300', '6', 'srv_46_2', 'Yv39kJfj', '2013-03-13', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('162', '59', '3', '3', 'Public by ArenaHosting.info', '1', 'de_dust2', '27049', '300', '12', 'srv_59_1', 'mchXdp48', '2013-04-12', 'Aktivan', '1', '0', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('179', '58', '3', '3', '-ZoMbIe PlAgUe-Zm InFeCtEd-', '13', 'de_dust2', '27047', '300', '28', 'srv_58_1', 'JMN9L64r', '2013-04-09', 'Aktivan', '1', '', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('174', '8', '3', '3', 'Šumadija PUB CW', '4', 'de_dust2', '27053', '300', '12', 'srv_8_2', 'NGhPVrBF', '2015-03-30', 'Aktivan', '1', 'Da', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('175', '63', '3', '3', 'samp', '7', 'Los Santos', '7772', '300', '50', 'srv_63_1', 't37xPmCR', '2013-04-07', 'Aktivan', '0', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('176', '64', '3', '3', 'samp', '7', 'Los Santos', '7773', '300', '50', 'srv_64_1', '4YNVtzZK', '2013-04-07', 'Aktivan', '1', '1', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('177', '65', '3', '3', 'CS Server', '6', 'de_dust2', '27054', '300', '30', 'srv_65_1', '24NQMLvt', '2013-04-07', 'Aktivan', '1', 'Da', '');
INSERT INTO `serveri`(`id`, `user_id`, `box_id`, `ip_id`, `name`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES ('178', '66', '3', '3', 'CS Server', '1', 'de_dust2', '27055', '300', '20', 'srv_66_1', 't7ZK24FM', '2013-04-07', 'Aktivan', '1', 'Da', '');
DROP TABLE IF EXISTS `tiketi`;
CREATE TABLE `tiketi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `datum` text CHARACTER SET utf8 NOT NULL,
  `naslov` text CHARACTER SET utf8 NOT NULL,
  `zatvoren` int(11) NOT NULL DEFAULT '0',
  `cekanje` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;

INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('140', '52', '22', 'Zatvoren', '1361784897', 'Uplata.', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('5', '8', '11', 'Zatvoren', '1353943669', 'Pozdrav', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('4', '8', '11', 'Zatvoren', '1353883365', 'tiket', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('6', '8', '11', 'Zatvoren', '1353949793', 'zzz', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('7', '0', '2', 'Zatvoren', '1353954791', 'TEST', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('8', '8', '11', 'Zatvoren', '1353964825', 'zelena slova', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('9', '12', '13', 'Zatvoren', '1353965625', 'ime servera', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('10', '12', '13', 'Zatvoren', '1353969651', 'amxmodx', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('11', '6', '3', 'Zatvoren', '1354016321', 'Novi tiket', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('12', '18', '16', 'Zatvoren', '1354304612', 'Kako da ubacim RP gamemode', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('13', '18', '16', 'Zatvoren', '1354304668', 'Bag i mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('14', '15', '14', 'Zatvoren', '1354308349', 'FTP', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('15', '16', '15', 'Zatvoren', '1354310436', 'Slota', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('16', '19', '14', 'Zatvoren', '1354314561', 'FastDl', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('17', '19', '14', 'Zatvoren', '1354314643', 'FastDl', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('18', '18', '16', 'Zatvoren', '1354314823', 'Server gamemod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('19', '19', '14', 'Zatvoren', '1354351882', 'Klase', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('20', '16', '15', 'Zatvoren', '1354352302', 'Plugin I lAg', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('21', '16', '15', 'Zatvoren', '1354355967', 'LAG !', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('22', '18', '16', 'Zatvoren', '1354370484', 'Ubacio sam gamemod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('23', '19', '14', 'Zatvoren', '1354374986', 'adminchat', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('24', '12', '13', 'Zatvoren', '1354390659', 'ct puske', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('25', '18', '16', 'Zatvoren', '1354392952', 'Pomagaj te', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('26', '16', '15', 'Zatvoren', '1354441774', 'Premium', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('27', '22', '13', 'Zatvoren', '1354466401', 'restartovanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('28', '22', '13', 'Zatvoren', '1354471728', 'restartovanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('29', '23', '15', 'Zatvoren', '1354472155', 'Mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('30', '23', '15', 'Zatvoren', '1354526300', 'nece', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('31', '14', '13', 'Zatvoren', '1354720722', 'Cw', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('32', '26', '13', 'Zatvoren', '1354722922', 'Kape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('38', '29', '18', 'Zatvoren', '1354828348', 'pomoc', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('39', '30', '18', 'Zatvoren', '1354887272', 'pomoc ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('40', '28', '13', 'Zatvoren', '1354895898', 'snow war', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('41', '28', '13', 'Zatvoren', '1354905110', 'snowball war', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('42', '18', '16', 'Zatvoren', '1354975370', 'Bag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('43', '18', '16', 'Zatvoren', '1354990481', 'bag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('44', '26', '13', 'Zatvoren', '1354991221', 'lag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('45', '30', '18', 'Zatvoren', '1355235360', 'pitanje ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('46', '6', '3', 'Zatvoren', '1355242426', 'Borise Pogledaj!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('47', '23', '15', 'Zatvoren', '1355324017', 'Gasi se !', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('48', '31', '16', 'Zatvoren', '1355407220', 'bag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('49', '32', '19', 'Zatvoren', '1355407714', 'za server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('50', '26', '13', 'Zatvoren', '1355421281', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('51', '26', '13', 'Zatvoren', '1355424120', 'ne radi', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('52', '28', '13', 'Zatvoren', '1355424714', 'Snowbal mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('53', '32', '19', 'Zatvoren', '1355426335', 'plaugin', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('54', '32', '19', 'Zatvoren', '1355426418', 'za plaugin', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('55', '26', '13', 'Zatvoren', '1355433085', 'Lag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('56', '26', '13', 'Zatvoren', '1355433087', 'Lag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('57', '31', '16', 'Zatvoren', '1355603143', 'Bag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('60', '28', '13', 'Zatvoren', '1355690357', 'mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('59', '26', '13', 'Zatvoren', '1355687102', 'lag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('61', '34', '3', 'Zatvoren', '1355787487', 'test', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('62', '23', '15', 'Zatvoren', '1356000944', 'Lag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('63', '6', '3', 'Zatvoren', '1356019096', 'Pomoc!!! ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('64', '28', '13', 'Zatvoren', '1356087721', 'mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('65', '26', '13', 'Zatvoren', '1356111285', 'Novi serwer', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('66', '31', '16', 'Zatvoren', '1356113933', 'Novi tiket', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('67', '31', '16', 'Zatvoren', '1356113999', 'Novi server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('68', '23', '15', 'Zatvoren', '1356169845', 'Nov Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('69', '26', '13', 'Zatvoren', '1356208211', 'server ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('70', '34', '3', 'Zatvoren', '1356270599', 'e', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('71', '9', '8', 'Zatvoren', '1356449740', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('72', '23', '15', 'Zatvoren', '1356523054', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('73', '37', '24', 'Zatvoren', '1356551196', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('74', '32', '19', 'Zatvoren', '1356698731', 'ne radi mi server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('75', '0', '22', 'Zatvoren', '1356962861', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('76', '37', '24', 'Zatvoren', '1357085454', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('77', '11', '4', 'Zatvoren', '1358093446', ':S', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('78', '37', '24', 'Zatvoren', '1358120057', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('79', '38', '22', 'Zatvoren', '1358940429', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('80', '38', '22', 'Zatvoren', '1358941651', 'Nece server!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('81', '37', '24', 'Zatvoren', '1360069997', 'Novi Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('82', '49', '29', 'Zatvoren', '1360185962', 'HITNOOO', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('83', '48', '28', 'Zatvoren', '1360187486', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('84', '60', '31', 'Zatvoren', '1360269952', 'Promena Pocetne mape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('85', '58', '30', 'Zatvoren', '1360272143', 'Problem oko ubacivanja mapa', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('86', '58', '30', 'Zatvoren', '1360273559', 'Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('87', '58', '30', 'Zatvoren', '1360274551', 'Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('88', '58', '30', 'Zatvoren', '1360276858', 'za Borisa', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('89', '58', '30', 'Zatvoren', '1360279093', 'JohnsoN.', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('90', '58', '30', 'Zatvoren', '1360330198', 'Mod deathrun', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('91', '58', '30', 'Zatvoren', '1360336206', 'Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('92', '58', '30', 'Zatvoren', '1360346899', 'Pitanje za borisa', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('93', '58', '30', 'Zatvoren', '1360357729', 'Za borisa nek procita', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('94', '58', '30', 'Zatvoren', '1360361455', 'Deathrun mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('95', '58', '30', 'Zatvoren', '1360364749', 'Pitanje za mape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('96', '58', '30', 'Zatvoren', '1360404526', 'Za borisa nek procita', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('97', '52', '22', 'Zatvoren', '1360408923', 'Nece server!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('98', '48', '28', 'Zatvoren', '1360410513', 'plugin vip ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('99', '65', '23', 'Zatvoren', '1360415409', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('100', '48', '28', 'Zatvoren', '1360424165', 'kako da dodam mapu', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('101', '65', '23', 'Zatvoren', '1360425346', 'ime', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('102', '48', '28', 'Zatvoren', '1360441154', 'Mod jailbreak', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('103', '48', '28', 'Zatvoren', '1360443496', 'Jail Break ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('104', '58', '30', 'Zatvoren', '1360444164', 'Problem oko servera', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('105', '48', '28', 'Zatvoren', '1360446791', 'HITNO!!!!!!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('106', '61', '32', 'Zatvoren', '1360483975', 'Modovi', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('107', '58', '30', 'Zatvoren', '1360494073', 'Pomoc oko servera', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('108', '58', '30', 'Zatvoren', '1360506097', 'Pitanje za borisa', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('109', '65', '23', 'Zatvoren', '1360512028', 'mape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('110', '65', '23', 'Zatvoren', '1360512384', 'mape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('111', '58', '30', 'Zatvoren', '1360584798', 'Problem oko servera', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('112', '58', '30', 'Zatvoren', '1360585579', 'Reintsall server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('113', '58', '30', 'Zatvoren', '1360586523', 'reinstall server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('114', '48', '28', 'Zatvoren', '1360601017', 'u vezi game panela', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('115', '52', '22', 'Zatvoren', '1360606291', 'Neradi server!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('116', '60', '31', 'Zatvoren', '1360607726', 'Hitno !!!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('117', '67', '23', 'Zatvoren', '1360926536', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('118', '67', '23', 'Zatvoren', '1360929577', 'server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('119', '48', '28', 'Zatvoren', '1360936253', 'PROBLEM SA G-PANEL', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('120', '54', '15', 'Zatvoren', '1360939461', 'test', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('121', '58', '30', 'Zatvoren', '1360939499', 'Pitanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('122', '58', '30', 'Zatvoren', '1360943250', 'Deathrun mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('123', '58', '30', 'Zatvoren', '1360952832', 'Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('124', '70', '34', 'Zatvoren', '1360954615', 'amx_ss i amx_gag i ungag', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('125', '72', '35', 'Zatvoren', '1361006065', 'amx_say', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('126', '47', '27', 'Zatvoren', '1361019247', 'Redirect kako da stavim?', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('127', '69', '28', 'Zatvoren', '1361097599', 'Kako da ubacim plugin za vipa', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('128', '0', '1', 'Zatvoren', '1361109106', '1', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('129', '47', '27', 'Zatvoren', '1361111931', 'Server pUKO', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('130', '58', '30', 'Zatvoren', '1361131898', 'Problem sa serverom', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('131', '70', '34', 'Zatvoren', '1361291882', 'zm mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('132', '52', '22', 'Zatvoren', '1361294917', 'Pitanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('133', '70', '34', 'Zatvoren', '1361378257', 'ej', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('134', '72', '35', 'Zatvoren', '1361446558', 'Zagrevanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('135', '76', '39', 'Zatvoren', '1361573222', 'Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('136', '72', '35', 'Zatvoren', '1361627515', 'Server šada', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('137', '72', '35', 'Zatvoren', '1361627557', 'Server pada', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('138', '72', '35', 'Zatvoren', '1361696180', 'amx_say', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('139', '0', '1', 'Zatvoren', '1361719874', '<script>alert(\'xss\');</script>', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('141', '78', '40', 'Zatvoren', '1361826314', 'zm extra itemi', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('142', '74', '37', 'Zatvoren', '1361874894', 'kako ce mi igraci boostat ba', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('143', '78', '40', 'Zatvoren', '1361878372', 'zm mape', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('144', '78', '40', 'Zatvoren', '1361888999', 'gtrs ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('146', '0', '1', 'Zatvoren', '1361911547', 'eee', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('145', '78', '40', 'Zatvoren', '1361905207', 'granade status ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('147', '0', '1', 'Zatvoren', '1361911548', 'eee', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('148', '74', '37', 'Zatvoren', '1361913363', 'neznam ubacit pluing', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('149', '69', '28', 'Zatvoren', '1361913756', 'Pitanje', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('150', '78', '40', 'Zatvoren', '1361973236', 'beskonacno metaka', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('151', '105', '43', 'Zatvoren', '1361977781', 'Restartovanje servera', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('152', '105', '43', 'Zatvoren', '1361987932', 'Greska', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('153', '78', '40', 'Zatvoren', '1361988793', 'gtrs ', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('154', '106', '44', 'Zatvoren', '1361993081', 'Pomoc', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('155', '106', '44', 'Zatvoren', '1361996262', 'Pomoc', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('156', '74', '37', 'Zatvoren', '1362009170', 'kako cu ovo rijesit', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('157', '106', '44', 'Zatvoren', '1362066061', 'Pomoc', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('158', '49', '29', 'Zatvoren', '1362080687', 'Hitno', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('159', '78', '40', 'Zatvoren', '1362089179', 'novi extra itemi', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('160', '106', '44', 'Zatvoren', '1362297107', 'Pomoc', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('161', '78', '40', 'Zatvoren', '1362317747', 'extra itemi', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('162', '74', '37', 'Zatvoren', '1362330995', 'kako  ubacit pluing za boost', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('163', '76', '39', 'Zatvoren', '1362332124', 'GT', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('164', '75', '38', 'Zatvoren', '1362342489', 'Nemogu dodati server na gametracker.rs', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('165', '105', '43', 'Zatvoren', '1362342883', 'maps.ini', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('175', '78', '40', 'Zatvoren', '1362428409', 'extra itemi od mog druga', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('171', '125', '41', 'Zatvoren', '1362412663', 'Zasto to?', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('176', '125', '41', 'Zatvoren', '1362434054', 'Sta da radim??', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('177', '106', '44', 'Zatvoren', '1362434101', 'SOKO', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('178', '106', '44', 'Zatvoren', '1362498380', 'pomoc', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('179', '106', '44', 'Zatvoren', '1362508085', 'Pomoc', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('180', '78', '40', 'Zatvoren', '1362515414', 'maps.ini', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('181', '106', '44', 'Zatvoren', '1362518390', 'Pomoc', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('182', '140', '52', 'Zatvoren', '1362519234', 'Cvar', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('183', '106', '44', 'Zatvoren', '1362568981', 'Pomoc', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('184', '52', '22', 'Zatvoren', '1362600683', 'uplatnica', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('185', '78', '40', 'Zatvoren', '1362662821', 'problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('186', '125', '41', 'Zatvoren', '1362673169', 'Moze pomoc ?', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('187', '72', '35', 'Zatvoren', '1362681340', 'server offline', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('188', '72', '35', 'Zatvoren', '1362682093', 'gt.rs', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('189', '78', '40', 'Zatvoren', '1362761210', 'deathrun vip', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('193', '78', '40', 'Zatvoren', '1362775452', 'mape', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('190', '78', '40', 'Zatvoren', '1362765032', 'longjump menu', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('191', '78', '40', 'Zatvoren', '1362765373', 'longjump menu', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('192', '78', '40', 'Zatvoren', '1362765382', 'longjump menu', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('194', '52', '22', 'Zatvoren', '1362781183', 'produzivanje', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('195', '75', '38', 'Zatvoren', '1362820956', 'Nemogu dodati server na gametracker.rs', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('196', '156', '57', 'Zatvoren', '1362837705', 'Pomoc', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('197', '156', '57', 'Zatvoren', '1362840567', 'Neradi Server', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('198', '156', '57', 'Zatvoren', '1362841247', 'Sto nece da ude u FIleZilla', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('199', '156', '57', 'Zatvoren', '1362841716', ':O', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('200', '78', '40', 'Zatvoren', '1362844530', 'pistolj kod ct', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('201', '156', '57', 'Zatvoren', '1362851483', 'Offline', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('202', '156', '57', 'Zatvoren', '1362853024', 'Problem Sa Serverom', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('203', '140', '52', 'Zatvoren', '1362853852', 'Server je srusen', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('204', '0', '57', 'Zatvoren', '1362855470', 'STO MI NEMA SERVERA', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('205', '0', '57', 'Zatvoren', '1362855594', 'NESTO SERVER', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('206', '0', '57', 'Zatvoren', '1362855883', 'Nema servera nikako na gamepanelu', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('207', '157', '58', 'Zatvoren', '1362857502', 'Plugins', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('208', '157', '58', 'Zatvoren', '1362857991', 'Plugins', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('209', '157', '58', 'Zatvoren', '1362858763', 'Ammo paks', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('210', '157', '58', 'Zatvoren', '1362859392', 'Ammo pak', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('211', '72', '35', 'Zatvoren', '1362862560', 'Game', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('212', '157', '58', 'Zatvoren', '1362872935', 'Problem', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('213', '157', '58', 'Zatvoren', '1362874565', 'VIP I EKSTRA ITEME', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('214', '140', '52', 'Zatvoren', '1362903223', 'Plugin problem', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('215', '157', '58', 'Zatvoren', '1362907043', 'Mape', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('216', '157', '58', 'Zatvoren', '1362908023', 'Mape', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('217', '157', '58', 'Zatvoren', '1362910029', 'Svijetlo', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('218', '157', '58', 'Zatvoren', '1362912366', 'Maps', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('219', '72', '35', 'Zatvoren', '1362914047', 'admin chat', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('220', '157', '58', 'Zatvoren', '1362914349', 'Amo pak', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('221', '157', '58', 'Zatvoren', '1362915711', 'Pasvord', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('222', '157', '58', 'Zatvoren', '1362916468', 'Zombie ime', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('223', '157', '58', 'Zatvoren', '1362918138', 'Server', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('224', '140', '52', 'Zatvoren', '1362920517', 'Nema /boost.', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('225', '140', '52', 'Zatvoren', '1362925079', 'VIP skin', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('226', '140', '52', 'Zatvoren', '1362925671', 'VIP skin', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('227', '140', '52', 'Zatvoren', '1362933825', 'VIP plugin problem :)', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('228', '157', '58', 'Zatvoren', '1362935735', 'Fast download', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('229', '74', '37', 'Zatvoren', '1362952092', 'de pomozitee', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('230', '75', '38', 'Zatvoren', '1363014339', 'Server Mi Pada Svakih 10min skoro', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('231', '78', '40', 'Zatvoren', '1363022899', 'deathrun vip i lj menu', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('232', '157', '58', 'Zatvoren', '1363025110', 'Fast download', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('233', '157', '58', 'Zatvoren', '1363027976', 'FTP', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('234', '157', '58', 'Zatvoren', '1363030290', 'ftp', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('235', '114', '45', 'Zatvoren', '1363031142', 'Fler', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('236', '157', '58', 'Zatvoren', '1363034395', 'Opet offline', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('237', '157', '58', 'Zatvoren', '1363035528', 'Plugine', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('238', '157', '58', 'Zatvoren', '1363036374', 'Zm 4.3', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('239', '127', '1', 'Zatvoren', '1363040339', 'Podrska', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('240', '127', '1', 'Zatvoren', '1363044520', 'Add me admine', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('241', '140', '52', 'Zatvoren', '1363089374', 'Problem', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('242', '160', '59', 'Zatvoren', '1363103579', 'problem', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('243', '140', '52', 'Zatvoren', '1363106531', 'Problem', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('244', '157', '58', 'Zatvoren', '1363110079', 'Modele', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('246', '127', '1', 'Zatvoren', '1363174861', 'Test', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('245', '74', '37', 'Zatvoren', '1363126155', 'pomagajte!!!!!', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('247', '122', '47', 'Zatvoren', '1363180929', '123', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('248', '140', '52', 'Zatvoren', '1363188962', 'Server problem', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('249', '78', '40', 'Zatvoren', '1363192232', 'lj menu folderi', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('251', '0', '1', 'Zatvoren', '1363196761', 'server', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('250', '72', '35', 'Zatvoren', '1363193714', 'Admins online', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('252', '74', '37', 'Zatvoren', '1363206466', 'kako ovo', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('253', '157', '58', 'Zatvoren', '1363207672', 'Plugine', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('254', '157', '58', 'Zatvoren', '1363209028', 'Banka', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('255', '157', '58', 'Zatvoren', '1363209434', 'Banka', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('256', '157', '58', 'Zatvoren', '1363214193', 'Vip', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('257', '166', '60', 'Zatvoren', '1363266859', 'Server', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('258', '157', '58', 'Zatvoren', '1363282434', 'Plugine', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('259', '157', '58', 'Zatvoren', '1363294781', 'Transfer ', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('260', '157', '58', 'Zatvoren', '1363296867', 'Anes', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('261', '157', '58', 'Zatvoren', '1363298143', 'Ban', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('262', '157', '58', 'Zatvoren', '1363299063', 'Admin', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('263', '157', '58', 'Zatvoren', '1363306238', 'O serveru', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('264', '168', '61', 'Zatvoren', '1363335770', 'Pomoc !!!', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('265', '140', '52', 'Zatvoren', '1363351832', 'Server problem', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('266', '74', '37', 'Zatvoren', '1363352888', 'pomocc!!!!!', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('267', '168', '61', 'Zatvoren', '1363355416', 'Kako da stavim stats za server', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('268', '140', '52', 'Zatvoren', '1363366617', 'Plugin', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('269', '140', '52', 'Zatvoren', '1363369375', 'Svjetlost', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('270', '168', '61', 'Zatvoren', '1363370156', 'Kako da ubacim jos mapa na server?', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('271', '114', '45', 'Zatvoren', '1363373330', 'Pitanje ?', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('272', '140', '52', 'Zatvoren', '1363422966', 'Modeli se nemogu promjeniti', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('273', '78', '40', 'Zatvoren', '1363424351', 'cod mw4 by arena ', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('274', '140', '52', 'Zatvoren', '1363429819', 'amx_ zeleno', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('275', '140', '52', 'Zatvoren', '1363440610', 'Netko petlja', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('276', '140', '52', 'Zatvoren', '1363443449', 'Pada server', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('281', '157', '58', 'Zatvoren', '1363467060', 'Mape', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('278', '74', '37', 'Zatvoren', '1363454323', 'aloo sta je ovo sa srw', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('279', '140', '52', 'Zatvoren', '1363454919', 'Nestale stvari', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('280', '76', '39', 'Zatvoren', '1363457811', 'Lag', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('282', '157', '58', 'Zatvoren', '1363468115', 'Zomnbie', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('283', '168', '61', 'Zatvoren', '1363468410', 'Lag', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('284', '157', '58', 'Zatvoren', '1363470455', 'Lag', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('287', '157', '58', 'Zatvoren', '1363472521', 'Amo pakove', '1', '1');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('288', '157', '58', 'Zatvoren', '1363482437', 'Banka', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('289', '140', '52', 'Zatvoren', '1363510539', 'Server - vazno.', '1', '0');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('290', '140', '52', 'Zatvoren', '1363522095', 'Armageddon Mod Problem', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('291', '106', '44', 'Odgovoren', '1363522900', 'Bag', '0', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('292', '177', '65', 'Zatvoren', '1363525989', 'Mod', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('293', '177', '65', 'Zatvoren', '1363528103', 'mdbans', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('294', '176', '64', 'Zatvoren', '1363529159', 'Usluga', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('295', '157', '58', 'Zatvoren', '1363530248', 'Server', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('296', '140', '52', 'Zatvoren', '1363536140', 'Flashlight', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('297', '140', '52', 'Zatvoren', '1363541156', '/boost', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('299', '177', '65', 'Zatvoren', '1363554937', 'admin', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('300', '164', '1', 'Zatvoren', '1363555492', 'dadadad', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('301', '178', '66', 'Zatvoren', '1363570449', 'Hitno', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('302', '168', '61', 'Zatvoren', '1363596609', 'Jos jedna usluga u vezi Stats', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('303', '164', '1', 'Zatvoren', '1363607246', 'ma daj bre', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('401', '164', '1', 'Zatvoren', '1363608491', 'Zemire', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('416', '164', '1', 'Zatvoren', '1363609014', 'Zemire ne brisi tiketa bre!!!', '1', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('667', '179', '58', 'Neodgovoren', '1363623371', 'Server', '0', '');
INSERT INTO `tiketi`(`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`) VALUES ('666', '164', '1', 'Zatvoren', '1363609452', 'ne brisi tiketi bre!!', '1', '');
DROP TABLE IF EXISTS `tiketi_odgovori`;
CREATE TABLE `tiketi_odgovori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiket_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `odgovor` text CHARACTER SET utf8 NOT NULL,
  `vrijeme_odgovora` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1521 DEFAULT CHARSET=latin1;

INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('395', '135', '', '1', 'Nista,do sada nismo imali problema sa tim kao sto sam vec naveo,koji mod koristite ?', '1361740817');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('408', '143', '40', '', 'mozete li mi staviti zm mape kao npr zm_five zm_zhell zm_ice_world i ostale', '1361878372');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('407', '142', '', '5', 'Pozdrav,

U cemu je problem ?', '1361875961');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('405', '142', '37', '', 'ejj kako ce mi igraci boostati jell baa sta je ovo bgt', '1361874894');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('406', '141', '40', '', 'hvala vam puno', '1361875929');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('9', '5', '11', '', 'Kako da promenim sliku 
kada neko udje u kanter da vidi ime i sliku mog servera
a da ne bude vasa reklama,
da li je to moguce?', '1353943669');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('10', '6', '11', '', 'namestio sam sve hvala', '1353949793');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('11', '6', '', '1', 'Ok,', '1353952197');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('7', '4', '11', '', 'gde se nalaze podesavanja?
hvala
', '1353883365');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('8', '4', '', '1', 'Kada udjete u server inforamcije sa desne strane imate web ftp', '1353884535');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('12', '5', '', '1', 'Naravno samo morate da promjenite tekst i link slike u motd.txt

Njega mozete naci u web ftp-u', '1353952240');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('13', '7', '2', '', 'HTEO SAM DA VIDIM KAKVI SU TIKETI HVALA ..', '1353954791');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('14', '8', '11', '', 'Da li mozete da mi pojasnite kako da namestim da mi bude nick zelenim slovima
samo za head i obicne admine
hvala', '1353964825');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('15', '9', '13', '', 'Nece da mi se promeni ime servera nego pise sve...Public by Arenahosting.info ja promenim sve tamo u server.cfg i savucam udjem u kanter refresujem ono nije promenjeno...', '1353965625');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('16', '10', '13', '', 'Zasto nece amxmodx kada ukucam u konzoli da mi se pojavi??', '1353969651');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('17', '10', '', '1', 'Dali si instalirao amxmodx,ovo je njihova oficijalna stranica i ru mozes skinuti kao i ostale plugine http://www.amxmodx.org/
Takodje mozes da skines i sa http://sourceforge.net/projects/amxmodx/', '1354016005');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('18', '8', '', '1', 'Ovdje mozete naci informacije oko toga:
http://gamers.ba/forum/1/110562/1/pomoc-oko-binda/', '1354016116');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('19', '11', '3', '', 'Test na novi tiket.....

Ocekujem vas odgovor 

:)', '1354016321');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('20', '8', '11', '', 'Ne razumete me,
Ja ne zelim da pisem zelenim slovima,
Nego da mi nick bude zelen, ali to samo za admine...
Gledajte 
http://i14.photobucket.com/albums/a329/vandercal/std_admin_color_chat.jpg
ali samo prvi red, slova su normalna a nick je zelen samo kad amx chat ili amx say kapirate?
Molim vas pojasnite mi to, i server cu da pustim da radi,
necu ako nije savrsen...', '1354024922');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('21', '8', '11', '', 'Ne radi mi amx vote !', '1354024939');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('22', '8', '11', '', 'zanimame koliko treba da doplatim da bi imo premium server ?
', '1354032065');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('23', '8', '', '1', 'U ponudi nemao premium servere,ikoliko budete imali kakav problem sa lite serverom molimo vas da nas obavjestite ,

Sto se tice amx_vote taj plugin je iskljucen,mada ga vi po potorebi mozete ubaciti i ponovo ukljuciti', '1354035268');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('24', '11', '', '1', 'dsfdsfds', '1354035282');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('25', '8', '11', '', 'ok
', '1354036355');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('26', '11', '3', '', 'Par stvari bi zelio da testiram putem ovoga tiketa.Dali mogu da dobijem neki kontant od Borisa i koji,kako da ga kontaktiram.
Dali planirate da mjenjate mod na serveru i na koji.Dali cete da uvetete teamspeak3 server pa da ga povezemo sa ovim serverom...Te ja imam problem sa ovim ja imam problem sa ovim,ja sam ovo ja sam ono hahahah...Dele cu kasnije sve ovo fino da napisem ali bez razmaka pa da vidimo na sta ce i to liciti hahahaha.
____________________________________________
Par stvari bi zelio da testiram putem ovoga tiketa.

Dali mogu da dobijem neki kontant od Borisa i koji,kako da ga kontaktiram,

Dali planirate da mjenjate mod na serveru i na koji.

Dali cete da uvetete teamspeak3 server pa da ga povezemo sa ovim serverom...

Te ja imam problem sa ovim ja imam problem sa ovim,ja sam ovo ja sam ono hahahah...

Dele cu kasnije sve ovo fino da napisem ali bez razmaka pa da vidimo na sta ce i to liciti hahahaha.

', '1354220571');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('27', '11', '', '1', 'Ako imate kekvih pitanja borisa mozete kontaktirati na info@arenahosting.info.Ovdje smo vas slabo sta razumjeli sta ste htjeli da kazete', '1354220640');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('28', '12', '16', '', 'Kako da ubacim RP gamemod i zasto server ne radi kad ga ukljucimo ? Ako mozete da pomognete :D
', '1354304612');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('29', '13', '16', '', '1.Ima neki bag nece da se startuje server ne znam sta da radim pomagajte ???
2.Ne znam kako da ubacim mod ako bi mogli da mi pomognete ???', '1354304668');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('30', '14', '14', '', 'Sto nemogu u FTP da udjem kaze pogresna user ili losika-.-', '1354308349');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('31', '13', '', '1', 'Neznam tacno o kakvom bagu ste pricali,ali mi smo vam upravo startovali server.Sto se tice ubacivanja mod-a,potrebno je da skinete fajlove od moda sa interneta,da se preko nekog ftp klienta logujete u server (file zilla) te samo da nadjete te fajlove na vasem racunaru i ubacite na server.Vise informacija oko toga mozete naci na internet-u,u produzetku cu vam poslati par linkova koji vam mogu pomoci (http://balkan-samp.com/forum/index.php?topic=24196.0 , http://www.youtube.com/watch?v=Dt-4v2KTX74 , http://www.youtube.com/watch?v=52_T1uyKKNU , http://forum.sa-mp.com/showthread.php?t=260831 )', '1354308455');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('32', '12', '', '1', 'Server vam nije bio startovan,maloprije sam ga startovao,sada pogledajte pa mi javite,a sto se tice mod-a u predhodnom tiketu sam vam poslao par linkova kako bi to mogli da odradite.', '1354308711');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('33', '14', '14', '', 'Sredjeno je sve netreba :)', '1354308943');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('34', '13', '16', '', 'Opet ne radi pise 0/0 igraca probaj i ti nece u sampu nece ni ime servera da izbaci
', '1354309470');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('35', '13', '16', '', 'Isto ima neki bag sa davanjem admina kad ukucam moj nick izadje kao neka greska da ima ...', '1354309565');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('36', '13', '', '1', 'Sada mozete pogledati,niste bili promjenili ip adresu u server.cfg', '1354309662');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('37', '13', '16', '', 'E ste vi sigurni da ste lepo napravili meni ovde pise igra CS1.6 a mod pise SAMP pa dal ste vi lepo namestili ja sam za SAMP narucio server ???', '1354309699');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('38', '15', '15', '', 'ja sam uplatio 26 slota 450 a stiglo mi je 24 slota ako moze da se stavi na 26 poz ', '1354310436');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('39', '13', '16', '', 'E naso sam sve web ftp i ubacujem sa mog gamemoda ali mnogo sporo idem zato sto moram 1 po 1 file el moze to tako malo brze. :D', '1354311153');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('40', '15', '', '1', 'prosireno', '1354313365');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('41', '16', '14', '', 'Vidim imam fast Download hvala,ali kad skida ove module za puske, skida njih 10 po 1 ipo minut evo ja ih skidam samo sto nisam zaspao:D', '1354314561');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('42', '17', '14', '', 'Vidim imam fast Download hvala,ali kad skida ove module za puske, skida njih 10 po 1 ipo minut evo ja ih skidam samo sto nisam zaspao:D', '1354314643');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('43', '18', '16', '', 'Kako da ubacim moje foldere moj gamemod ja znam ono 1 po 1 ali kad treba da se ubaci gamemode pise da je doslo do greske neke a i da nije greska ako moze to nekako malo brze da se ubaci ovako ce da mi treba 10 dana da ubacim 1 mod,ako moze pomoc ? :D
', '1354314823');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('44', '18', '', '1', 'Skinite program koji se zove filezilla,konektujte se preko nje u vas server (u game panelu,u server informacije imete i ftp informcije,njih upisujete u file zillu)hostname je ip adresa (bez porta) username je username,a password je password i tu samo uzmete i sve vase foldere od moda sa racunara prebacite na server', '1354315804');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('45', '17', '', '1', 'Na svim serverima ce vam tako skidati modulr :),', '1354315930');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('46', '18', '16', '', 'Ja otvorim fillezila i pise gore connect to server dole pise Server Address: sta tu treba ? onda odma pored port:sta tu treba ? a dole Administration password:sta tu treba ?', '1354318220');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('47', '18', '16', '', 'E ja ne razumem,ako mozete vi da nam ubacite roleplay gamemod onaj UnRead pa ce mo mi posle da popravljamo,ja stvarno ne razumem kako ovo,ja sam isao kad sam instalirao filezilla odma mi je bila tu neka adresa i port ja sam isao isao connect i radilo je ali onde nista ne razumem kako da udjem da ubacim na gpanel ali nista ako moze bilo kakva pomoc. :D
', '1354319056');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('48', '18', '', '1', 'Gdje ste tacno zapeli kada ste ubacivali mod,dali ste se logavoali u server ftp preko live zille ?.Nakon sto se logujete samo markirate fajlove od moda i kliknete upload :)', '1354319928');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('49', '19', '14', '', 'Gde mogu da promenim premium klase da nemogu da uzimaju ovi obicni nego da ja mogu da daje klase??', '1354351882');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('50', '20', '15', '', 'Dali moze da mi se uradi plugin za amx_say kad kucam pise all i neki put server mnogo laga i baguje molim da se to resi Pozz', '1354352302');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('51', '21', '15', '', 'HOCU ODMA DA SERVER PRESTANE LAGA ILI VRATITE PARE !', '1354355967');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('52', '13', '', '1', 'nemoras 1 po 1 samo markiraj sve fajlove i klikni upload', '1354359245');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('53', '22', '16', '', 'Evo ovako.Ja sam se snasao na FilleZilla i ubaci prebacio filove i u server.cfg napisao sve kao sto treba slotove port i tako ali kada ukljucimo server ne radi.Zasto ?
', '1354370484');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('54', '22', '16', '', 'Ubacio sam mod ali pise na samp mod unknown i kad ulazi ne radi nece nista da se otvori.Zasto ? :D
', '1354374741');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('55', '23', '14', '', 'Postovani,


Molim vas da mi stavite adminchat.amxx da bude da mogu da pisem zelenim slovima..


Pozdrav.', '1354374986');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('56', '22', '', '1', 'Vjerovatno je do moda,vecina samp modova koje mozete naci na internetu ne radi,vidite da vam neko da neki mod koji je vec koristio', '1354384863');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('57', '22', '16', '', 'To je mod vec koriscen ali ne znamo sta treba u server.cfg da ispisemo mozda je zbog toga ???', '1354384979');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('58', '22', '16', '', 'Mogu ti dam link da ga skines akooces da mi ti ubacis posto mi stvarno ne znamo kako nekoliko puta smo isprobali da ubacimo a i koriscen je na nekoliko servera a cak smo ga i testirali na kucnom serveru !!!', '1354385230');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('59', '23', '', '1', 'Sredjeno,ubacen vam je plugin odavde: http://www.extreamcs.com/forum/pluginuri-extream/adminchat-t77600.html', '1354385652');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('60', '22', '16', '', 'Da na kucnom radi bez hosta nema error sve je u redu nzm sto ne radi na host :D', '1354385975');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('61', '24', '13', '', 'Kada igramo neku mapu gde se kupuju puske CT ne moze da kupi a ima para kada zelim da kupim pise mi nesto....:/ ??????', '1354390659');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('62', '25', '16', '', 'Hocete li vi nama pomoci,hvala vam za filezilla to smo uspeli ali zasto kad ubacim gamemod RP i kad ukljucim server ne radi a na gamemod pise unknown a taj server radi bez hosta proveravao sam 100 puta,ajde bilo kakva pomoc :D
', '1354392952');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('63', '23', '14', '', 'Ne radi, ja kad pisem belim je slovima dole ono (ALL)NIck : i sta pise, a ja to ne zelim zelim ono obicno zelenim?', '1354396281');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('64', '24', '', '1', 'Sta vam tacno pise kada zelite da kupite pusku ?,na kojoj mapi vam se to desava ?,dali ste ubacivali neke plugine na server koji bi mogli da dovedu do toga ?', '1354398836');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('65', '23', '', '1', 'Kojom komandom pisete tj. sta kucate kada pisete ?', '1354399238');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('66', '25', '', '1', 'Sada sam krenuo da vam ubacim mod i primjetio sam da u server.cfg niste dobro posatvili port,vi ste stavili 1115 a vas port je 7775,dali vam sada radi ?.Ako ne radi ubacicemo mi mod.', '1354407075');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('67', '26', '15', '', 'Hocu da mi se server prebaci u premium i sledeci mesec cu platiti kolko treba posto mi malo laga ovako lite :D', '1354441774');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('68', '24', '13', '', 'Kada zelim da kupim ja stisnem na pusku ono pise \"This item is restricted\"...Na sve de_dust2,de_dust2_long i tako te mape gde se kupuju puske...!Neznam ubacio sam samo milfantireklamu...:/ ???', '1354450295');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('69', '25', '16', '', 'Radi ali je neki mod sranje ako imate neki obican RP da mi posaljete znamo da ubacimo !!!
Samo nam treba obican Rp posto ocemo svoj mod da napravimo !!!', '1354450313');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('70', '24', '13', '', 'Rebuldujte server ali samo ako bude isti ip...ako moze odmah :)', '1354462745');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('71', '25', '', '1', 'Ovdje mozete naci mnogo modavoa vezano za samp,pa i roleplay modove.Pogledajte komentare mod koji bude imao najbolje komentare njega skinite http://balkan-samp.com/forum/index.php?board=12.0', '1354464266');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('72', '26', '', '1', 'Rebuild smo vam server....', '1354464619');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('73', '24', '', '1', 'Rebuild smo vam server....', '1354464635');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('74', '26', '15', '', 'ok', '1354466006');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('75', '27', '13', '', 'server nece da mi se restartuje...???', '1354466401');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('76', '25', '16', '', 'Znamo za taj sajt odatle skidamo ali nema nijedan obican RP da ne bude nista radjeno na njemu !!!', '1354469158');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('77', '28', '13', '', 'server nece da mi se restartuje?...', '1354471728');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('78', '29', '15', '', 'Promenite mi mod u de_dust2 only Ako moze ?', '1354472155');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('79', '23', '14', '', 'bindujem u konzoli bind i \"messagemode amx_say\" kao i uvek i na drugim serverima mi bude zelenim slovima
', '1354477129');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('80', '23', '14', '', 'bindujem u konzoli bind i \"messagemode amx_say\" kao i uvek i na drugim serverima mi bude zelenim slovima
', '1354480341');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('81', '23', '14', '', 'bindujem u konzoli bind i \"messagemode amx_say\" kao i uvek i na drugim serverima mi bude zelenim slovima
', '1354481174');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('82', '29', '', '1', 'Samo je potrebno da stavite sa vam se vrti dd2 mapa,a ostale mozete a i ne morate obrisati', '1354486563');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('83', '28', '', '1', 'Sts vam pise kada nece da se restartuje ?', '1354486634');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('84', '23', '14', '', 'Sto se poslalo 3 puta kada sam poslao jednom?', '1354519219');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('85', '30', '15', '', 'Nece da se restart server ni da sse stopira daj resite ro
', '1354526300');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('86', '30', '', '1', 'Mi smo vam maloprije restartovali server i onda ga stpirali i sve radi...', '1354533374');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('87', '25', '', '1', 'Danas cemo mi ubaciti modove pacete moci da mjenjate mod unutar game panela', '1354533425');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('88', '25', '16', '', 'Oke !!! A moze da mi posaljete neki RP mod samo ono uradjen nista da nije ubacivano posto krecem da pravim mod pa nemam naobicniji RP mod !!!', '1354536620');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('89', '25', '16', '', 'E kad ce bude ono prebacivanje na gpanel.arenahosting.info', '1354537570');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('90', '25', '', '1', 'Danas', '1354538806');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('91', '28', '13', '', 'Da je uspesno restartovan ali kad udjem u server nije restartovan...', '1354540317');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('92', '28', '', '1', 'Pa po cemu ste zakljucili da nije restartivan,nije vam se neko podesavanje koje ste radili ucitalo ili ?.Ako nije problem da nam dostavite vise informacija kako bi vam mogli pomoci', '1354542433');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('93', '28', '13', '', 'Nece da se promeni mapa i kada restartujem ne ce da izbaci iz igre', '1354546455');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('94', '28', '', '1', 'sada cemo mi da dodamo admina test ,test pa da promjenimo mapu,ako bude sve radilo vidjecete da je druga mapa', '1354560974');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('95', '28', '', '1', 'Izgleda da ste ubacili neki plugin koji je poremetio rad servera,dali zelite da vam kreiramo serer na novo ostace isti ip ?', '1354562958');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('96', '28', '13', '', 'moze 
', '1354569674');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('97', '28', '', '1', 'sredjeno', '1354572709');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('98', '28', '13', '', 'ali ne moze i dalje mapa da se menja vidi molim te sta je to?', '1354625191');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('99', '28', '', '1', 'Moze mapa da se mjenja,drugi vam je ip servera.....Ima neki problem sa onim ip-om', '1354628506');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('100', '23', '', '1', 'Dali sada sve radi ?', '1354650219');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('101', '31', '13', '', 'Cw nece da mi radi molim vas pogledajte sta je problem...:/', '1354720722');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('102', '32', '13', '', 'Zelim da stavim novogodisnje kape terorima i ct ...molim vas ako mozete to vi da uradite..Hwala unapred :D', '1354722922');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('108', '32', '', '1', 'vEo vam link od toga plugina ako se nesnadjete kontaktirajte nas: http://forums.alliedmods.net/showthread.php?t=81172', '1354796986');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('109', '31', '', '1', 'Rjeseno....', '1354827325');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('110', '38', '18', '', 'imam problem oko servera kada hocu da promenim bilo sta ili da otvorim config.cfg ili slicno izbaci mi da username i pasvord nisu tacni ??', '1354828348');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('111', '38', '18', '', 'tj kako da startujem serv ? kada kliknem na startuj serwer kaze netacni podaci za prijavu
', '1354830883');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('112', '38', '', '1', 'Uspjesno smo vam startovali server', '1354833108');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('113', '32', '13', '', 'Mozeteli vi da nam napravite?
', '1354883990');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('114', '39', '18', '', 'kako da podesim da se samo dd2 vrti na serw podesio sam na 20 rundi i kada se zavrsi da opet pusti dd2
', '1354887272');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('115', '39', '18', '', 'ja nemogu da boost ovaj serw na gametrucker.rs??
 kaze da mi nije dostupan ovaj server', '1354889705');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('116', '39', '', '1', 'sto se tice map-e upravo smo vam to podesili,sada ako zelite mozete da izbrisete sve ostale mape u web ftp /cstrike / maps (Nije obavezno.Sto se tice boost-a,dali ste dodali server na gametracker.rs ?
', '1354889894');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('117', '40', '13', '', 'Molim vas napravite mi na cw serever plugin snow war http://www.youtube.com/watch?v=-V4NunfquuY  kao ovo..??Hwala unapred!!', '1354895898');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('118', '41', '13', '', 'Daj moze li neko da mi napravi mod snowball war...Molim vas???', '1354905110');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('119', '39', '18', '', 'jesam dodao sam ga i nista opet i povratna poruka glasi da nisam vlasnik servera :(((
', '1354908944');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('120', '39', '', '1', 'Moras tamo prijaviti da budes vlasnik servera,tj. tamo imas upustvo kako poslati vlasnik,trebas promjeniti ime servera u gammetracker.rs i onda potvrditi vlasnistvo.Ali ti to uopste ne igra ulogu prilikom boost-a', '1354913981');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('121', '41', '', '1', 'Evo ti ovdje linkovi od moda,prvi dio je za grudvanje ovo dole ja za zombie to ne diraj. http://gamers.ba/forum/1/106507/1/-tut-modovi-za-cs-1-6-snowball-i-zombie/', '1354914196');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('122', '41', '13', '', 'Ne umem nije mi jasno...molim vas ako mozete to vi da mi uradite...', '1354970509');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('123', '42', '16', '', 'Eee podrska ima neki bag dao sam jednom sifru od gp da ubaci mod i ja se nisam odjavljao sa gp i on je promenio sve na gpanelu stavio njegov mail sifru sve i ja sam popravio i promenio kako mi bilo i reko da promenim i ftp sifru i ja je promenio i sad ocu da stop server i pise netacni username i password sta da radim sredite mi to !!! Poslacu i uplatnicu ponovo ako mi ne verujete da sam ja pravi Bojan !!!', '1354975370');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('124', '42', '16', '', 'A sad mi pise netacni podaci za prijavu kad ocu stop ako mozete da pomognete posaljite mi podatke i sve na mail plazmaserver@krstarica.com kao sto sam uneo kad sam narucivao server !!!', '1354975525');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('125', '42', '16', '', 'Isto i kad ocu ftp sifru da promenim pise da se desila greska !!!', '1354975614');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('126', '43', '16', '', 'Imam na gpanelu neki bag kad ocu u web ftp da udjem pise pogresan username i sifra a kad ocu d promenim sifru od web ftp pise doslo je do greske sta da radim ???', '1354990481');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('127', '44', '13', '', 'Mnogo mi laga ja sam danas Bostovo serwer i svi su izlazili 2 minuta radi 2 minauta stanemo nemoze da se pomeri molimo vas vidite sta je to?
', '1354991221');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('128', '44', '', '1', 'Dali si ubacio mnogo plugina ?,ili dali si ubacio neki nenispravan plugin ?', '1355061803');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('129', '44', '13', '', 'bio je pun server svi 30 i poceo lag', '1355061894');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('130', '44', '', '1', 'dali si ubacivao plugina koji ne rade ?', '1355093728');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('131', '44', '13', '', 'nisam samo sam kape i one rade', '1355147293');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('132', '41', '13', '', '????', '1355147321');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('133', '45', '18', '', 'jel je moguce malo da se smiri lag na serw ponekad bas ubaguje ?
', '1355235360');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('134', '46', '3', '', 'E borise ajd pogledaj poruke na SKYPE!
Ako mozes budi oko 21:00 onlyne da se dogovorimo nesto. ', '1355242426');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('135', '46', '3', '', 'Ticket by Rade Ilijev. 
Samo nemoj da me ignorises zelim da pomognem.', '1355242558');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('136', '44', '13', '', 'Molim vas odgovorite sta je problem', '1355246089');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('137', '45', '', '1', 'ubacujemo nove modove moguce da je zbog toga,bice uskoro rjeseno', '1355254688');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('138', '44', '13', '', 'Odgovori te???
', '1355321072');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('139', '41', '13', '', 'Ume te li??', '1355321095');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('140', '47', '15', '', 'Server se gasi da udju igraci malo odma se gasi sam ~', '1355324017');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('141', '48', '16', '', 'Opet ima onaj bag kao sto je bio nmg u WEB FTP da udjem sta da m uradim pise netacni podaci za prijavu ???', '1355407220');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('142', '49', '19', '', 'zasto mi ne radi server', '1355407714');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('143', '50', '13', '', 'Nece da mi rade pub i cw?? Kada ocu da restartujem server pise \"Ne mogu se spojiti na server\"..Molim vas napravite to i stalno mi se obara server !!
', '1355421281');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('144', '50', '', '1', 'Sredjeno', '1355423900');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('145', '49', '', '1', 'Sredjeno', '1355423914');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('146', '48', '', '1', 'Sredjeno', '1355423931');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('147', '47', '', '1', 'Dali je jos taj problem ?', '1355423948');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('148', '51', '13', '', 'Ne radi mi serwer', '1355424120');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('149', '52', '13', '', 'Moze te li da ubacite na cw?', '1355424714');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('150', '52', '', '1', 'Mozete ovdje naci potrebne plugine: http://forum.arenahosting.info/showthread.php?255-SnowBal .Kada skinete mod potrebno je da ga extratujete i ubacite na server', '1355425385');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('151', '53', '19', '', 'Moze te li mi ubaciti plaugin kada ostetimo nekoga da vidimo koko smo ga ostetili', '1355426335');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('152', '54', '19', '', 'Mozeteli mi ubaciti palugin kada ostetimo nekoga da vidiom  kolko smo ga ostetili', '1355426418');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('153', '55', '13', '', 'mnogo laga ne moze  da se pomeri nijedan pluging nismo ubacivali osm za kape. U cemu je problem
', '1355433085');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('154', '56', '13', '', 'mnogo laga ne moze  da se pomeri nijedan pluging nismo ubacivali osm za kape. U cemu je problem
', '1355433087');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('155', '55', '', '1', 'evo ovaj je server na istoj masini sve je isto samo on nema taj plugin kape na sebi: 78.46.27.158:27015 .Moguce je da je do plugina,sadacemo provjeriti server', '1355434854');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('156', '54', '', '1', 'Morate nam reci ime plugina da bi vam mogli ubaciti,', '1355434974');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('157', '46', '3', '', 'Nasao sam Game Fajlove!', '1355437117');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('158', '55', '13', '', 'molimo vas vidi te to', '1355442047');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('159', '52', '13', '', 'Probao sam ali nece da mi radi neznam kako da ubacim!!?Uradite vi to..', '1355491382');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('160', '52', '13', '', 'Umete li', '1355516881');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('161', '57', '16', '', 'Evo ovako men ise server restart na svaka 4-5min i postavi osam pitanje na balkan-samp zasto to oni mi rekli da je to do hostinga il ido moda pa sam ja resi oda proverim zasto i dosao sam do zakljucka da je to nesto kod vas post osam promenio 3 moda i opet se restartuje resite to sto pre jer taman doveem 10 igraca i server se restart i svi odui !!!', '1355603143');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('162', '57', '', '1', 'Server se sam restartuje ?,Mislim da je to prosto nemoguce,dali je i dalje online nakon sto se restartuje ?Dai ti se to desavalo i dok si imao onaj oboicni (original) samp mod sto dodje uz server ?', '1355617606');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('163', '57', '16', '', 'Server se restart i odma se upali a dok sam imao onaj mod nije se desavalo a kad se restrt pise Lost connectin i jos nesto  !!! Ne znam sta da radim samo mi tera igrace sa servera ???
', '1355656744');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('168', '60', '13', '', 'A moze te li cw da prebacite u snow war mod?', '1355690357');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('165', '59', '13', '', 'meni laga mnogo sredite ako umete', '1355687102');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('166', '59', '', '1', 'Sredjeno je,svi serveri su dodatno ojacani ukoliko se problem nasatvi kontaktirajte nas', '1355687863');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('167', '57', '', '1', 'Sredjeno je,svi serveri su dodatno ojacani ukoliko se problem nasatvi kontaktirajte nas', '1355687886');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('169', '60', '', '1', 'Nazalost podrsska nije duzna da vam ubacujemo modove,jedino sto mozemo uciniti jeste dati vam detaljno upustvo kako to da uradite http://www.youtube.com/watch?v=jtiKuPjQdps', '1355690523');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('170', '57', '16', '', 'Vazi ', '1355696594');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('171', '59', '13', '', 'Sve vise i vise laga!', '1355771627');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('172', '59', '', '1', 'Sada je server maksimalno pojacan dali jos imate probleme ?', '1355782676');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('173', '61', '3', '', 'test', '1355787487');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('174', '62', '15', '', 'jos laga sta da radim ?', '1356000944');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('175', '63', '3', '', 'Borise kad cu da dobijem Radnika/Admina?
Ajd napisi mi na email  ako nemozes na FB.
 rade.ilijev8@gmail.com


-Rade Ilijev

', '1356019096');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('176', '64', '13', '', 'Mozeli mod deatrun da nam ubacite na serwer?
', '1356087721');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('177', '62', '', '1', 'Jos laga ?.Nista prebacicemo servere na novu masinu,a stari ce ostati aktivan jos nekih 5-6 dana od prebacivanja da bi mogli da prebacite sve igrace i uradite redirect', '1356090123');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('178', '64', '', '1', 'Ubacicemo i dr mod na automacku promjenu unutar panel-a', '1356090595');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('179', '63', '3', '', 'Ok vidim da me ingnorises itd...', '1356100275');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('180', '65', '13', '', 'mnogo laga ako promenite ip kako cu nove igrace nabavit 3 put boostovan je!', '1356111285');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('181', '66', '16', '', 'El sam dobro razumeo,da stavim ovako naslov i vi cete pojacati i promeni ip,el da ? :D', '1356113933');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('182', '67', '16', '', 'Evo, to je to valjda ? :D', '1356113999');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('183', '65', '13', '', 'I zelimo da produzimo server jos jedan mesec...', '1356166184');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('184', '62', '15', '', 'ok kad ce da prebacite ?', '1356169743');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('185', '68', '15', '', 'ako moze na drugu masinu jer gubim igrace zbog laga javite kad bude prebaceno .', '1356169845');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('186', '69', '13', '', 'kada prebacujete na oba ipa', '1356208211');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('187', '11', '3', '', 'd', '1356270409');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('188', '70', '3', '', 'sto ne radi ovaj ts3 ?? ', '1356270599');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('189', '70', '', '1', 'znam neradi,moram ga prebaciti na drugi panel', '1356386972');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('190', '69', '', '1', 'Msin a trenutno nije spremna,cim se sve sredi bicete obavjesteni', '1356387012');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('191', '69', '', '1', 'Msin a trenutno nije spremna,cim se sve sredi bicete obavjesteni', '1356387012');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('192', '71', '8', '', 'Zelim da mi se server prebaci na novu masinu ! 

Vec sam upoznat sa situacijeomi u dogovoru sam sa Adminom na Areni HOSTINGU ! 

Ocekujem vas brz odgovor ! 

Pozzz !', '1356449740');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('193', '72', '15', '', 'Kad ce nov server da bude na nowu masinu odovorite sto pre .', '1356523054');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('194', '73', '24', '', 'Evo trazim da se moj server prebaci na novu masinu, zbog laga', '1356551196');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('195', '74', '19', '', 'Znate li mozda sto mi ne  radi server
', '1356698731');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('196', '54', '19', '', '
Colored Smoke         taj

HP Regain         taj         

Winter Environment   taj

Parachute        i ovaj', '1356698930');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('197', '75', '22', '', 'Hocu li dobiti cs server od 32 slota platio sam jos proslog petka??? Odgovorite! :)', '1356962861');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('198', '76', '24', '', 'Zbog laga trazim da moj server prebacite na novu mašinu, što je prije moguce.', '1357085454');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('199', '77', '4', '', 'Pozdrav podrsci,imam pitanje ne radi mi server ? zasto to? meni je arena hosting sponazor.', '1358093446');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('200', '77', '4', '', 'Ako je problem u masini prebacite mi na drugu masinu,ako nije problem. javite mi samo do cega je.', '1358098633');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('201', '78', '24', '', 'zasto mi server ne radi?', '1358120057');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('202', '77', '4', '', 'Zasto se ne javite bre? poludecu!', '1358206046');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('203', '79', '22', '', 'Daj server na novoj masini
', '1358940429');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('204', '80', '22', '', 'Pise da je server aktivan i to...ali nemoze niko uci na njega...zasto?', '1358941651');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('205', '80', '22', '', '\'?', '1359024219');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('206', '81', '24', '', 'Ae molim vas da mi server pustite u rad', '1360069997');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('207', '81', '', '1', 'server je kreiran', '1360185122');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('208', '80', '', '1', 'server je kreiran.', '1360185230');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('209', '80', '', '1', 'server je kreiran.', '1360185230');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('210', '74', '', '1', 'kreirali smo vam novi server', '1360185284');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('211', '72', '', '1', 'kreirali smo vam novi server.', '1360185346');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('212', '71', '', '1', 'vas server je kreiran', '1360185423');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('213', '65', '', '1', 'vas server je uspjesno kreiran', '1360185507');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('214', '82', '29', '', 'Server je stopiran i necee!! ZASTO? 
', '1360185962');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('215', '83', '28', '', 'Ocu da bude basebuldier mod', '1360187486');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('216', '82', '', '1', 'sada sam provjeravao server je startovan.', '1360188193');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('217', '82', '29', '', 'kako  da promenim ime servera preko gp', '1360253702');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('218', '82', '', '1', 'http://forum.arenahosting.info/showthread.php?5-Osnovna-Upustva-za-vlasnike-servera
tu mozete naci,kao i mnogo ostalih informacija koje mozete naci u bazi znanja na nasem forumu', '1360260235');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('219', '84', '31', '', 'Da li mozete da mi promenite pocetnu mapu u deathrun_kosova ?


Pozdrav.', '1360269952');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('220', '84', '', '1', 'mozemo,dali ste wec ubacili tu mapu u web ftp ?,te nam dajte puno ime mape.', '1360270398');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('221', '84', '31', '', 'Nisam ubacio, jer nece, izgleda da mnogo zauzima, ova ce da bude :

deathrun_dust_2013.bsp


Pozdrav.', '1360270441');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('222', '84', '', '1', 'ako vam nije problem da upload mapu na neki file uploader pa da nam prosljedite link kako bi vam mogli ubaciti', '1360271203');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('223', '84', '31', '', 'Ja sam ovu deathrun_dust_2013.bsp ubacio mapu, vase je samo da je stavite na pocetnu mapu ...



Pozdrav.
', '1360271295');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('224', '84', '31', '', 'E Borise, ajde mi vi ubacite DeathRun MOD , ja ubaci neki ali nece da radi, ajde ubaci sa mapama... JeL moze ?
', '1360271794');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('225', '85', '30', '', 'Imam problem kada ubacujem neke deathrun mape pise mi dogodio se problem prilikom uploada.
Sta trebam uraditi?', '1360272143');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('226', '84', '', '1', 'sutra bi trebalo da na masinu ubacimo dr mod,pacete samo moci tamo promjeniti mod u game panelu', '1360272272');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('227', '85', '', '1', 'dali ste ubacili dr mod ?', '1360272290');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('228', '85', '30', '', 'sada mi je na public ja sam iso u modove i tamo nema dr mod ', '1360272509');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('229', '85', '', '1', 'trebao bi biti sutra dodan,nakon sto dodamo prebacite na dr i onda ubacite mapu :)', '1360272676');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('230', '85', '30', '', 'kada sutra otprilike bi to bilo gotovo..Oce li biti gotovo do podne??
', '1360272734');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('231', '85', '', '1', 'nemozemo nista garantovati sto se tice vremena ubacivanja
', '1360272868');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('232', '86', '30', '', 'Zasto kada restartujem server ne prikaze mi koja je trenutna mapa??
20 puta do sam restart i nista  se nije desilo ?', '1360273559');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('233', '86', '', '1', 'Mislite ne prikazuje trenutnu mapu unutar game panela ?', '1360273642');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('234', '86', '30', '', 'da', '1360273655');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('235', '86', '', '1', 'Moguce da je bag unutar panela,mada nadam se da vam to ne predstavlja nikakv problem,server mozete dodati na neki od game tracker-sa kako bi pratili stanje na serveru.
Takodje moguce je da zbog toga sto trenutno na serveru nema igraca,oprobajte pogledati dali ce prikazivati mapu kada budu igraci na serveru.', '1360273802');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('236', '84', '31', '', 'Oke, hvala i pozdrav.', '1360273856');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('237', '86', '30', '', 'a mozes li mi vidjeti kada restartujem server i kada mi pise usjpesno je server restartovan zasto mi u find server pise da je offline ??', '1360273875');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('238', '87', '30', '', 'Kada restartujem server,server mi je offline ?', '1360274551');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('239', '88', '30', '', 'Borise mozes mi vidjeti zasto kada restartujem server u panelu bude offline..
Jeli to do vas?', '1360276858');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('240', '88', '', '1', 'dali je samo u panelu offline ili je offline server kada udjes u Counter Strike ?', '1360277615');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('241', '88', '30', '', 'na panelu kada restartujem ne pokazuje koja je trenutna mapa,a kada odem u cs neradi poslije restarta tek nakon par minuta..', '1360277828');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('242', '88', '', '1', 'da,nakon restartovanja je potrebno neko vrjeme da se server ponovo \"digne\".
Sto se tice pokazivanja mape u panelu,kada na serveru budu igraci u panelu ce pokazivati koja je mapa.', '1360278482');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('243', '89', '30', '', 'Sto mi pade server jesi ga ti restart?', '1360279093');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('244', '89', '', '1', 'Moguce da ga je neko restart,jel sada online ?', '1360279125');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('245', '89', '30', '', 'jeste al ko to dira???', '1360279146');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('246', '89', '', '1', 'Neznam ako si Jonnsonu dao pw,mozda je on nesto restartovao samo ti ima podatke,', '1360279634');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('247', '90', '30', '', 'Kada ce doci deathrun mod', '1360330198');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('248', '91', '30', '', 'amx_say sam bindovo na slovo i ovako:bind \"i\" \"messagemode amx_say\" i kada kucam Nik mi nije zelen nego Sve je zuti i pise pored U zagradi ovako (ALL) Full Expands:abc
', '1360336206');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('249', '91', '', '1', 'Moguce da treba neki plugin ubaciti za zelenu boju,pisi na forumu', '1360346647');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('250', '92', '30', '', 'Borise kad stize deathrun mod rekao si danas ali jos ga nema??', '1360346899');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('251', '92', '', '1', 'Ako ne sredim do veceras ja cu ti ga runo zbaciti na tvoj server,nije problem :)', '1360347783');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('252', '92', '30', '', 'ako ne sredis do veceras ja cu te cekati do 12:00 pa mi ti ubaci taj mod jako mi je hitno da one mape ubacim :D', '1360348015');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('253', '92', '', '1', 'vazi', '1360348670');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('254', '93', '30', '', 'Borise dokle si sa deathrunom???Ako ne mognes to do 12sati 
Ubaci samo meni na server jako mi je potrebno', '1360357729');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('255', '93', '', '1', 'vazi za 15 min cu ti ubaciti dr mod,samo dok zavrsim nesto', '1360358155');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('256', '93', '30', '', 'hvala brate najljepse :D', '1360358419');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('257', '93', '', '1', 'ubacen je deathrun mod,sada cu okaciti tut na forum ako budes htio da ubacis neke plugine', '1360358696');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('258', '93', '30', '', 'OK', '1360358934');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('259', '93', '30', '', 'al kad se biraju modovi nema deathrun ??', '1360359194');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('260', '93', '', '1', 'nema nisam jos to ubacio,sada sam ubacio solo na tvoj server,evo link: http://forum.arenahosting.info/showthread.php?370-DeathRun', '1360359583');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('261', '93', '30', '', 'a kad ces to ubaciti ??', '1360359994');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('262', '93', '', '1', 'sutra ako dobijem sve kako valja,nije do mene cim stigne ubacujem,ali sada je svakako dr mod na serveru', '1360360613');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('263', '93', '30', '', 'ok
', '1360360791');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('264', '94', '30', '', 'Dogodio se problem prilikom uploada mapa borise ?', '1360361455');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('265', '94', '', '1', 'kolko su te mape velike ?.Ajde oprobaj upload neku drugu mapu koja nije dr', '1360362035');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('266', '94', '30', '', 'moze al samo ne mogu neke normalne mape da se ubace za deathrun', '1360363082');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('267', '94', '', '1', 'nista ubaci sada za sada te koje mogu,a u pon kada sredimo mod ubaci ostale', '1360364247');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('268', '94', '30', '', 'ajd ok', '1360364572');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('269', '95', '30', '', 'Mozes li mi ti ubaciti mape za deathrun dat cu ti ja linkove', '1360364749');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('270', '95', '', '1', 'mogu vam i ja pokusati ali ista je prica.Ako ne uspijete preko panela konektujte se preko file zille u web ftp servera i onda ubacite', '1360367837');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('271', '95', '30', '', 'objasni mi kako sta ???', '1360367909');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('272', '95', '', '1', 'skines program koji se zove file zilla,kada skines i instaliras imaces tamo u frhu 3 polja koja trebas popuniti,u game panelu kod server informacija ti se nalaze FTP informacije,gdje kod file zille pise hostname tu kucas ip adresu (bez porta),gdje pise username tu kucas user,a gdje pise password takodje kucas password iz ftp informacija,kada to otvoris vidjeces bice isto ko da si usao preko game panela u web ftp e samo tu ubaci mape', '1360368452');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('273', '95', '30', '', 'a kada restartujem server stavi mi mapu de_dust2 nece da mi stavi deathrun mapu', '1360368731');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('274', '95', '', '1', 'daj mi ime mape koja hoces da ti bude glavna mapa (puno ime)', '1360368922');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('275', '95', '30', '', 'deathrun_teample', '1360403072');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('276', '95', '30', '', 'ustvari nemoj nista stavljati stavit cu ja hns mod', '1360403517');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('277', '96', '30', '', 'Borise ajde mi vidi ovaj Fast Download na serveru mi sporo skida ???', '1360404526');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('278', '97', '22', '', 'Nece mi server, zasto?', '1360408923');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('279', '97', '', '1', 'Server radi odlicno,sada sam bio na serveru zove se stupari public.Oprobajte ponovo uci na server', '1360409385');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('280', '98', '28', '', 'Mozete li mi dati plugin za VIP-A', '1360410513');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('281', '98', '', '1', 'https://forums.alliedmods.net/showpost.php?p=675900&postcount=1', '1360411046');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('282', '97', '22', '', 'uredu je, hvala. Nije nesto htjelo.', '1360411375');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('283', '99', '23', '', 'sto nmg da udjem na server pise not responding,a pokrenuo sam server....


MOze POmoc?', '1360415409');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('284', '99', '', '1', 'sada sam ja bio na serveru sve radi kako treba,potrebno je da nakon restarta sacekate 1-2 da bi se server \"digao\"', '1360416854');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('285', '99', '23', '', 'ok,i jos jedno pitanje kad ce ime da se promeni msl ime servera?', '1360418685');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('286', '99', '', '1', 'pPromjeniti u server.cfg hostname,nakon sto promjenite mapu to ce se ucitati', '1360419372');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('287', '100', '28', '', 'kako da dodam jos neku novu mapu preko GP', '1360424165');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('288', '100', '', '1', 'ides u folder maps,i dole na dnu imas dugme da izaberes fajl sa racunara,tu kliknes izaberes mapu i samo kliknes upload', '1360424649');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('289', '101', '23', '', 'jel mozete da mi namestite ime servera meni nece nst....

evo ime servera: Course Public [de_dust2 only]


i sto nece admin da mi radi?

jel mozete da mi namestite sve to?


hvala unapred.. pozz', '1360425346');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('290', '101', '', '1', 'dali ste restartovali server nakon sto ste dodali admina i ime ?,ili nemorate cak ni restartovati dovoljno je da promjenite mapu.', '1360428748');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('291', '101', '23', '', 'sve sam uradi al kako da promenem mapu kad nemam admina?', '1360434190');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('292', '100', '28', '', 'hvala puno :)', '1360439196');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('293', '102', '28', '', 'Dali mozete da mi namjestite mod jailbreak ja sam pokuso to raditi ali nece ', '1360441154');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('294', '103', '28', '', 'Dali mozete da mi namjestite mod jailbreak ja sam pokuso to raditi ali nece', '1360443496');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('295', '104', '30', '', 'Kada restartujem server treba mu oko 3 minute da bude online a prije se odma upali moze pomoc', '1360444164');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('296', '105', '28', '', ' hitan uinstal servera!!!!!
', '1360446791');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('297', '101', '23', '', 'i sto mi je na serveru samo de_dust2 mapa?
', '1360451584');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('298', '106', '32', '', 'Pozdrav, ja sam stavio deathmach mod, ne radi, nema respawn i nema da se bira oruzije na levoj strani kao da svim dm mozete to da sredite????? ', '1360483975');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('299', '107', '30', '', 'Zasto kada nema nikog na serveru od igraca server se ugasi???

Tj po noci oko 12 sati kada ja odem da spavam tada ne bude niko na serveru i sutra kada dodjem na panel server pise da je ofline??', '1360494073');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('300', '107', '', '1', 'Nebi trebalo da se gasi,dali iko osim vas ima pristup panelu ?', '1360499926');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('301', '107', '30', '', 'nema', '1360500308');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('302', '107', '', '1', 'Ako se bude ponavljalo uradicemo vam reinstall servera.', '1360504769');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('303', '108', '30', '', 'Borise kad restartujem server tek bude upaljen nakon 20 minuta???
Mozeli se to brze upaliti', '1360506097');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('304', '109', '23', '', 'sto mi je na serveru samo de_dust2 sto nema drugih mapa? samo de_dust2', '1360512028');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('305', '110', '23', '', 'sto mi je na serveru samo de_dust2 sto nema drugih mapa? samo de_dust2', '1360512384');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('306', '110', '', '1', 'evo vam slika mapa koje se nalaze u vasem game panelu: http://www.dodaj.rs/f/1H/L0/1htMpcqW/mape.png
kao sto vidite na slici ovdje je prikazan samo djelic mapa koje se nalaze.', '1360520891');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('307', '110', '23', '', '100 GTRS \"IP SERVERA\" \"NICK\" i na broj 1310

jel vazi i za ovaj hosting ovako kad hocu da boostujem?', '1360530580');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('308', '110', '', '1', 'da,mada sve zavisi iz koje drzave boostujete,te prvo morate dodati server na gametracker.rs', '1360532601');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('309', '111', '30', '', 'Borise opet imam problem sa serverom kada nema nikoga na serveru on se ugasi ajde ga reinstall', '1360584798');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('310', '112', '30', '', 'Mozete mi reinstall server?', '1360585579');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('311', '113', '30', '', 'server mi reintalirajte', '1360586523');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('312', '114', '28', '', 'Postovan imam problem kod game panela kad restartujem server pise da \"Ne moze se spojiti sa serverom\" i ne mogu nigdje uci', '1360601017');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('313', '82', '29', '', 'Zbog cega nece server??', '1360605879');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('314', '115', '22', '', 'Neradi mi server, ne mogu da ga ni restart ni nista!', '1360606291');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('315', '115', '22', '', 'Samo mi piše \"Ne mogu se spojiti na server\"', '1360607105');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('316', '116', '31', '', 'Pao mi je server. Ceo dan pokusavam da podignem server sa Restart i Stop pa Start.
Ali nece nista, pisemi \"Nemoze se spojiti sa serverom\" .




Pozdrav.', '1360607726');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('317', '116', '31', '', '???????????????????????????????', '1360681140');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('318', '71', '8', '', 'Server je kreiran ali ne radi ! 

Pokusao sam da startujem server  na GamePanelu ali nece izbacuje gresku : 

\"ne mogu se povezati na masinu\"

Vidi sredi to jer tako je vec od kad ste kreirali server . 

Pozdrav. ', '1360743857');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('319', '117', '23', '', 'sto nece da radi server?
', '1360926536');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('320', '117', '', '1', 'problem je rjesen,potrebno je samo da restartujete server', '1360927352');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('321', '116', '', '1', 'Problem je rjesen,potrebno je samo da restartujete server', '1360927393');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('322', '115', '', '1', 'Problem je rjesen,potrebno je samo da restartujete server', '1360927418');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('323', '114', '', '1', 'Problem je rjesen,potrebno je samo da restartujete server', '1360928075');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('324', '82', '', '1', 'Problem je rjesen,potrebno je samo da restartujete server', '1360928095');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('325', '71', '', '1', 'Problem je rjesen,potrebno je samo da restartujete server', '1360928108');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('326', '117', '23', '', 'pa 4 puta sam ga restartovao i nista... u svakom slucaju hvala...', '1360929181');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('327', '118', '23', '', ' sti nmg da udjem u web ftp pise netacna lozinka i username,a usao sam na panel?
', '1360929577');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('328', '119', '28', '', 'gospodo treba mi pomoc kad pokusam bilo de da udjem ne mogu ni server da restart sta god klinem pise nes  netacni podaci za prijavu server pise aktivan ali ne moze da se udje na njega?? POMOC PLS?', '1360936253');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('329', '119', '', '1', 'evo rjeseno', '1360936909');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('330', '120', '15', '', 'test', '1360939461');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('331', '121', '30', '', 'Kada se narucuje server ima slika i na njoj je stikliran FDL znaci da svaki vas server ima fdl,e ako ima kako onda meni sporo mape skida ??', '1360939499');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('332', '121', '', '1', 'FDL predstavlja Fast Download Link i on zavisi od konekcije na kojoj se nalazi masina,naravno postoje i ljudi koji prodaju fdl (masine im se nalaze na jakoj konekciji).Trajanje skidanaja mapa takodje zavisi i od interneta koji igrac koristi', '1360940861');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('333', '122', '30', '', 'Kad ce u panelu biti dostupan deathrun mod posto tamo nema pola modova osim deathruna nema recimo zombie mod,deathrun,zmurka,snowball,surf-mod,hns mod,jail-break....Awp', '1360943250');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('334', '115', '22', '', 'Sada moze da se restartuje al nece na server.', '1360951769');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('335', '123', '30', '', 'Zasto kada neko udje na server pise mu Kill Hosting kao nick', '1360952832');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('336', '124', '34', '', 'molim vas mozete mi staviti komandu amx_ss amx_gag amx_ungag', '1360954615');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('337', '125', '35', '', 'zasto mi nije zeleni nick na amx_say kada pisem?', '1361006065');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('338', '123', '', '1', 'Dali ste davali nekome pristup panelu ? ili dali vam se to pocelo desavati nakon sto ste ubacili neki plugin ?', '1361017601');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('339', '123', '30', '', 'nema niko podatke mog panela,a i to sto kazes mozda je neki plugin hhh.Odo vidjeti :D', '1361017839');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('340', '126', '27', '', 'Poz,kako da stavim redirect na ovaj server?Hvala', '1361019247');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('341', '118', '23', '', 'daj namestite mi server sto opet nece da radi?', '1361027876');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('342', '82', '29', '', 'Hvala najbolji ste a sta treba da radim da bi ga produzio
', '1361036749');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('343', '126', '', '1', 'http://forum.arenahosting.info/showthread.php?20-Kako-namestiti-redirekciju&highlight=redirekciju', '1361037405');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('344', '127', '28', '', 'Ja nemogu da se snadjem na ovom Game panelu! Mozete mi reci kako da ubacim VIPOVE na serveru??
', '1361097599');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('345', '127', '', '1', 'http://forums.alliedmods.net/showthread.php?p=675900  Eto vam plugin za VIP-a.GamePanel je kao i svaki drugi gdje ste tacno zapeli ?', '1361098166');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('346', '127', '28', '', 'Gde sada da stavim ovaj link?? I nzm za admine kako da dajem! :DDD', '1361101242');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('347', '127', '', '1', 'Jao,kada udjes u server informacije kliknes na dugme dodaj admina (sa desne strane) i ukucas nick igraca i password igraca i to je to.', '1361104182');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('348', '128', '1', '', '1', '1361109106');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('349', '129', '27', '', 'Šta je sa serverom?Ja jednu mapu imam admina drugu ne,i tako se prebaci na drugog igra?a,pa vidite to.', '1361111931');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('350', '129', '', '1', 'nemoguce je da se to desava,jedino ako niste dali admina na dobar nick ili na pw', '1361112950');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('351', '129', '27', '', 'Ne,ne,imam 4 admina a tamo izadju 6-7 ,pa proverim panel dok u panelu nema O.o', '1361116878');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('352', '130', '30', '', 'Imam neki problem sa serverom ko mi god udje izbaci ga', '1361131898');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('353', '130', '', '1', 'Dali ste ubacivali neke plugine,moguce da je do toga.Dobro bi nam doslo kada bi nam poslali sta pise kada vas izbaci sa servera ?', '1361183503');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('354', '130', '30', '', 'client vas left the game tako nesta', '1361193460');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('355', '130', '', '1', 'samo to pise ? i to pise covjeku koga izbaci ili ?', '1361212659');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('356', '130', '30', '', 'kada izbaci nekog igraca meni u konzoli pise njegov nik i pored was droped and left the game', '1361279367');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('357', '131', '34', '', 'podrska mozete li mi namjestiti zm mod ako moze u najkracem roku probao sam rucno al tesko', '1361291882');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('358', '132', '22', '', 'Da li je ovaj server free?', '1361294917');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('359', '132', '', '1', 'Jeste prvi mjesec je free,kasnije nastavljate sa placanjem :)', '1361297339');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('360', '130', '', '1', 'Sigurno je do nekog plugina,vratite server na defoult tako sto cete da ga stopirate i kliknete na promjeni mod te promjenite mod na koji zelite,pa kasnije vratite na stari mod :)', '1361297423');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('361', '129', '', '1', 'Problem je u tome sto ste davali admine na steam id pa ko ima slican steam id ucita mu admina,admmine djelite iskljucivo na nick i pw.', '1361297527');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('362', '132', '22', '', 'A dajte server mi nije radio skoro 2 mjeseca! Zašto mi to ne nadoknadite?', '1361302313');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('363', '132', '', '1', 'Pazite,ta 2 mjeseca kada server nije radio nije ni bio placen,radio je jedan mjesec sto je placen i sada ste dobili jos jedan mjesec gratis kao i svi ostali.To je maksimalno sto smo mogli uraditi za vas.', '1361304856');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('364', '133', '34', '', 'Molim vas da mi reinstalirate serwer i vratite na default stanje !!!', '1361378257');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('365', '133', '', '1', 'Ok,sada cemo to da uradimo.U buduce da znate dovoljno je da samo stopirate server i promjenite neki mod (mozete promjeniti i na isti mod koji ste do sada imali)', '1361383323');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('366', '134', '35', '', 'Kako da namestim zagrevanje na serveru?', '1361446558');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('367', '132', '22', '', 'Jel mozete mi produziti server nekih 20-ak dana, zauzvrat vam mogu rekalmirati hosting na svom cs profilu i grupama...na profilu oko 3,000 kanterasa!', '1361472591');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('368', '132', '22', '', 'I opet mi evo neradi server! Zasto se ovo stalno desava?', '1361472981');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('369', '82', '29', '', 'KAKO DA PRODUZIM SRW
', '1361475467');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('370', '82', '', '1', 'Samo uplatite server (www.ArenaHosting.info/uplate.html) nakon uplate uploadujte sliku (dodaj.rs) i samo otvorite novi tiket i postavite link od slike.', '1361529982');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('371', '106', '', '1', 'dodan je novi dm mod', '1361530000');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('372', '132', '', '1', 'Kako neradi ?,nemoguce je da se to desava,uradite reinstall servera', '1361530076');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('373', '118', '', '1', 'sta se tacno desava kada nece da radi,ne reaguje ?', '1361530116');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('374', '77', '', '1', 'tu sam.', '1361530139');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('375', '67', '', '1', 'valja', '1361530155');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('376', '134', '', '1', 'Pisite na forumu,kako bi mogli da vam posaljemo kod od plugina (forum.arenahosting.info)', '1361530252');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('377', '135', '39', '', 'Sta trebam kucati da bih usao na server kao admin? Inace dao sam sebi admina preko Nick+Pass!', '1361573222');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('378', '135', '', '1', 'setinfo _pw tvojpassword', '1361574076');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('379', '136', '35', '', 'Zasto kada restartujem server u gp server padne i ne mogu da ga podignem?', '1361627515');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('380', '137', '35', '', 'Zasto kada restartujem server u gp server padne i ne mogu da ga podignem?', '1361627557');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('381', '77', '4', '', 'hehe,jbg bio sam iznerviran sry za ovo gore...', '1361638938');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('382', '135', '39', '', 'Da ali nece...
', '1361650551');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('383', '82', '29', '', 'isto kao prvi put samo postavim sliku ovde
ja cu da izbacim na fb
moze link od vaseg fb
al i dalje je Slavica Jelicic
glavna
', '1361652424');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('384', '82', '', '1', 'Samo uplatnica za Srbiju glasi na ime Slavica Jelicic.Link profila: http://www.facebook.com/krekovanoha', '1361655537');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('385', '135', '', '1', 'kako nece,sta tacno pise ?', '1361655568');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('386', '77', '', '1', 'ok.Nije problem', '1361655585');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('387', '138', '35', '', 'zasto mi amx_say ne radi (nije zeleni nick)?', '1361696180');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('388', '135', '39', '', 'Evo sredio sam ja ... Nykolic i ja drzimo server (Mene mozes da zovess Radicko). Brte ako bi mog\'o da restartujes masine mnogo mi koci i ostalo... i nmgu da dodam server na gametrack pisemi Server Is Offline!
', '1361699437');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('389', '135', '', '1', 'Server ti laga ?,nezam dosad nisam imao takve primjedbe,jel i dalje laga ?', '1361717704');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('390', '138', '', '1', 'morate dodati plugin da bi bio zeleni nick.', '1361717721');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('394', '135', '39', '', 'U nekim trenucima mnogo... I meni i drugim igracima!', '1361736772');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('393', '139', '1', '', '<script>alert(\'xss\');</script>', '1361719874');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('396', '140', '22', '', 'Kako se vrsi uplata servera? I koja je cija 32 slota? Da li je moguce smanjiti slotove?', '1361784897');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('397', '140', '', '1', 'Naravno mozete smanjiti slotove,cjena servera od 32 slota je 5€.Cjene za ostale servere mozete naci ovdje: www.ArenaHosting.info/gamehosting.html .Kako uplatiti mozete naci na www.ArenaHosting.info/uplate.html .Kada uplatite samo otvorite novi tiket pod nazivom uplata i unutra posaljite sliku uplatnice.', '1361796481');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('398', '82', '29', '', 'imam jedan problem mozda vi znate ja sam add server na gametracker a tamo ga je imalo a sad nema
a kad ocu da ponovo prijavim pise server ofline neznam zbog cega', '1361810136');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('399', '141', '40', '', 'mozete mi stavit ove extra iteme jel ja nemogu nesto bazuku i jetpack golden deagle golden ak47 minigun,plazma rifal hvala uanprijed :)', '1361826314');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('400', '141', '40', '', 'problem je sto sma ja stavio al nesto nerade', '1361826503');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('401', '77', '4', '', 'ti kad budes mogao ti mi instaliraj server...', '1361826794');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('402', '77', '', '4', 'Trenutno ne radimo sponzorstva :)', '1361829872');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('403', '82', '', '4', 'Pozdrav,

Imamo nekih problema trenutno sa gametracker-om bice sredjeno uskoro.', '1361830266');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('404', '141', '', '5', 'Pozdrav, 

Ubaceno je jetpack+bazooka, golden deagle, golden ak47, minigun, plazma rifal', '1361833134');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('409', '143', '', '5', 'zm_five, zm_zhell ubacene te sam imao, ostale zm mape mozes da nadjes na ovim linkovima:

http://maps.cs-bg.info/maps/cs/zm/page/1
http://gamebanana.com/maps/search?search=zombie%20maps

Pa pogledas lepo koja ti se mapica svidja downloadujes je i ubacis :)', '1361879915');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('410', '143', '40', '', 'ok
', '1361888860');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('411', '82', '29', '', 'oke hvala :DDD', '1361888891');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('412', '144', '40', '', 'zasto nemogu da ubacim server na gtrs kaze da je offline server a nije', '1361888999');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('413', '144', '', '1', 'Problemi sa GT.rs,bice uskoro rjeseno.', '1361890499');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('414', '135', '39', '', 'Public', '1361903317');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('415', '145', '40', '', 'moete li mi staviti zp granade status ono sto pokazuje kad kliknes desni klik moze se stavit kao trip laser ja sam stavio to al neradi ', '1361905207');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('416', '145', '40', '', 'i ako moze i banku da mi stavite jel ova moja neradi koju sam stavio
tek sad vidio na srw', '1361905491');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('417', '142', '37', '', 'amx_say nece da pise zelemin slovima sta je too  ba ', '1361907611');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('418', '142', '', '4', 'Pozdrav,

Boost ce se srediti u najkracem roku.
Da bi ti radio amx_say moras instalirati plugin.

Hvala', '1361908979');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('419', '135', '', '4', 'Pozdrav, 

Da li vam se jos uvek desava taj problem?', '1361909004');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('420', '142', '37', '', 'kako too mozel mala pomocc posto ja sam uzimo od kgm i radilo je sve ovo bgm a ovo ja pojma neam sta je ??????', '1361910494');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('421', '146', '1', '', 'eeeee', '1361911547');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('422', '147', '1', '', 'eeeee', '1361911548');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('423', '142', '37', '', 'jeliiii mozeteli pomocc baaaa
', '1361911884');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('424', '148', '37', '', 'ee oceteli mi ubacitpluing', '1361913363');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('425', '149', '28', '', 'Dali mozete mi smanjiti ove slotove na 14 slotova  i koliko bi trebo da platim ', '1361913756');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('426', '149', '', '1', 'Cjena servera od 14 slotova je 3 €,da mozemo da smanjimo.', '1361915382');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('427', '148', '', '4', 'Pozdrav, o cemu se radi pojasni nam malo?', '1361915826');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('428', '142', '', '6', 'Pozdrav, sredjeno je samo restartuj server.', '1361915830');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('429', '145', '', '6', 'Pozdrav, ubacena Banka i zp granade status', '1361916314');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('430', '140', '22', '', 'Koliko bi kostao server 20 slotova?', '1361919782');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('431', '142', '37', '', 'ok hwala
', '1361920267');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('432', '148', '37', '', 'napravili su mi vasi radnici :)', '1361920294');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('433', '140', '', '6', 'to vam je 4e , sve cene imate na ovom linku.:  http://forum.arenahosting.info/showthread.php?208-Arena-Hosting-Counter-Strike', '1361923947');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('434', '145', '40', '', 'ok
', '1361972531');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('435', '150', '40', '', 'mozete li staviti plugin za beskonacno metaka za svakog', '1361973236');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('436', '151', '43', '', 'zasto ne mogu da restartujem server?', '1361977781');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('437', '151', '43', '', 'Zato sto smo ti dali lazan', '1361980463');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('438', '151', '43', '', 'pa dajte mi moj pravi', '1361980482');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('439', '151', '', '4', 'Pozdrav, sredjeno je to sa restartovanjem servera ove ostale nebuloze sto si pisao uopste ne razumem :)', '1361984114');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('440', '151', '43', '', 'Ali gledaj ja hocu da stopiram server i stopiram ga ali on je i dalje online', '1361984634');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('441', '151', '43', '', 'Recite mi kako da restartujem,nece nista da mi radi,nemogu nikom da dam admina,a danas sam uplatio server :/', '1361985946');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('442', '150', '', '11', 'Pozdrav..
Podeseno vam je Potrebno je samo promenuti mapu..

Pozdrav!', '1361987684');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('443', '152', '43', '', 'vi ste pogresili ovaj server sa ovim ipom 144.76.46.198:27038 vec postoji..molim vas napravite mi moj srever sto sam paltio///', '1361987932');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('444', '151', '', '11', 'Molimo vas strpite se u toku je resavanje vaseg problema...', '1361987935');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('445', '151', '43', '', 'Okej.', '1361988038');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('446', '152', '', '11', 'Uredu, Molimo vas strpi te se kao sto rekoh \"U toku je resavanje vaseg problema\"
', '1361988127');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('447', '151', '', '11', 'Hvala na razumevanju Lep pozdrav..', '1361988230');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('448', '151', '43', '', 'Imate skype?', '1361988258');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('449', '151', '', '11', 'Sve sto vam treba mozete se obratiti na nasem forumu
www.arenahosting.info 
Te kontaktirati nas preko Support ticketa 

Lep Pozdrav', '1361988523');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('450', '151', '43', '', 'ok', '1361988597');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('451', '153', '40', '', 'za koliko ce se tacno rijesit problem sa gtrs', '1361988793');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('452', '153', '', '11', '
Bit ce reseno do kraja sedmice..

Lep pozdrav', '1361989750');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('453', '152', '', '1', 'Rjeseno,sada sve radi kako treba koristim ovu priliku da vam se ispricam na smetnjama koje smo imali.', '1361989889');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('454', '151', '', '1', 'Rjeseno', '1361989903');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('455', '152', '43', '', 'Hvala', '1361991170');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('456', '154', '44', '', 'Dalibi nam pomogli oko sredjivanje servera
', '1361993081');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('457', '154', '44', '', 'treba nam itemi i td', '1361993321');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('458', '154', '', '6', 'Pozdrav, mozemo vam pomoci u zavisnosti sta zelite tj sta podrazumevate pod sredjivanjem servera?', '1361993444');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('459', '154', '44', '', 'treba nam zm klase itemi i neke mape vip shop  banka padobran ako moze unapred hvala.', '1361994231');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('460', '154', '44', '', 'ili da mi date nekog ko bi mi objasnjavo kako se sredjuje server preko skajpa ja bi drzao server do daljnjeg ali nemam ko da me nauci kako se sredjuje server', '1361994407');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('461', '154', '44', '', 'Moze?
', '1361995146');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('462', '154', '', '12', 'Pozdrav 
ubaceno vam je za zombie knife blink 
2 zombi klase (Tight zombie) skok 3x u zrak
(climb zombie) Ima mogucnost da se penje po zidu ili bilo kojem drugom objektu sve dok drzite slovo E
Ubacena banka 
komande su 
bank_create - Pravite account u banci
bank_amount - Prikazuje koliko para imate u banci
bank_deposit - Stavljate pare u banku
bank_withdraw - Vadite pare iz banke
bank_transfer - Prebacujete pare ostalim igracima ili oni vama 
bank_givemoney - Komanda koju vecina trazi (Omogucava da admin daje ammo pack
bank_menu - Otvara bank menu
bank_upgrade - Upgradujete vas account
deposit_maximum - Stavljate sve pare u banku
withdrawl_maximum - Vadite sve pare iz banke 
', '1361995243');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('463', '154', '44', '', 'Hvala
', '1361995591');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('464', '154', '', '12', 'Nista samo smo zaboravili komandu kojom otvaras banku to je 
/bank

Lep pozdrav 
zatvaram ticket ', '1361995758');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('465', '155', '44', '', 'Da li bi mi pojasnili kako se sredjuje server unapred hvala!', '1361996262');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('466', '155', '', '13', 'Koji mod servera je u pitanju ?
Sta te konkretno zanima oko serdjivanja servera ?

Navedi sve pa cemo ti objasniti .

Srdacan pozdrav .', '1361998395');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('467', '156', '37', '', 'ee mozeteli mi pomoc  kad pisem zelenim slovima  pisemi teels all i onda zelena slova skupa sovimm kako to da ukinemm mozeteli mi pomocc pliss', '1362009170');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('468', '156', '', '6', 'Pozdrav, ako ne zelis da ti pise zelenim slovima iskljucis ovaj plugin std_admin_color_chat.amxx

Ali moras da znas da ako iskljucis taj plugins neces imati komandu admin say, tj kada admini pisu izmedju sebe na u@ to ce videti i ostali igraci.', '1362015680');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('469', '155', '44', '', 'Kako se ubacuje vips.ini vip shop sredjivanje vipshopa  oruzije kako seubacuje to jest gde ,zm klase ,kako se stavljaju laseri na bombe i gde se stavlja admin klase padobran kako se stavlja vip da ima 3 skoka hvala unapred!', '1362035049');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('470', '155', '', '12', 'Pozdrav 
vips.ini se na kraju ubaci kad se potrebni falovi za vipove ubace,dalje 
vip.cfg tu imas sva podesavanja oko vipova za zm klase potreban ti je plugin
Nademodes.amxx Kada to ubacis u plugins 
nadjes Plugins.ini i tu upises Nademodes.amxx 
koristi sledecu putanju 
Web FTP =CSTRIKE = ADDONS = AMXMODX = Plugins Tu ubacis dati plugin..I sacuvas Posle ponavljas isti postupak znaci 
Web FTP =CSTRIKE = ADDONS = AMXMODX = CONFIG = PLUGINS.INI  Tu upises dati plugin..I sacuvas Posle promene mape ucitat ce se plugin i raditi 
Lep Pozdrav', '1362040066');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('471', '155', '', '12', 'Edit Nademodes ti je plugin koji omogucuje Lasere na bombama a Zm klase isto ubacujes kao svaki drugi plugin..', '1362040152');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('472', '135', '39', '', 'Mislim da ne. Hvala na razumevanju! Inace zasto ne mogu dodati server na gametracker-u?', '1362040891');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('473', '135', '', '12', 'Resit ce se do kraja Sedmice u vezi Gt.rs

Lep Pozdrav ', '1362040937');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('474', '155', '44', '', 'Kazite mi ubacio sam vip plugin ali nece da radi da li bi mogli da proverite i da ga namestite hvala!', '1362055907');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('475', '155', '', '12', 'Pozdrav namestio sam vam da radi vip plugin. Podesavate ga u zm_vip.cfg
Lep pozdrav ...', '1362057060');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('476', '155', '44', '', 'Hvala', '1362058757');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('477', '155', '', '12', 'Zatvaram ticket u koliko budes imao problema otvori novi 
Lep pozdrav ', '1362058834');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('478', '157', '44', '', 'Dali bi mogli da pogledate ubacio sam m3 items i neradi da li bi mogli da mi vi sredite da vip ima da kupi m4golden ak47 golden m3 golden i djek pek i jos nesto lepo po vasem izboru a da cene za golden budu 50 amo i padobran da mi ubacite hvala!', '1362066061');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('479', '157', '', '14', 'Tebi treba VIP plugin , jesam li upravu ? 
Navedi ovde na koji flag ti treba vip plug , pa cemo nesto srediti ?
Takodje ostavi ovde link od tih modela sto zelis da idu uz VIP plug da se istestira sve kad plug bude zavrsen .

Pozdrav.', '1362072382');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('480', '157', '44', '', 'Ima vip plugin ima vip ali neznam da ubacim u vip shop oruzije    https://sites.google.com/site/dantesprotutovi/vip-za-cs-1-6-zombie-mod ovde ima sve sto sam naveo Hvala!', '1362073310');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('481', '156', '37', '', 'ocu ja da pise zelenim slovima ali ono pise zelenim slovima i tell all i onda sta ja hocu
', '1362075189');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('482', '157', '', '14', '1. U ovom zombie_vip pluginu nemas te modele oruzija !
Ovde nemas te modele sto si naveo da zelis da ubacis uz ovaj plugin !

2. Koji ti je mod servera ? 

', '1362078080');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('483', '156', '', '14', 'Pa kako bi ti da ti pise kad pises zelenim slovima ? Kako ti izlazi kad pises na amx_say a kako kad pises na u@ admin say ?', '1362078203');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('484', '157', '44', '', 'Mod je zm 5.0.5 udacio sam  plugin ali nije radio a vi ste ga namestili a zaista neznam stranicu sa koje bi mogli to da skinete zato vas molim da vi nadjete neku stranicu Hvala1', '1362080373');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('485', '158', '29', '', 'Jos nije sredjeno ono za gameracker??', '1362080687');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('486', '158', '', '4', 'Nije jos uvek gledacemo da sredimo u toku ove nedelje naravno cim bude sredjeno bices obavesten.Pozdrav', '1362081698');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('487', '157', '', '6', 'Pozdrav, nemamo mi to, moras sam da nadjes sta zelis, pa ako ne znas ubaciti posalji nama, to mozemo uraditi.', '1362084901');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('488', '157', '44', '', 'ubacio sam golden m3 ali neznam da namestim da je za vipa i da je ima vip da li bi vi mogli hvala zp_extra_golden_m3.sma ima de sam ubacio jos ako mozete namestite da je ima u vip shop', '1362085314');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('489', '157', '', '14', 'Posalji nam taj sma kod da pogledamo . Postavi ovde LINK odakle si skinuo ti taj plugin pa cemo pogledati . ;)', '1362087742');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('490', '159', '40', '', 'pozz mozete mi staviti antigun holy water gun i jos nerade oni golden ak47 i golden deagle', '1362089179');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('491', '156', '37', '', 'ev vako pise kad pritisnemi ili ukucam u conzulu amy_say  vako :
TG|KoBrA  tells all:onda sta ja hocu da napisem mozeli bez ovog tells all', '1362090986');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('492', '156', '', '6', 'ne takav je plugin nas, ako hoces da promenis moras naci drugi plugin.', '1362092600');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('493', '157', '44', '', 'http://www.extreamcs.com/forum/diverse-cs/zp-new-plugins-list-9-6-2011-t118490.html na ovoj stranici ma sve hvala. odatle sam skido!', '1362130114');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('494', '159', '', '6', 'Poz, sad bi trebalo da radi samo restartuj server.', '1362130280');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('495', '157', '', '6', 'hmmm ne radimo mi te stvari, tj ne menjamo sma, da bi ubacio u VIP meni moras da menjas sma kod, to ces morati sam.', '1362130403');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('496', '157', '44', '', 'A kako se to radi ja sam pocetnik kad bi imao nekog da me nauci nebi vas davio meni je zao ali stvarno bi hteo da naucim da sredim mod zm sad sam kreno da drzim i drzacu ga stalno jer imao sam e trail do sad drug i ja smo drzali ali nije nikakav hosting baguje mnogo i laga a vas koliko vidim je stvarno ekstra sve pohvale!Hvala!', '1362131015');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('497', '159', '40', '', 'reset sam al nerade ponovo olden ak47 golden deagle i ovaj antidotegun i holy water gun
', '1362131131');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('498', '159', '40', '', 'reset sam al nerade ponovo olden ak47 golden deagle i ovaj antidotegun i holy water gun
', '1362131392');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('499', '157', '', '6', 'Moras sam da naucis, mi u podrsci radimo osnovne stvari i bas nesto sa strane aili menjanje sma fajlova i td.. to ne iz prostog razloga sto tu treba dosta vremena.', '1362131718');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('500', '159', '', '6', 'Ne znam u cemu je problem, prosledicu tiket kolegi da proba on. ', '1362131755');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('501', '159', '40', '', 'ok', '1362132905');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('502', '156', '37', '', 'bgt mozeteli mi vi to rijesit ja nezznam too uKGB hosta to dode samo  ', '1362134655');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('503', '157', '44', '', 'Kazite mi samo ja sam ubacio golden m3 e sad de treba da ga ubacim da ima samo vip taj  item?', '1362134676');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('504', '156', '', '6', 'Nop, nemamo drugi plugin to je nas i mi taj koristimo.', '1362138251');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('505', '157', '', '14', 'Postovani Ivane. 

Pomocicemo ti i oko ovog problema, ali temu moras da otvoris na nasem forumu .
Ovde na tiketima podrska pomaze iskljucivo oko rada servera, i nekih podesavanja kao stu su : 

Tipa : promena slotova, promena naziva servera, promena moda, reinstalacija servera , itd... sva druga pitanja i problemi koje imate oko vasih servera obratite se na forumu . Znaci otvorite temu namenjenu za vase pitanje i cekate dok vam neko ne odgovori. Pozdrav.', '1362140644');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('506', '159', '', '12', 'Pozdrav Ubacio sam ti Golden Ak-47
sto se tice holly water gun nisam siguran u njega te ako ti ga ubacim moze dovesti do padanja servera,
dalje ovaj Antidotegun cu se potruditi da nadjem ispravan..
Lep pozdrav..', '1362142013');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('507', '159', '', '12', 'Edit.Pricekaj dok nadjemo adekvatne plugine jer ove sto imamo nerade..
Lep pozdrav', '1362142890');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('508', '159', '40', '', 'ok ', '1362143862');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('509', '159', '40', '', 'al drug neradi sad sam bio na srw neradi golden ak47', '1362144097');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('510', '159', '40', '', 'da nije zbog zm vipa', '1362144379');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('511', '159', '', '12', 'Ne nebi smelo to podici cemo test server i isprobati te plugine kad budemo sigurni da dobro rade i ne obaraju servere ubacit cemo ti..Gledat cemo da sto pre resimo ', '1362146469');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('512', '157', '44', '', 'Hvala
', '1362154272');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('513', '140', '22', '', 'Možete li mi smanjiti slotove na 16 ? ', '1362164626');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('514', '140', '', '14', 'Naravno da moze. 

Da li zelis to odmah ili posle isteka servera ?', '1362164939');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('515', '140', '22', '', 'odma smanjite slotove
', '1362165338');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('516', '140', '', '14', 'Smanjeno na 16 -slotova . 

Da bi se sve aktiviralo mora ces da restartujes server preko GamePanel-a !', '1362167873');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('517', '156', '37', '', 'jojj bgt mazoo al nekontateee ja hocuu da pise al samo da mi izbrisete ovo tells all mozel bez togaa bgttttt !!!!!!!', '1362171583');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('518', '156', '', '6', 'Ne moze da se menja takav je plugin.', '1362172599');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('519', '156', '', '16', 'Pozdrav, reseno je to u vezi plugina stavljen je novi, pa vas obavestavam u koliko zelite da ga ukljucite potrebno je samo da promenite mod, tj (stopirate server u panel idete promeni MOD i opet odaberete Public mod, sacekate da isntalira i to je to) Izvinjavamo se sto ste morali da sacekate da se ovo resi :)) ', '1362270631');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('520', '153', '', '16', 'Resen Problem sa GameTracker.rs mozete dodati vas server.', '1362275302');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('521', '160', '44', '', 'Dalibi mogli da mi podesite da je free vip od 21:00 do 08:00. Hvala!', '1362297107');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('522', '160', '', '20', 'Pozdrav Podeseno vam je 
Daljnje podesavanje mozete prepaviti u 
zm_vip.cfg
Lep pozdrav ', '1362305217');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('523', '160', '44', '', 'Pise mi VIP Mod je Iskljucen.. kako da ga ukljucim', '1362307459');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('524', '160', '44', '', 'Molim vas da li bi mogli da mi ukljucite vip shop pise da je vip shop iskljucen.Hvala!', '1362312689');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('525', '160', '', '20', 'Podeseno..
Lep  pozdrav ', '1362317210');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('526', '161', '40', '', 'jeste testirali one plugine za extra iteme i mozete li mi ubaciti rock guitar pusku', '1362317747');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('527', '160', '44', '', 'Najlepse hvala.Pozdrav!!', '1362319242');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('528', '160', '44', '', 'Sad sam probo kada hocu da uzmem oruzije na server pise vip mod nije ukljucen!', '1362319580');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('529', '160', '44', '', 'To es iskljucen je vip mod
', '1362319661');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('530', '160', '', '20', 'pa jel imas oruzija u vip-u ako nemas nista u vip meniju nemozes uzeti...
', '1362326902');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('531', '161', '', '20', 'Pozdrav nismo jos imamo mnogo posla ovih dana strpi se veceras cemo pogledati pa ti ubacimo neke.', '1362326946');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('532', '160', '44', '', 'imam ali pise da je  vip mod je iskljucen ', '1362329166');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('533', '160', '44', '', 'kad hocu da kupim oruzije to pise', '1362329201');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('534', '162', '37', '', 'ee oceteli mi pomocc da ubacite pluing za boost  da kad igraci napisu /boost i da im pise iz koje zemlje i to tako pomocc pliss  i da mi se tamo na gametrackeru pojavi srw kad igraci boostajuu  ajde plisss', '1362330995');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('535', '163', '39', '', 'Zasto nmgu da postavim server na GameTracker?
', '1362332124');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('536', '163', '', '4', 'Pozdrav

http://www.gametracker.rs/server_info/144.76.46.198:27036/


Evo dodao sam ti ja server samo potvrdi vlasnistvo , sigurno si negde napravio gresku :)', '1362332503');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('537', '160', '', '20', 'Postovani jel kad kupujete regularno oruzije ili neko koji vipovi samo imaju??
Lep pozdrav', '1362333035');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('538', '162', '', '19', 'Da bi vam se pojavio server na gametracker.rs posle posta nije potreban nikakav plugin.Sve sto treba da uradite jeste da dodate server na gametracker.rs i onda boost-ujete.', '1362333075');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('539', '162', '', '20', 'Postovanje Kolega Boris nije shvatio..Ubacen vam je plugin isti ce raditi nakon mjenjanja mape ', '1362333428');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('540', '162', '37', '', 'aha znaci daba sam ja vamo nesto ubacivo
ok
', '1362337207');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('541', '162', '37', '', 'daba sam ja ovo ubacivo ok ako ima nis onda ovo sam ja bio ubacio 
!tDa vidis kako boostovati server iz svoje drzave say : !t/boost
@/boost~!gIzaberite drzavu odakle si : !t /srb !g, !t/cg !g, !t/mkd !g, !t/bix !g, !t/xrv
@/srb~!gUkucajte putem sms : !t100 GTRS [144.76.46.198:27033] Vase ime ili nick. Posaljete na broj 1310
@/cg~!gUkucajte putem sms : !tFOR GTRS [144.76.46.198:27033]Vase ime ili nick. Posaljete na broj 14741
@/bix~!gUkucajte putem sms : !tTXT GTRS [144.76.46.198:27033] Vase ime ili nick. Posaljete na broj 091810700
@/mkd~!gUkucajte putem sms : !tTAP GTRS [144.76.46.198:27033] Vase ime ili nick. Posaljete na broj 141551
@/xrv~!gUkucajte putem sms : !tTXT GTRS [144.76.46.198:27033] Vase ime ili nick. Posaljete na broj 67454.', '1362337327');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('542', '162', '', '20', 'Sad sam bio na serveru lepo plugin radi 
komanda je /boost 
Lep pozdrav ', '1362338354');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('543', '160', '44', '', 'Samo sto vipovi imaju', '1362338381');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('544', '160', '', '20', 'http://forum.arenahosting.info/showthread.php?473-Problem&p=2131#post2131

Jesi li taj plugin koristio ili neku drugi ??
Lep pozdrav ', '1362338589');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('545', '160', '44', '', 'Sad sam sa jednim likom prico reko je da nema itema za vip  za zombi plugin5.0 da li bi mogli da promenite neki drugi zm ali da nebude 5.0.5
', '1362339088');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('546', '162', '37', '', 'sta je ono nece mi sada chat na srw bgt sta vam je onooo samo pise pomozite ovom srw bost ovo samo pise nece izbacit chat
alooo sta ste ono radili ba', '1362339114');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('547', '160', '', '20', 'Mislim da nije to do moda..
Lep pozdrav ', '1362339212');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('548', '160', '44', '', 'I sta da ja radim neznam jedino da se nebakcem vi se sa nicim i da neigram cs a server neka propadne', '1362339382');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('549', '160', '44', '', 'Ne nego nema itema za 50 mod u tome je problem', '1362339466');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('550', '162', '', '20', 'Pozdrav imamo problem s vasim serverom Strpi te se dok resimo problem..
HVALA', '1362339545');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('551', '162', '', '20', 'Pozdrav imamo problem s vasim serverom Strpi te se dok resimo problem..
HVALA', '1362339545');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('552', '160', '', '20', 'hmm Pricekaj prosledit cu ticket ostalim kolegama mozda oni znaju do cega je problem..
Hvala i Lep pozdrav ', '1362339625');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('553', '162', '', '20', 'Server je sada online i chat normalno radi Lep pozdrav..', '1362339754');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('554', '160', '44', '', 'Ok
', '1362340288');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('555', '162', '37', '', 'ali neradi boost sad 
', '1362342243');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('556', '162', '37', '', 'kad ukucas /boost nista ne izbaciva saad ste ti pokvarili :))', '1362342274');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('557', '164', '38', '', 'Kada zelim da dodam server na gametracker.rs nece kaze da je server offline a startovao sam server', '1362342489');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('558', '165', '43', '', 'nema maps.ini i ne mogu da dam mapu de_dust2_long i fy_snow', '1362342883');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('559', '162', '37', '', 'nece boost ba sta je ovo sada aj napravi te to treba mi bosst oce igraci boostati bgm ba
', '1362343157');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('560', '165', '', '19', 'Mapu mozete ubaciti tako sto cete da idete na web ftp,cstrike,maps i na dnu vam se nalazi dugme upload file tu mozete da dodate mapu.', '1362345790');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('564', '162', '', '16', 'Pozdrav,  moras da uradis reinstal servera da bi ti promenio gamefajlove, pre reinstala sacuvaj bitne fajlove kao sto su users.ini  advertisements.ini  i td... Jer ove gamefajlove sto imas sad na serveru su bagoviti i zbog toga ne rade dosta plugina, znaci reinstal server i kad to uradis javi ovde u tiketu, pa cud a ti ubacim plugin za boost.', '1362353264');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('563', '160', '', '16', 'Pozdrav, promeni mod na Zombie plague 4.2 , posle toga trebalo bi da radi. Nas mod je 5.0 moguce da plugin baguje zbog toga, jer sam lepo pregledao sve fajlove i nisam konstatovao tu neki problem.', '1362352505');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('565', '162', '37', '', 'ok', '1362391576');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('566', '162', '37', '', 'ali neznam reinstalirat srw kako to a sacuvo sam podatke vazne', '1362392266');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('567', '162', '37', '', 'sta ste vi upabcili na srw bgt nesto mi leta samo bost  nemogu cgat mislim nemozemo se dopisivat samo prolazi nesto bosst i jeos nesto brzoo de popravite too ba ', '1362394214');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('568', '162', '37', '', 'nemoze se niko dopisivat na srw baa zirba mi jee ', '1362399744');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('569', '161', '40', '', 'jeste uradili to', '1362400804');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('570', '162', '', '16', 'Pozdrav, Niste reinstall server kao sto sam vam rekao, ubacivali ste plugin za boost koji ne radi pa je on prouzrokovao onaj bag sto ste naveli, da bi vam resio problem morao sam da reinstall server, sacuvao sam vam fajlove i ubacio users.ini i advertisements.ini  takodje ubacio sam vam mdb ban sistem, i ovaj plugin za boost sad kad udjete na server kucate say /boost  za ostala podesavanja plugina imate u plugins.ini', '1362402647');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('571', '161', '', '20', 'Ne jos ..
Lep pozdrav ', '1362402750');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('572', '161', '', '16', 'Pozdrav, nismo uradili i necemo ovih dana jer imamo posla oko panel-a i modova to nam je prioritet da sredimo, te plugine sto vi hocete moramo da testiramo jer mi imamo zombie plague 5.0 i pitanje je dali rade ti extra itemi na tom modu, pa stim moramo sve da sredimo i ubacicemo u novom modu ako bude sve kako treba.', '1362402776');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('590', '171', '41', '', 'Ne mogu da pustim skriptu na cw server. Kako da skinem komapdu /rank i /rs ? Moze pomocc?  -.-', '1362412663');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('595', '171', '', '16', 'Pozdrav, ubaceni su plugini za metch skriptu, pokreces je ovim komandama amx_match ct t mr15 esl recdemo   ili ako zelis skriptu bez tagova amx_match2 mr15 esl recdemo  ovo recdemo mozes da stavis a i nemoras kad stavis skripta ti snima demo koji se nalazi u cstrike folderu :)', '1362416841');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('596', '171', '', '16', 'a da i samo restartuj server da bi ti ucitao izmene koje sam odradio.', '1362416933');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('597', '171', '41', '', 'Jos jedno pitanje, kako da skinem komandu /rs? xD
a mec mislim da nece da se pokrene ni tako :D 
PROVERICU PA JAVLJAM', '1362417545');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('598', '171', '', '16', 'Iskljucen /rs', '1362418902');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('602', '162', '37', '', 'ee sada nema kad ukucam admin neizbaci ko je admin ni niss bgt  de ubaci te to  i nema mi pola mapa bgt', '1362423277');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('603', '162', '', '4', 'Pa kao sto je kolega napisao odradjen je reinstall servera , tako da ponovo moras odradi ko je admin i ubaciti stare mape.

Hvala', '1362425870');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('604', '162', '', '19', 'Samo da dodam,mape ubacujes tako sto ides u web ftp,cstrike,maps i na dnu se nalazi dugme upload file tu izaberete mapu sa vaseg kucnog racunala i ubacite.Sto se tice reklama i ko je admin na serveru to mozete da sredite u fajl-u advertisements.ini', '1362426036');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('605', '175', '40', '', 'http://www.mediafire.com/?kxvksjnicc94jib ovako meni je drug dao ove extra iteme rekao da rade 100% na 4.3 i 4.0 zm modu ja sam ubacio guitar nije radilo pa mi je mrsko bilo isprobavat druge pa bi vas zamolio da isprobate sve ove druge jel rade', '1362428409');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('606', '175', '', '20', 'Postovanje, istestiraj te plugine, mi smo tu samo da resimo eventualne probleme s vasim serverom znaci mi smo tu da se pobrinemo da je vas server stalno aktivan U koliko je placen 
Lep pozdrav', '1362428886');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('607', '175', '40', '', 'drug meni je vas gl. rekao da vako uradim', '1362430561');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('608', '175', '', '20', 'Da ali shvati ti nas Mi nemozemo tebi to raditi, jer zamisli kad bi svakom tako..Ubrzo na forumu ce biti tutorijal kako ubaciti pravilno plugin pracen slikama..
Lep pozdrav..', '1362430746');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('609', '176', '41', '', 'MNOGO MI LAGUJE SERVER,,, STA DA RADIMM??', '1362434054');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('610', '177', '44', '', 'E ovako mozete ubacite vip sto podrazumeva (jackpack+bazuka,i jos 3 puske neke za vip M4 M5 i jos tako) da promenite druge zm klase, i da ubacite komandu za davanje amo pakova npr zp_ammo_SOKO 40 Hvala Unapred <3', '1362434101');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('611', '176', '', '19', 'Dosad nismo imali zalebe na to,mozete nam dostaviti koje ste pllugine tacno ubacili ?', '1362434230');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('612', '176', '41', '', 'nisam nista ubacivao... Mogu jedino da stopiram promenim na cw mod ponovo(iako vec jeste) cekam 5 min i onda da probam, ja drugo ne znam, znaci kako sam uzeo server bio je problem nesto sa skriptom i to ste mi rekli, sada sam tek startovao server i ovi iz klana usli i svima ping po 100-200', '1362434466');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('613', '176', '', '19', 'Sada sam ja bio na serveru i ping mi nije skako preko 55 samo da napomenem da ping zavisi od konekcije.Tako da je najvjerovatnije u to vrjeme bio neki DDos napad.', '1362435104');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('614', '176', '41', '', 'ok, a pise za reklame da moram da se komsultujem sa podrskom.. mogu da stavim jos nesto svoje? tipa dobrodosli i nas forum ili tako nesto:) gde mogu da stavim fake ping? :)', '1362435229');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('615', '176', '', '19', 'Naravno vi imate potpuno pravo na server,mozete da dodajete reklame kakve zelite :)', '1362435880');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('616', '177', '', '16', 'Pozdrav, nemamo te plugine.', '1362440018');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('617', '177', '44', '', 'pa sta vi imate !', '1362484219');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('618', '177', '', '16', 'samo neophodne plugine za rad servera, podrska sluzi kada imas neki broblem sa serverom, a ne da ti mi sredjujemo server.', '1362487245');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('619', '160', '44', '', 'Da li bi vi mogli da ga promenite na 4.2.Hvala. Problem je sto ja i drug zajedno drzimo server a neznamo da ga sredimo!', '1362496149');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('620', '178', '44', '', 'Da li m ozete da nam stavite boost na server
', '1362498380');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('621', '178', '', '16', 'Pozdrav, ubacen je boost plugin, promenite mapu ili restartujte server da se plugin ucita.


', '1362499780');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('622', '178', '44', '', 'Hvala
', '1362505183');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('623', '179', '44', '', 'Dali mozete da napravite redirekt na ovaj ip 88.198.62.189:27600 kada je nas pun server da automatski igraci prelaze na taj server.Hvala!', '1362508085');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('624', '179', '', '16', 'Ubacena Redirekcija. Srdacan pozdrav :)', '1362512851');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('625', '180', '40', '', 'sto nema u mom srw maps.ini u conf', '1362515414');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('626', '161', '40', '', 'mozete li mi ubacit ove plugine koje mi je drug dao rekao je da radi 100% na modu 4.3 i 4.0 mozete li isprobati ove plugine i ako rade da ih stavite http://www.mediafire.com/?kxvksjnicc94jib', '1362515544');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('627', '179', '44', '', 'Hvala
', '1362517798');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('628', '181', '44', '', 'Da li mozete da sredite da je vip free od 21:00 do 08:oo sredili ste bili ani nije radilo!', '1362518390');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('629', '182', '52', '', 'Sto mnogo laga?', '1362519234');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('630', '181', '', '16', 'Pozdrav, to ti je ukljuceno sve ne znam sto nece, mozda plugin nije dobar.ti svi plugini sto vi trazite su bagoviti i moze da pada server, e sad ja sam odradio tu neke promene trebalo bi da radi sad, samo promenite mapu, pa javite ako nece da vidimo nesto drugo da smislimo :))', '1362519706');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('631', '182', '', '16', 'Pozdrav, taj lag je do vas nije do server, sad sam usao i sve lepo radi.', '1362519757');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('632', '181', '44', '', 'ima vip ali od 10 ne od 9', '1362519847');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('633', '180', '', '16', 'Pozdrav, ubacen vam je maps.ini fajl, fajl sluzi samo ako na serveru ukljucite mapchoser.', '1362519860');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('634', '181', '', '16', 'hmmm od 22h do 08:00 ujutru ?', '1362519993');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('635', '161', '', '16', 'Pozdrav, moraces sam to :)', '1362520032');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('636', '181', '44', '', 'da', '1362520262');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('637', '161', '', '16', 'Skinuo sam ove plugine, po meni ovo ne valja ima dosta stvari, moze da se desi da pada server, moj je savet da ne ubacujes ovo, ali ako bas insistiras ubacicu, sto se tice testiranja kao sto sam ti rekao moraces sam :)', '1362520300');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('638', '181', '', '16', 'nista ovako, te plugine je tesko nastelovati jer ima 100 cvar komandi, ja sam to nastelovao kako je autor plugina napisao, sad sam odradio jos jednu caku, trebalo bi da radi, uzmi promeni mapu vidi dali sad uopste radi plugin pa javi mi na mail demon@sd-hq.info a sacekacemo sutra 21h pa proveri dali radi, pa mi javi na tiket.Ako ne radi da trazimo neko resenje.', '1362520554');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('639', '181', '44', '', 'OK interesuje me kako da se smanji kada si zm i kada te pucaju da te neguraju meci ovo je puno kada skocis i kada te pucaju u tom momentu odbaci te na drugi kraj mape da li to mozete nekako da smanjite ja sam trazio ali neznam gde je to. Hvala!', '1362521628');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('640', '181', '', '16', 'Ne moze to da se smanji, to je tako u mod-u.To je svrha tog mod-a', '1362521748');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('641', '181', '44', '', 'Drug na prosli server sto smo imali je smanjivao ja neznam kako se to radi a njega nemogu da nadjem znam da moze samo !', '1362555782');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('642', '181', '', '20', 'Pozdrav ja sam nesto uradio i smanjio sam na 25% te iskljucio odbijanje zombia kad covek puca u njega..
Lep pozdrav ', '1362560864');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('643', '181', '44', '', 'da li mozes da stavis na 50 posto i dalje puno gura . Hvala!', '1362561304');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('644', '181', '', '20', 'Podeseno na 25% ako bude uredu javite,
Lep pozdrav ', '1362561568');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('645', '181', '', '20', 'Morate promenuti mapu da bi se promene ucitale 

', '1362561589');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('646', '181', '44', '', 'Promenjena je!', '1362563136');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('647', '181', '', '20', 'Uredu zatvaram ovaj ticket ako bude problema otvorite novi
Lep pozdrav ', '1362563440');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('648', '181', '44', '', 'Hvala!', '1362563659');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('649', '183', '44', '', 'Da li bi mogli da mi ubacite istu banku ko sto imam ali da radi ova neradi krade amo nece da sacuva i nemoze da se podize iz banke.Hvala', '1362568981');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('650', '183', '', '20', 'Pozdrav da vi vam banka uspesno radila morate da budete na Steam cs 
jer banka pamti na Steam,u koliko igrate na Valve tj protokol 47 banka nece zapamtiti trenutno stanje ammo packeta 
morate igrati na protokol 48 Ili poznatiji p48
mozete skinuti onaj cs od kgb-a,Inace ova banka savrseno radi komande su 
bank_create - Pravite account u banci
bank_amount - Prikazuje koliko para imate u banci
bank_deposit - Stavljate pare u banku
bank_withdraw - Vadite pare iz banke
bank_transfer - Prebacujete pare ostalim igracima 
bank_givemoney - Komanda koju vecina trazi (Omogucava da admin daje ammo pack
bank_menu - Otvara bank menu
bank_upgrade - Upgradujete vas account
deposit_maximum - Stavljate sve pare u banku
withdrawl_maximum - Vadite sve pare iz banke 

Komande na say: 
say /bank otvara bank menu 
Ja sam licno koristio ovu banku jer nema bagova 
Lep pozdrav 
', '1362572545');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('651', '183', '44', '', 'Da li mozete da mi ubacite server na gametracker.rs. Hvala!!', '1362576473');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('652', '183', '', '20', 'Pozdrav prosledjen ticket Kolegi..Strpite se i cekaj te odgovor javit ce se u istom ticketu..
Lep pozdrav', '1362578858');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('653', '183', '44', '', 'Odradi o sam ja.', '1362591281');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('654', '183', '', '21', 'OK sredjeno . 

Zatvaramo tiket. ', '1362592888');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('655', '184', '22', '', 'mozetel mi poslat sliku jedne popunjene uplatnice posto neznam sta sve treba upisat prvi put placam molim vas posaljite mi slik da sutra  uplatim server', '1362600683');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('656', '184', '', '19', 'Sve vezano za uplate pa i sliku uplatnice mozete naci na www.ArenaHosting.info/uplate.html ,nakon uplate uslikajte uplatnicu i upload-ujte je negdje na net(dodaj.rs) kada ste to uradili u casem game panel-u se nalazi polje dodaj uplatu,tu ispunite navedena polja i vas server ce biti produzen.

Ukoliko imate dodatnih pitanja ne ustrucavajte se da nas kontakritate.', '1362601203');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('657', '185', '40', '', 'nakon sto sam stavio cod mod by hercin ja sam stopirao server da bi ubacio mod i server nisam vise mogao podic
', '1362662821');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('658', '186', '41', '', 'Da li mozete da mi instalirate pingfaker da ping bude 15-20 ..
Pokusavao sam svasta ali nece, ako bi vi mogli pokusati..
Hvala unapred :)', '1362673169');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('659', '187', '35', '', 'Zasto mi je server offline?', '1362681340');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('660', '188', '35', '', 'sto mi je server sa gt.rs izbrisan,sada nmg da ga dodam pise da je offline?', '1362682093');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('661', '188', '', '19', 'Do gametracker.rs-a je,upravo smo ih kontaktirali nadamo se rjesavanju problema uskoro.', '1362682347');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('662', '186', '', '16', 'Pozdrav, ubacen Pingfake samo restartujte server.', '1362684081');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('663', '186', '', '21', 'To ti je plug koji prikazuje lazan PING , jel to zelis ? ', '1362686071');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('664', '186', '41', '', 'da', '1362687244');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('665', '186', '', '21', 'Ok . Ako je reseno pitanje , zatvori tiket. ', '1362688018');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('666', '189', '40', '', 'mozete mi ubaciti plugin za deathrun vip-a koji radi i da uklonite da se dobija usp na pocetku runde', '1362761210');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('667', '189', '40', '', 'i assassin skin naravno', '1362762271');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('668', '189', '', '16', 'Pozdrav ubacen deathrun vip, i izbacen usp. Javi samo dali lepo radi vip i dal i dalje daje usp na pocetku ali nebi trebalo :)', '1362762479');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('669', '189', '40', '', 'koji je flag za vipa', '1362763841');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('670', '189', '40', '', 'koji je flag za vipa', '1362764132');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('671', '190', '40', '', 'mozete li mi da ubacite plugin za ljmenu ono sto odredjuje koliko skocis lj', '1362765032');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('672', '191', '40', '', 'mozete li mi da ubacite plugin za ljmenu ono sto odredjuje koliko skocis lj', '1362765373');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('673', '192', '40', '', 'mozete li mi da ubacite plugin za ljmenu ono sto odredjuje koliko skocis lj', '1362765382');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('674', '189', '', '16', 'Flag  \"t\"', '1362767759');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('675', '190', '', '16', 'Ubaceno Restartuj server.', '1362768793');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('676', '193', '40', '', 'jel vam problem da mi ubacite par mapa koje vam nabrojim deathrun_bieber_f jel kaze mi errorr kad ovu mapu ubacujem bsp, deathrun_grass deathrun_astro, deathrun_midr_csbr,deathrun_all_green,deathrun_dojo,deathrun_cityhotel_v2,deathrun_forest2_final,deathrun_duality_final 

i mape stavite u maps.ini hvala unaprijed :)', '1362775452');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('677', '193', '', '19', 'Postovani,sve mape mozete naci ovdje: http://maps.cs-bg.info/maps/cs/ i kakav vam error tacno izbacuje prilikom ubacivanja mapa ?', '1362776882');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('678', '193', '40', '', 'kaze dogodila se pogreska prilikom ubacivanja ovog fajla
', '1362777741');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('679', '193', '', '19', 'Nece ni nama da ubaci,testiracemo pa cemo da vam javimo u cemu je problem.', '1362778550');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('680', '193', '', '16', 'Pozdrav, ja sam sad upload preko Web FTP-a 1 mapu na tvoj server i lepo radi sto se tice nasem panela, to sto tebi izbacuje je ili do mape nesto ili do internet konekcije, zato vam predlazem da koristite FTP Client FileZila ili Smart FTP. Mi mape ne ubacujemo, jer ih nemamo i nemozemo da garantujemo za njihovu ispravnost.', '1362778624');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('681', '193', '40', '', 'sta da napisem u filezili host', '1362779110');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('682', '193', '', '16', 'Imate FTP podatke U panelu HOST: upisete IPadresu bez PORT-a, User: upisete vas User koji je u panelu i PW: isto imate u panelu.', '1362779235');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('683', '193', '40', '', 'ok to ostalo znam a samo nisam znao za host', '1362779268');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('684', '193', '', '16', 'oki :)', '1362779312');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('685', '194', '22', '', 'mozetel nam produzit server do ponedjeljka
uplacujemo u ponedjeljak molim vas', '1362781183');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('686', '194', '', '19', 'Moze nije problem,tacnije server ce biti aktivan do usorka,tako da do tada mozete da produzite :)', '1362781324');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('687', '194', '22', '', 'to kralju hvala ti puno uplacujemo u ponedjeljak', '1362781406');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('688', '195', '38', '', 'Nemogu da dodam srw na gametracker.rs koji je problem kaze da mi je server offline a nije
', '1362820956');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('689', '195', '', '4', 'Pozdrav, imas odgovor ovde http://forum.arenahosting.info/showthread.php?488-gt-rs', '1362822808');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('690', '196', '57', '', 'Kako da dodam nove plugine i promjenim izgled modela od covjeka nemesisa Itd.', '1362837705');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('691', '196', '', '16', 'PLudine dodajes u liniki cstrike/addons/amxmodx/plugins  tu ubacis plugin kasnije ides ovde  cstrike/addons/amxmodx/config/plugins.ini i upises naziv plugina pri kraju,

Modele ti je tesko menjati moras naci neki tutorijal za to, jer ne mogu da ti objasnim u par reci kako to da radis.', '1362838729');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('692', '196', '57', '', 'Ma ja cu neko kul modele sa interneta da skinem samo da dodam nemoram ja svoje dodavati ', '1362838919');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('693', '196', '', '16', 'Sve jedno je dali skidas ili ne teko je za pocetnike, ali ae ja cu da ti napisem.


Plugin za menjanje modela igraca na serveru:  http://forums.alliedmods.net/showthread.php?p=958925


Plugin za menjanje pusaka na serveru: http://forums.alliedmods.net/showthread.php?t=43979


Ostalo je skines modele koje zelis uploadujes u models folder, onda ides u new-models.ini i tu menjas modele.', '1362839381');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('694', '196', '57', '', 'IMAM PROBLEM 

Sto nece da uplaoduje nista hocu da promjenim Urban.dml
Ja sam izbriso originalni i hocu da uplaodujem svoj ali nece', '1362839651');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('695', '196', '', '16', 'To je do vas problem, nije do nas, internet konekcija vam nije dobra ako kotistite Web FTP, zato preporucujem da koristite FTP client, FileZila.', '1362839760');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('696', '196', '57', '', 'Kako', '1362839926');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('697', '196', '', '16', 'Izvolte uputstva:   http://forum.kgb-hosting.com/showthread.php?1832-Uputstvo-Kako-koristiti-FTP-preko-Total-Commandera-i-FileZilla', '1362840031');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('698', '196', '57', '', 'Kako promjeniti model nemesisa
', '1362840058');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('699', '197', '57', '', 'Nece uopste da ude server je startovan ali pise OFFLINE 
', '1362840567');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('700', '197', '', '16', 'Server radi normalno.', '1362840725');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('701', '197', '57', '', 'Ali kada ga stopiram pa ponovo pokrenem nece ', '1362840779');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('702', '197', '', '16', 'Server radi kako treba, sad sam ga ja stopirao i pokrenuo i evo radi..', '1362840848');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('703', '197', '57', '', 'Ok hvala', '1362840971');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('704', '198', '57', '', 'Instalirao sam fillezilla ali nece da ude kucam HOST:144.76.46.198
Username:Adnan
Password:fvd92XBb
Port:21', '1362841247');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('705', '198', '57', '', 'Response:	220 FTP Server ready.
Command:	USER Adnan
Response:	331 Password required for Adnan
Command:	PASS ********
Response:	530 Login incorrect.
Error:	Critical error
Error:	Could not connect to server', '1362841607');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('706', '199', '57', '', 'Ma nemam pojma ja MOZE NEKO POMOC OKO SVEGA I PLUGINA I VIP ADMIN EKSTRA ITEME SVEEE', '1362841716');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('707', '198', '', '16', 'Pozdrav, za takve stvari ne prozamo podrsku.', '1362841721');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('708', '198', '57', '', 'Pa kako drugacije da uploadujem fajlove da mjenjam modele nemogu nista Sto
', '1362841753');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('709', '199', '', '16', 'oko plugina mozes da pises, ako imamo plugin ubacicemo oko VIPa moras sam i estra iteme moras sam, jer se tu menjaju sma fajlovi a mi to ne radimo.', '1362841778');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('710', '198', '', '16', 'Onda probajte preko Web FTP-a, ako nece da vam upload fajl morate preko FileZile, jer za Web FTP preko panela morate imati dobar internet da bi vam radilo kako treba.', '1362841859');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('711', '199', '57', '', 'Dobro vip i ekstra iteme cu skontati
Ali naprimjer kako promjeniti model od zombia ili nemesisa nemogu uopste da uploadujem nista pise greska ', '1362841929');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('712', '198', '57', '', 'Ma ja imam ekstra internet bogami skida po 2.5 mb u sekundi Broad Band Connection', '1362841992');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('713', '199', '', '16', 'Reko sam vam da Morate to da uradite Preko Kljenta File Zila ja mislim da vec 4 put vam govorim, mi takve supporte ne radimo, jer vi te izmene radite na sovju ruku i ako izmenite to i pada vam server mi nismo odgovorni, znaci vi dobijete Zombie mod koji mi podignemo i za te fajlove garantujemo da lepo radi server sve sto radite drugo od izmene modela igraca, izmene pusaka, dodavanje extra itema, vip plugina morate sami. ', '1362842146');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('714', '198', '', '16', 'Ne znam evo sad cu da pokusam ja da upload na preko vas panel 1 mapu.', '1362842178');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('715', '198', '', '16', 'Evo u maps sam upload mapu  1hp.bsp  i meni sve savrseno radi, opet kazem to je do vaseg interneta ili do vas da nesto ne radite kako treba.', '1362842272');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('716', '198', '57', '', 'Dobro Probacu preko file zile

Hvala na podrsku ', '1362842310');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('717', '198', '', '16', 'Samo preko FileZile, ili Total Comandera  ovaj upload preko panel-a samo koristis za nesto sitno. inace on je puno sporiji od nekog FTP klijenta.', '1362842422');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('718', '198', '57', '', 'Ma samo zauzima 2mb urban model jedan drugaciji', '1362842696');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('719', '199', '57', '', 'Sta trebam da kucam na File zila da bi se konektovo na server', '1362842757');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('720', '199', '', '16', 'Podatke za FTP imas u panelu pod nazivom \"FTP informacije\"', '1362842985');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('721', '200', '40', '', 'imam prob svaki ct koji dodje on dobije odma pistolj mozete li ukloniti to da nedobija se pistolj kad udje ct', '1362844530');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('722', '200', '', '20', 'Pazi ako ti je ukljuceno na server da CT imaju pistolje tako ce i dobiti bilo ko da udje ko je counter sem ako Teror ne odluci /free tada se zamke zabranjuju kao i CT oruzija sva 
Lep pozdrav ', '1362844906');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('723', '199', '57', '', 'Nema tog nigdje Gdje?', '1362850229');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('724', '199', '', '20', 'Pozdrav Nadam se da ce ti biti sad jasnije 

http://img607.imageshack.us/img607/4218/ftpy.png

okruzio sam ti ftp podatke 
koje trebas uneti u Filezile
Kolega ti je objasnio kako se pravilo logovati 
Lep pozdrav ', '1362850608');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('725', '199', '57', '', 'Pozdrav 

Haha ja sam stvarno corav haha Hvala punOO :)', '1362850719');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('726', '201', '57', '', 'A sto kad svaki put restartujem server offline je i moram vas pitati da bi ga napravili sto je to tako.

POZ', '1362851483');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('727', '199', '', '20', 'Nema Problema tu smo da pomognemo, u slucaju da imate jos neka pitanja slobodno otvorite ticket mi stojimo na usluzi. Zatvaram ticket ovaj 
Lep pozdrav..
', '1362851730');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('728', '201', '57', '', 'STOOO', '1362851761');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('729', '201', '', '20', 'Molimo vas strpi te se NEMOJ te 
pisati ticket za ticketom,ocekuj te odgovor brzo radimo na vasem serveru da vidimo do cega je problem 
', '1362851918');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('730', '201', '57', '', 'Zemire jedno pitanje dali treba cekati 5 minuta kada stopiram server ubacim plugine onda cekati 5 minuta pa onda kativirati
', '1362852472');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('731', '202', '57', '', 'Daj rijesiti taj vec problem cjeli dan mi se pali gasi server 
Upalim ga,kad ocu da ga ugasim da zamjenim plugine nece da se upali do cega je 
i brze odgovarajte, ja nisam platio da cekam 2 h na jedan odgovori niti da mi se  desavaju problemi svakih 15 minuta ', '1362853024');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('732', '201', '', '20', 'mozes i da ne stopiras server samo promenes mapu i ako su plugini ispravni radit ce 
', '1362853048');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('733', '201', '57', '', 'OK hvala', '1362853090');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('734', '202', '57', '', 'UOPSTE NIJE AKTIVAN KAD GOD RESTARTUJEM UVIJEK PREBACI NA OFFLINE', '1362853149');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('735', '201', '', '16', 'Pozdrav, sacuvaj sve podatke sa servera koji su ti neophodni pa moram da ti reinstall server. ', '1362853163');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('736', '202', '', '16', 'Pozdrav, ako spamujete tiketima podrska nije obavezna da vam odgovara, ubacivali ste modove i druge pluginove i neki je zabo zbog toga se server gasi, sacuvajte sve neophodne stvari sa servera users.ini i td... pa javite da vam reinstall server. I sledeci put pazite sta ubacujete.', '1362853251');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('737', '201', '57', '', 'Ma reinstall odma server nemam nikakvi podataka koji mi trebaju', '1362853273');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('738', '201', '', '16', 'Ok, bicete obavesteni kad zavrsimo.', '1362853352');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('739', '202', '57', '', 'Vidi ovako 

PROMBLEM JE SAMO KOD RESTARTOVANJA KADA GA RESTART ON SE IZGASI I PISE OFFLINE', '1362853367');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('740', '201', '57', '', 'dobro
', '1362853397');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('741', '201', '', '16', 'Evo reinstall sam server. Sve lepo radi. Posto si otvorio jos jedan tiket ovde cu da ti objasnim problem da nebi i u onom odgovarao.

Sad server radi pre nego sto nesto ubacis restartuj ga 100 puta i videces da radi, ti si ubacivao plugine VIP-ove i neki plugin je zabagovao, zbog njega ti se server gasio i zbog njega kad ga restartujes nece da se podigne, znaci pazite sta ubacujete jer nam ti pluginovi prave problem i ne ostavljaju tragove u Error logovima pa stim ne mozemo da otkrijemo koji je plugin u pitanju nego moramo da reinstall ceo server. Srdacan Pozdrav :)', '1362853580');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('742', '203', '52', '', 'Server se srusio i nemozemo ga dici nazad da radi.
Probali smo i restart i iskljuciti pa ukljuciti, neradi.
Trebamo pomoc!

Hvala. :)', '1362853852');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('743', '201', '57', '', 'Samo sam ubacio za urban i sas novi model 

Hvala Puno Pozdrav', '1362853895');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('744', '201', '', '16', 'Ma nista, ako smo resili problem zatvori tiket.', '1362854018');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('745', '203', '', '16', 'Pozdrav, radimo na odklanjanju problema, bicete obavesteni kad bude gotovo.:)', '1362854295');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('746', '201', '57', '', 'KAKO', '1362855442');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('747', '204', '57', '', 'STO MI JE NESTO SERVER!', '1362855470');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('748', '205', '57', '', 'STO MI NEMA SERVERA', '1362855594');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('749', '206', '57', '', '144.76.46.198:27047 to je moj ip i stvarno neznam sta se desava moze te li to popraviti nikako mi nezbacuje da ima server kao da ga nisam  uplatio,', '1362855883');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('750', '206', '', '19', 'Rjeseno je dobili ste email,sa novim podacima.', '1362855933');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('751', '203', '', '16', 'Resen je problem, server vam je online.', '1362856159');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('752', '207', '58', '', 'Treba mi pomoc oko plugina.Kada dodam npr dodo sam zp_ekstra_items_jetpack_bazooka32.amxx
i dodo sam u plugins.ini na kraju dole ovaj plugin 
i sta sada', '1362857502');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('753', '207', '', '20', 'sad samo promeni mapu i probaj ima li u Extra Items taj Jetpack+Bazooka 
pozdrav ', '1362857626');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('754', '207', '58', '', 'Promjenio bi ali imam jos jedan problem nece mi admin dodo sam sebe Na-Vi-NiGgXa to mi je nik i pasvord je ado ali kada ukucam setinfo _pw ado nece Ono mi ude na server ali nemam admina', '1362857719');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('755', '207', '', '20', 'Mora se mapa promenuti da bi ti se ucitao admin..Ili ako nemozes da cekas restartuj server i onda se konektuj na dati 
', '1362857820');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('756', '208', '58', '', 'Restartovo sam ali nema opet  tog plugina ', '1362857991');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('757', '208', '', '20', 'Promeni mapu i pokusaj sad jetpack Trebalo bi da radi popravio sam.', '1362858158');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('758', '208', '58', '', 'Hvala evo radi sada', '1362858712');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('759', '209', '58', '', 'Kako staviti da naprimjer imam 100 ama kad tek udem u server', '1362858763');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('760', '209', '', '20', 'mozete u zombiplague.cfg sve podesavati da svaki igrac koji se konektuje da ima 100 ammo-a 
Pozdrav', '1362858821');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('761', '209', '58', '', 'Pozdrav gdje se nalazi zombieplague.cfg ja samo mogu naci zombieplague.ini', '1362858890');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('762', '209', '', '20', 'Ispod USER.INI
', '1362859117');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('763', '209', '58', '', 'Nemoze da mi ga otvori', '1362859163');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('764', '210', '58', '', 'Otvorio sam taj cfg ali nemogu naci gdje da promjenim amo pakove kad tek udem da imam vise od 5 ', '1362859392');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('765', '210', '', '20', 'hmm mogu ti podesiti samo da igraci dobijaju ammo packete brze nego pre 
U koliko naprave recimo 200 dmg zombiju dobiju po 1 ammo
tako se mnogo brze puni ammo,Zelis li to ? ', '1362859846');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('766', '210', '58', '', 'Zelim i samo jos nesto kako promjeniti model od nemesisa i obicni zombijeva', '1362860009');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('767', '210', '', '20', '1)Podeseno 
2)Modele uploud gde su smesteni modeli npr
ruke.mdl 
uploud u modele ', '1362860173');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('768', '210', '58', '', 'Ok ali kako promjeniti da naprimjer nisu svi zombi isti model nego drugaciji 
', '1362860211');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('769', '210', '', '20', '1.otvorite zp_zclasses40.sma 
download zp_zclasses40.sma: http://www.mediafire.com/?3s0aj1x5pduhf7g

2.dobicete ovo
PHP Code:
/*================================================================================
    
    -----------------------------------
    -*- [ZP] Default Zombie Classes -*-
    -----------------------------------
    
    ~~~~~~~~~~~~~~~
    - Description -
    ~~~~~~~~~~~~~~~
    
    This plugin adds the default zombie classes to Zombie Plague.
    Feel free to modify their attributes to your liking.
    
    Note: If zombie classes are disabled, the first registered class
    will be used for all players (by default, Classic Zombie).
    
================================================================================*/

#include <amxmodx>
#include <fakemeta>
#include <zombieplague>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const zclass1_name[] = { \"Classic Zombie\" }
new const zclass1_info[] = { \"=Balanced=\" }
new const zclass1_model[] = { \"zombie_source\" }
new const zclass1_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass1_health = 1800
const zclass1_speed = 190
const Float:zclass1_gravity = 1.0
const Float:zclass1_knockback = 1.0

// Raptor Zombie Attributes
new const zclass2_name[] = { \"Raptor Zombie\" }
new const zclass2_info[] = { \"HP-- Speed++ Knockback++\" }
new const zclass2_model[] = { \"zombie_source\" }
new const zclass2_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass2_health = 900
const zclass2_speed = 225
const Float:zclass2_gravity = 1.0
const Float:zclass2_knockback = 1.5

// Poison Zombie Attributes
new const zclass3_name[] = { \"Poison Zombie\" }
new const zclass3_info[] = { \"HP- Jump+ Knockback+\" }
new const zclass3_model[] = { \"zombie_source\" }
new const zclass3_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass3_health = 1400
const zclass3_speed = 190
const Float:zclass3_gravity = 0.75
const Float:zclass3_knockback = 1.25

// Big Zombie Attributes
new const zclass4_name[] = { \"Big Zombie\" }
new const zclass4_info[] = { \"HP++ Speed- Knockback--\" }
new const zclass4_model[] = { \"zombie_source\" }
new const zclass4_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass4_health = 2700
const zclass4_speed = 155
const Float:zclass4_gravity = 1.0
const Float:zclass4_knockback = 0.5

// Leech Zombie Attributes
new const zclass5_name[] = { \"Leech Zombie\" }
new const zclass5_info[] = { \"HP- Knockback+ Leech++\" }
new const zclass5_model[] = { \"zombie_source\" }
new const zclass5_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass5_health = 1300
const zclass5_speed = 190
const Float:zclass5_gravity = 1.0
const Float:zclass5_knockback = 1.25
const zclass5_infecthp = 200 // extra hp for infections

/*============================================================================*/

// Class IDs
new g_zclass_leech

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache()
{
    register_plugin(\"[ZP] Default Zombie Classes\", \"4.3\", \"MeRcyLeZZ\")
    
    // Register all classes
    zp_register_zombie_class(zclass1_name, zclass1_info, zclass1_model, zclass1_clawmodel, zclass1_health, zclass1_speed, zclass1_gravity, zclass1_knockback)
    zp_register_zombie_class(zclass2_name, zclass2_info, zclass2_model, zclass2_clawmodel, zclass2_health, zclass2_speed, zclass2_gravity, zclass2_knockback)
    zp_register_zombie_class(zclass3_name, zclass3_info, zclass3_model, zclass3_clawmodel, zclass3_health, zclass3_speed, zclass3_gravity, zclass3_knockback)
    zp_register_zombie_class(zclass4_name, zclass4_info, zclass4_model, zclass4_clawmodel, zclass4_health, zclass4_speed, zclass4_gravity, zclass4_knockback)
    g_zclass_leech = zp_register_zombie_class(zclass5_name, zclass5_info, zclass5_model, zclass5_clawmodel, zclass5_health, zclass5_speed, zclass5_gravity, zclass5_knockback)
}

// User Infected forward
public zp_user_infected_post(id, infector)
{
    // If attacker is a leech zombie, gets extra hp
    if (zp_get_user_zombie_class(infector) == g_zclass_leech)
        set_pev(infector, pev_health, float(pev(infector, pev_health) + zclass5_infecthp))
}  
mi ce mo uzeti prvu klasu i zamenice mo joj hp speed...

PHP Code:
// Classic Zombie Attributes
new const zclass1_name[] = { \"Classic Zombie\" }
new const zclass1_info[] = { \"=Balanced=\" }
new const zclass1_model[] = { \"zombie_source\" }
new const zclass1_clawmodel[] = { \"v_knife_zombie.mdl\" }
const zclass1_health = 1800
const zclass1_speed = 190
const Float:zclass1_gravity = 1.0
const Float:zclass1_knockback = 1.0  
to je nasa prva klasa sad cemo da je edit 


PHP Code:
new const zclass1_name[] = { \"Classic Zombie\" }  
Ovo \"Classic Zombie\" vam je ime zm klase vi tu mozete da stavite na primer obican zombi

PHP Code:
new const zclass1_info[] = { \"=Balanced=\" }  
Ovo \"=Balanced=\" to vam je opis klase vi tu mozete da stavite na primer brz zombi

PHP Code:
new const zclass1_model[] = { \"zombie_source\" }  
ovo \"zombie_source\" vam je model zombija i kada upisujete model zombija nikada na kraju nemojte stavljati .mdl 

PHP Code:
new const zclass1_clawmodel[] = { \"v_knife_zombie.mdl\" }  
ovo \"v_knife_zombie.mdl\" to su ruke zombija i kada ih upiujete ovde obavezno stavite na kraju .mdl i ruke uvek uploadujete u models/zombie_plague

PHP Code:
const zclass1_health = 1800  
Ovo je hp zombija

PHP Code:
const zclass1_speed = 190  
ovo je speed zombija,vazno ako zombiju stavite speed na 250 u server.cfg povecajte sv_maxspeed na 300

PHP Code:
const Float:zclass1_gravity = 1.0  
Ovo vam je gravitacija zombija 

PHP Code:
const Float:zclass1_knockback = 1.0  
Ovo je knockback zombija to vam je kada ga igrac puca zombija koliko da ga vraca u nazad

Ovo je FULL Objasnjeno ', '1362860351');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('770', '210', '58', '', 'Mozete li vi dodati to a ja cu vam poslati sve zombi modele ', '1362860615');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('771', '210', '', '20', 'Ne nazalost mi smo tu samo da se postaramo da server je ONLINE s nase strane jer mi ne odgovaramo za 3-th part plugin tj  sve dodatne plugine..
Lep pozdrav ', '1362860962');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('772', '210', '58', '', 'Ok hvala ionako za svu pomoc :) pozdrav', '1362861468');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('773', '210', '', '20', 'Nista sta god treba mozete otvoriti novi ticket ne ustrucavaj te se 
Lep pozdravv..


By: Zemir (dLu)', '1362862199');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('774', '211', '35', '', 'Kako da promenim ime gde pise \"Game\" pored servera?', '1362862560');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('775', '211', '', '20', 'Pozdrav u fajl 
dproto.cfg
nadjete Fajl
# Game_Name (string)
# Sets game name displayed for clients
# If Game_Name is empty, native game name will be used
Game_Name = ArenaHosting.info  (Menjate u vase zeljeno)

Lep pozdrav 
', '1362863089');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('776', '200', '40', '', 'al prob je kad se da free ostane pistolj', '1362866630');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('777', '200', '', '16', 'Koji je pistolj u pitanju Dezert ili USP ?', '1362871483');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('778', '212', '58', '', 'Kada tek udem u server zasto je premracno nevdi se nista', '1362872935');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('779', '212', '', '19', 'Jesteli ubacivali neke plugine ?,Dali je tako bilo cim ste dobili server ili nakon ubacivanja odredjenih plugina ?', '1362873237');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('780', '212', '58', '', 'Ubacio sam assasin mod i kad to pokrenes sve je mracni i ima 1 samo zombie koji ih po ubija sve i probo sam to na sebe kaze da nemoze kad ima samo 1 covjek i nemogu to da napravim probo sam restart server ali nece', '1362873490');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('781', '213', '58', '', 'Kako da dam vip I kako da dodam u extra iteme vip ekstra iteme da samo vip to moze otvoriti 
', '1362874565');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('782', '214', '52', '', 'Neznam zasto, ali nama nerade pluginovi. Jedini koji rade su oni koje smo dobili i zp_sub_bank.amxx.
Probavamo staviti: 
zp_sub_parachute12.amxx, 
zp_giveap.amxx, 
zp_addon_show_health_armor_human.amxx, 
zm_vip.amxx.

Nijedan od iznad navedenih neradi, ja znam da vjerojatno ja nesto pogresno radim na pogresnoj verziji, ali bio bih jako zahvalan ako biste mogli pomoci. zm_vip.amxx se detektira kao plugin ali nema ni VIP menu niti ista a kada upisemo /vips dobijemo cudan error. Molim vas za pomoc, da pogledate sto nije uredu, verzija Zombie Plague moda, verzija Amx Mod X moda i ostalo.

Hvala vam puno! :)', '1362903223');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('783', '214', '52', '', 'I ako bi moglo se narediti unlimited ammo - Da ima reload i sve to ali da mu je stalno municija na 90, inace se mora kupovati na ,.

Eto, super ste podrska.

Hvala. :)', '1362906349');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('784', '215', '58', '', 'Ja sam dodo mape ali kad idem amxmodmenu i da promjenim na tu nampu nema je sto!
NPR zm_defense tu sam dodo ali je nema kad ocu da promjenim u tu mapu', '1362907043');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('785', '214', '', '20', 'Podeseno sve :))
+ ubaceni neki dodatni plugini za ugodniju igru 
Lep pozdrav ', '1362907728');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('786', '215', '', '20', 'pozdrav jesi li upisao te mape u 
Maps.ini  ??? ', '1362907753');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('787', '213', '', '20', 'Molim vas upisuj te sve u jedan ticket da bi vam mogao lakse odgovoriti nemoj te otvarati 100 ticketa 
sad 
Morate ubaciti plugin za vipove,sto se tice vip extra itemsa mora se editovati sma,nazalost mi to neradimo.
Lep pozdrav..', '1362907841');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('788', '215', '58', '', 'Nisam zato ih nema hvala :) pozdrav', '1362907865');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('789', '216', '58', '', 'A gdje se nalazi maps.ini', '1362908023');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('790', '216', '', '20', 'u istm redu gde i user.ini 
Lep pozdrav ', '1362908147');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('791', '216', '58', '', 'Nema bogami evo sad sam trazio gdje je users.ini eto vi pogledajte Pozdrav', '1362908238');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('792', '200', '40', '', 'usp', '1362908554');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('793', '216', '', '20', 'Pricekaj dok nadjem adekvatan plugin pogledao sam nema maps.ini..Strpi se napravit cemo ti ', '1362908677');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('794', '216', '58', '', 'Dobro hocu! ', '1362908928');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('795', '217', '58', '', 'Sto je premracno kad udem na server nevidi se nista bez night vision googles', '1362910029');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('796', '217', '58', '', 'I gdje da promjenim kolko ama da imam na pocetku
', '1362910627');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('797', '216', '', '20', 'Podeseno maps.ini
Podeseno svetlo 
Lep pozdrav ', '1362910631');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('798', '217', '', '20', 'Podeseno ', '1362910644');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('799', '195', '', '19', 'Problem je rjesen.', '1362910924');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('800', '218', '58', '', 'Jeste li napravili maps.ini', '1362912366');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('801', '218', '', '20', 'da Odgovorio sam vam u proslom ticketu...', '1362912448');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('802', '219', '35', '', 'Ne radi mi admin chat(amx_say)pokusavao sam sa dosta plugina i nista,mozete da mi date neki plugin?', '1362914047');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('803', '220', '58', '', 'Kako da stavim da imam 100 ama napocetku kad tek udem na server', '1362914349');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('804', '220', '', '20', 'Pozdrav nemoze to..Mi smo vam napravili da se lakse dobija ammo,to da se podesi da se odma dobija 100 ap mislim da nemoze 
', '1362914928');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('805', '219', '', '20', 'Izvoli
http://forums.alliedmods.net/showthread.php?p=127273
Lep pozdrav ', '1362915160');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('806', '220', '58', '', 'Moze bogami prije nekoliko sati sam bio naso i stavio na 100 ali sada nemogu da nadem ', '1362915248');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('807', '220', '', '20', 'Mi nismo upoznati  s tim , Ja bar nisam pa ako ste nastimali sebi zasto ticket opet? ', '1362915457');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('808', '220', '58', '', 'Pa bio sam nastimo u zombieplague.cfg ali ga sada nema mislim ima zombieplague.cfg ali pisalo starting ammo packs = 5 a sada nema toga?', '1362915546');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('809', '221', '58', '', 'Kako da promjenim novi pasvord na gejm panelu', '1362915711');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('810', '220', '', '20', 'Ako bi igde to trebalo da bude mora biti pod ovim 
// Humans
// ------
zp_human_health 250 // Health
zp_human_last_extrahp 1500 // Last human\'s extra health reward
zp_human_speed 240 // Speed
zp_human_gravity 0.9 // Gravity (0.5 = half)
zp_human_armor_protect 1 // Armor needs to be reduced completely in order to get infected
zp_human_unlimited_ammo 1 // Unlimited ammo [0-disable // 1-BP Ammo // 2-clip Ammo]
zp_human_damage_reward 250 // How much damage humans must deal on zombies to get an ammo pack
zp_human_frags_for_kill 1 // How many frags humans get for killing a zombie

ja nevidim to nigde...', '1362915733');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('811', '221', '', '19', 'Idete na profil i zadnje polje je password,tu upisete novi password.', '1362915759');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('812', '219', '35', '', 'Probao sam i to ali nece :(', '1362915903');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('813', '219', '', '20', 'niste verovatno smestili plugin gde treba.. Treba ga staviti gde su ostale chat komande ', '1362915943');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('814', '214', '52', '', 'E hvala vam puno. Ljudi, stvarno ste zakon! Iako vasa duznost nije da nama to sredjujete, vi to radite u slobodno vrijeme, ima da sve servere hostujem kod vas.

No, uvijek ima problem.
VIP.
Problem nije u .txt, barem ne koliko ja znam, gledao sam po forumima ali nisam razumio puno, barem ne sto se tice toga gdje sto staviti, problem je kad nam pise ML_NOTFOUND: i ML_NOTFOUND: EXTRA_VIP i tako nesto.
Ako bi ste, molim vas, mogli pomoci oko toga, osim toga, VIP savrseno radi.
Preciznije: Kada upisem /vips pise nesto VIPS: tako nesto ali i: VIPS: ML_NOTFOUND [ZERO] TheZEROts, tj, ne bi trebalo biti ovo ML_NOTFOUND na listi. A kad stisnem M, pise na zadnjoj strani, zadnje ML_NOTFOUND: EXTRA_VIP - tu bi valjda trebao dodati stvari iz Extra VIP djela tog plugina. Uglavnom, to me muci jedino. Mozete me dodati na Skype - TheZEROts. Hvala, puno! Stvarno bih htio da se to podesi kako treba, sad cu probati padobran, hehe. :)', '1362916390');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('815', '222', '58', '', 'Dali se moze promjeniti da mi pise naprimjer ne rage zombie nego da stavim ja neko drugo ime zombia', '1362916468');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('816', '214', '', '20', 'Pozdrav vidim ubacili ste vip.txt u data= lang ali nemogu da shvatim zasto ne cita txt.Jedino vam preostaje da pokusate neki drugi vip.txt,ali mozete i ovako ostaviti jer ne steti nista..
Lep pozdrav ', '1362916658');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('817', '222', '', '20', 'Moze mada nije preporucljivo moze doci do padanja servera,jer tako autor tog plugina je nazvao Zombie po imenu Rage.
Pozdrav', '1362916744');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('818', '219', '35', '', 'A gde je taj folder?', '1362916763');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('819', '219', '', '20', 'U plugins.ini
Smestite u 


; Chat / Messages
STD_ADMIN_COLOR_CHAT.AMXX (OVO JE SAMO PRIMER KAKO TREBA BITI)
;adminchat.amxx		; console chat commands
antiflood.amxx		; prevent clients from chat-flooding the server
;scrollmsg.amxx		; displays a scrolling message
;imessage.amxx		; displays information messages
adminvote.amxx		; vote commands

lep pozdrav ', '1362916926');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('820', '222', '58', '', 'Ali npr kada ja hocu novu klasu zombia da dodam kako to da uradim.Dodo sam hunter zombie u plugine i sada kako da ga stavim da ima ta klasa u serveru', '1362916955');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('821', '222', '', '20', 'U koliko ste skinuli plugin morate uraditi sledece:
Uploud npr tight_zombie.amxx u Plugins
Sledece kad ste uploud to Upisete u PLUGINS.ini 
to ime,u ovom mom slucaju tight_zombie.amxx
pa potrebno je promenuti mapu i radit ce vam u koliko ste ispravno ubacili
OVO JE SAMO PRIMER.
Lep pozdrav', '1362917151');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('822', '219', '35', '', 'Hvala :)', '1362917151');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('823', '222', '58', '', 'Dodo sam zp_zcls_hunter.amxx i u plugins i u plugins.ini promjenio mapu ali nece', '1362917421');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('824', '222', '', '20', 'onda je moguce da plugin ne radi..', '1362917634');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('825', '222', '58', '', 'dobro probacu jos nekoliko', '1362917771');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('826', '222', '', '20', 'Uredu znaci samo sledi moje upute gore kako pravilno ubaciti plugin i neces pogresiti.
Zatvaram ticket 
Lep pozdrav ', '1362917868');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('827', '223', '58', '', 'Opet je pao! KAKO OFFLINE', '1362918138');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('828', '223', '', '20', 'to je zato sto ubacujes neke plugine za koje mi ne odgovaramo Vidim u panelu pravi eror pola gigabajta radi tih zombia,Pokusat cu da ih izgasim u koliko ne uspem morat cemo reinstal uraditi.
', '1362918402');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('829', '223', '', '20', 'Proradeo vam je server,Ne ubacujte plugne za koje niste sigurni...', '1362918487');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('830', '214', '52', '', 'Eto, super, onda. No, imam par pitanja koja bi rjesila i buduce probleme -
Kako da otvorim .sma? Kako da dodam VIP stvari - samo za VIP? Kako da dodam opcenito stvari za kupiti? Zato sto sam citao po forumima da moram malo .sma dotjerat s jednim djelom. S obzirom da vi to neradite, ako bi ste mogli reci, kako? :) Hvala puno! Zapravo, htio bi Zlatni M16, Zlati AK-47, Zlatni Deagle i Zlate Metke samo za VIP, I jetpack bi samo za VIP, jer ne zelim da cjeli server leti ... :D
Puno vam hvala, najbolji ste! Ako vam je teze ovako objasniti, svakako me dodajte na Skype, TheZEROts sam na Skype-u. Hvala! :)', '1362918865');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('831', '214', '', '20', 'Sma se otvara preko notepad tj kad odaberete neki plugin, i da kazem iskreno mi to slabo skroz radimo jer moze doci do bagovanja plugina,i na kraju do padanja servera zato nije preporucljivo menjati onako kako ga autor napravi po meni treba da tako i ostane.
Lep pozdrav ', '1362919131');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('832', '214', '52', '', 'U redu, hvala puno. Samo, ako mozete staviti nekako Jetpack za VIP samo i dodati Golden stvari, jer ja nisam siguran dali znam. Uglavnom, sve je super, radi odlicno, hvala vam! :)
Pozdrav. :D', '1362919506');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('833', '214', '', '20', 'Pozdrav mi ne ubacujemo 3th part plugin zao nam je.Mozete se obratiti na nasem forumu u koliko su vam potrebni neki plugini
www.arenahosting.info

Lep pozdrav', '1362919655');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('834', '224', '52', '', 'Promjenili smo gamemode, i izgubili smo /boost. Mozete li to, molim vas, vratiti? :)

Hvala! :D', '1362920517');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('835', '224', '', '20', 'Pozdrav ubaceno je
', '1362924629');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('836', '225', '52', '', 'Ne prihvaca mi admin/VIP skin, neznam zasto, a ocito ni kako. Ako moze pomoc oko toga? Htio bi svoje skinove ubaciti ali kao da ih ne prihvaca. Hvala. :)', '1362925079');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('837', '226', '52', '', 'Ne prihvaca mi admin/VIP skin, neznam zasto, a ocito ni kako. Ako moze pomoc oko toga? Htio bi svoje skinove ubaciti ali kao da ih ne prihvaca. Hvala. :)', '1362925671');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('838', '226', '', '20', 'Pazi vip/admin ima svoj izgled model-a 
Nemogu ti pomoci oko toga pozz', '1362932975');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('839', '227', '52', '', 'Skinuo sam novi zm_vip.txt sad radi, I imam VIP menu ali kaze da nema nikakvih VIP dodatak ucitanih, neznam kako da naredim da se podese, aj molim te pomozi. I trebam naci zombie_plague40 ili zombie_plague ili zombie_plague50.sma, nemogu naci. Treba mi da podesim jos VIP mod, to mi je vazno podesiti, kao i skinove za njih. Stvarno ste super ali neke stvari jednostavno nerazumijem, kao to kako si namjestio jetpack i to da radi, ja neznam. Stvarno me mozes dodati na Skype ili tako nesto, zato sto osjecam kao da dosadjujem, a nerazumijem kako da namjestim. Hvala! Pozz ... :D', '1362933825');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('840', '227', '', '20', 'Pozdrav mi smo tu samo da obezbedimo da server radi online s nase strane mi nismo duzni ubacivati neke plugine za koje sigurni pozz', '1362934255');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('841', '228', '58', '', 'Ima li ovdije fast download kad ulazim na server jeli trebace sat vremena da skine to sve!', '1362935735');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('842', '228', '', '20', 'Pozdrav fast download se kupuje,to mi nedajemo mozda u buducnosti bude da dajemo uz kupljeni server.
Lep pozdrav ', '1362935855');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('843', '227', '52', '', 'Samo pitam. Hvala, eto napravio sam kako sam i mislio i radi. :)
I jos jedan problem je kad se mjenja mapa prije nego sto se pocne ucitavati, zastane na listi igraca i tako neko vrijeme, inace znam da nije tako.', '1362937313');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('844', '227', '', '20', 'Uredu,budel vam potrebna pomoc otvorite novi ticket 
zatvaram ovaj 
Lep pozdrav ', '1362937575');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('845', '229', '37', '', 'nema mi ono na srw kad ukucas /me da rekne koliko si mu oduzeoo
de mi ubacite too i nema mi kad ukucas  /admin da izbaci ko je  ', '1362952092');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('846', '200', '', '16', 'Poz, ukljucio sma zabranu za USP, pa javi ako jos zeza tj ako opet dobija igrac USP.', '1362963929');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('847', '229', '', '16', 'pozdrav, sa R-con flagom udjes na serve rukucas u konzolu amxmodmenu  i imas da podesi statistiku na serveru i da upalis /me.', '1362964010');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('848', '229', '37', '', 'jojj', '1362998793');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('849', '229', '', '20', 'Jeste li resili vas problem ?
Lep pozdrav', '1363001082');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('850', '230', '38', '', 'Server mi stalno pada neznam ni sam zasto ali ja odem da uradim domaci i vratim se kada ono pise Not Responding 
Sta da radim ', '1363014339');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('851', '230', '', '19', 'Dali je ovo prvi put da vam je pao danas ili se vec desavalo ?', '1363014378');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('852', '231', '40', '', 'imao sam problema sa srw pa sam mjenjao mod preko one kratice pa je sve to se izbrisalo mozete li mi to ponovo staviti', '1363022899');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('853', '231', '', '21', 'jel ti zelis ovaj mod sto ti je u naslovu ?  \"deathrun vip i lj menu\" ', '1363024683');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('854', '232', '58', '', 'Pa bez fast downloada necu imati ni 1 igraca skidace stvari 3 godine', '1363025110');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('855', '233', '58', '', 'Sto mi nece da ude na fajl zilu 
radilo je prije sada nece', '1363027976');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('856', '233', '58', '', 'Evo sta pise Status:	Connecting to 144.76.46.198:21...
Status:	Connection established, waiting for welcome message...
Response:	220 FTP Server ready.
Command:	USER srv_58_1
Response:	331 Password required for srv_58_1
Command:	PASS *********
Response:	530 Login incorrect.
Error:	Critical error
Error:	Could not connect to server', '1363027999');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('857', '230', '', '20', 'Pozdrav Nasao sam Eror radi cega vam server pada.
U pitanju je plugin 
Bad_camper
Iskljuct cu ga pa cemo pratiti vas server i ocitavati stanje 
Lep pozdrav ', '1363028893');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('858', '234', '58', '', 'sto nece da ude u ftp
', '1363030290');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('859', '234', '', '20', 'Pozdrav meni je lepo se konektovalo 
Moguce je da vi niste upisali ispravno podatke 
Lep pozdrav ', '1363030531');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('860', '234', '58', '', 'hajte mi recite sta da tacno napisem ja napisem podatke ali nece', '1363030766');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('861', '234', '', '20', 'Ovako Skinite FileZilu sa interneta 
Upisuj te sledece
Pod HOST: 144.76.46.198
USERNAME : srv_58_1
PASSWORD : 6X2DVmkW

Lep Pozdrav', '1363031136');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('862', '235', '45', '', 'Hvala momci , a pogotovo Alexandu oduzim se kao vec dogovoreno ;)
samo se malo strpite , komp mi je u defektu :D

pozz', '1363031142');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('863', '235', '', '20', 'Uredu fler :) 
Srecno u Poslu :)
Lep pozdrav ', '1363031193');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('864', '231', '40', '', 'da
', '1363031876');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('865', '229', '37', '', 'jesam ovo sa /me  ali kako kad ukucam  /admin  nece da izbaci ko je admin', '1363032011');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('866', '229', '', '20', 'to /admin se stima u ADvertisment.ini 
!tAko ocesh da vidis admina say:/Admin
@/admin~!tAdmin admin servera je  Vas NICK 
Lep pozdrav ', '1363032166');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('867', '229', '37', '', 'pa jesi to nastimo ili ja trebam ness stimat', '1363033504');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('868', '229', '', '19', 'Vamo gdje pise VAS NICK potrebno je da upises svoj nick', '1363033727');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('869', '229', '', '20', 'Pozdrav ja sam vam ubavio U ADVERTISMENT.INI ovako gore vase je samo da sklonite ispred ; i da upisete ko su admini pozz', '1363033746');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('870', '236', '58', '', 'opet server offline', '1363034395');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('871', '236', '', '20', 'Nemogu da vidim do cega je eror sad napravio je eror od pola gige 
U najjgorem slucaju morat cemo odraditi reinstal servera ', '1363034521');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('872', '236', '58', '', 'E kako ovo mrzim dodam nove plugine jetpak bazuku i nece jbg mozete li instalirati zombie plague 4.3', '1363034816');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('873', '236', '', '20', 'Upravo razvijamo 6.0 Zombi plague pa ako bude uspesan moci ces se izjasniti da li to zelite..
Vi verovatno ne uploud-ujete plugine lepo zato vam se srusi server 
Ubrzo na Arenahosting.info FULL TUTORIJAL kako uploud plugin pracen slikama 
LEp pozdrav ', '1363034937');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('874', '236', '58', '', 'Gdje je to daj mi te link da vidim
I mozete li mi instalirati zombie plague 4.3 taj mi je najbolji mislim na njema rade haman svi plugini a na novijim nesto nece neznam sto.Lep pozdrav', '1363035023');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('875', '236', '', '20', 'Nemamo jos detaljno kako uploud plugin brzo ce biti 
Lep pozdrav..', '1363035141');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('876', '236', '58', '', 'Dobro a mozete li vi meni objasniti sada fino da znam da mi se vise ne srusi server.', '1363035174');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('877', '237', '58', '', 'Mozete li mi objasniti gdje tacno da stavim plugin i gdje u config da napisem taj plugin', '1363035528');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('878', '237', '58', '', 'Koliko vam treba da odgovorite', '1363035668');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('879', '236', '', '20', 'Pozdrav Sacuvaj te vas user.ini,Advertisment.ini 
u koliko imate neke bitne fajlove
Ubrzo cemo vam ubaciti novi 5.0.5 zombi plague.
Sledece Ovde imate kako srediti zombi mod,
http://forum.arenahosting.info/showthread.php?498-Sve-za-Zombie-Mod

Lep pozdrav ', '1363035724');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('880', '236', '58', '', 'Ma ubacite mi 4.3 nemojte 5.0.5 ', '1363035803');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('881', '237', '', '20', 'Imaj te strpljenja i ne otvaraj te 10 ticketa to nece ubrzati nas odgovor,
Ubacite Plugin u Plugins
i upisete mu ime u 
Plugins.ini

Kao i u proslom ticketu napisao sam vam 
http://forum.arenahosting.info/showthread.php?498-Sve-za-Zombie-Mod
tu imate detaljno opisano 
Lep pozdrav', '1363035814');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('882', '237', '58', '', 'Dobro hvala :D', '1363035898');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('883', '238', '58', '', 'Jeste li mi instalirali zm 4.3', '1363036374');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('884', '238', '', '16', 'Pozdrav, nemamo taj mod jos uvek ga sredjujemo, za sad imamo samo 5.0', '1363036663');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('885', '229', '37', '', 'nece mi nis otvoritt  na paneluu ', '1363038140');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('886', '229', '', '19', 'Sada bi trebalo da radi :)', '1363039193');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('887', '239', '1', '', 'gpanel vama je predobar ako moze da me primite u podrsku add te me na fb :))) http://www.facebook.com/demons.macedonia?ref=tn_tnmn', '1363040339');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('888', '239', '', '16', 'Poz :) Javi se na Forum  forum.arenahosting.info', '1363040531');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('889', '238', '58', '', 'Dobro', '1363041075');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('890', '238', '', '16', 'Trebalo bi da bude uskoro, od sl nedelje i 4.3 mod.', '1363041139');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('891', '239', '1', '', 'ae neko nek me add od admina plsss :) http://www.facebook.com/demons.macedonia?ref=tn_tnmn', '1363042818');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('892', '240', '1', '', 'add me plss http://www.facebook.com/demons.macedonia?ref=tn_tnmn', '1363044520');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('893', '231', '', '21', 'Instaliran ti je ponovo Detahrun mod default . Navedi ovde sta tacno zelis da imas od plugina na serveru, da bi nam bilo lakse srediti to sto ti zelis . Mada mislim da je bolje da otvoris temu na forumu i tamo objasnis sve detaljno i mozes slike postaviti da bi imali kompletan uvid sta i kako zelis. ', '1363076480');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('894', '231', '40', '', 'deathrun vip, ljmenu,da nedobija svaku rundu pistolj ct', '1363081538');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('895', '231', '', '16', 'Ubaceno.', '1363083768');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('896', '226', '', '21', 'Koje skinove zelis da ubacis na server , navedi ovde pa cemo da resimo prob ako je moguce. ', '1363085458');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('897', '231', '40', '', 'imam mali prob ja sam sad reset srw jel sam ubacio head-a sebi i nemogu pokrenut srw ', '1363087093');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('898', '241', '52', '', 'Server je pao bez razloga sta da radim? Hvala :)', '1363089374');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('899', '241', '', '16', 'pozdrav, ja koliko vidim server radi.', '1363089799');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('900', '231', '', '16', 'Pozdrav, prosledio sam tiket Borisu da vidi sa masine da podigne server posto u panelu ne reaguje a ne izbacuje nijedan erorr. Imamo jos jednu opciju a to je da reinstaliramo server pa da ubacimo deathrun mod opet, razmisli sta cemo da radimo pa javi.', '1363090103');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('901', '231', '40', '', 'ja stvarno nezz sta je problem mzd bi bilo najbolje da se reinstalira server i da sve ubaci ponovo sto ste ubacivali', '1363091416');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('902', '231', '', '16', 'Ok, bice odradjeno jel DeathRun mod zelis ?', '1363091524');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('903', '231', '', '16', 'Resen problem samo Startuj server u Gpanel.', '1363092241');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('904', '231', '40', '', 'da zelim dr mod', '1363093856');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('905', '242', '59', '', 'ne mogu startovati server pise netacni podaci za login..?', '1363103579');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('906', '242', '', '4', 'Sredio sam ti , pozdrav ;)', '1363104924');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('907', '243', '52', '', 'Server se opet srusio. Mozete li ga pokrenuti ponovno?

Hvala!', '1363106531');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('908', '241', '52', '', 'evo o5 ne radi
', '1363106934');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('909', '243', '', '19', 'Dali ste na server ubacivali neke plugine ?,moguce da je to dovelo do pada server-a', '1363108408');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('910', '244', '58', '', 'Kako da promjenim modele od covjeka zombia i nemesisa I DA SAMO ADMIN NPR MOZE BITI DRUGI MODEL A OBICNI IGRACI DURGI', '1363110079');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('911', '244', '58', '', '?', '1363111183');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('912', '243', '52', '', 'Jesmo, ali kao i svaki drugi dan. Mi ovdje nemamo server log, server konzolu, ni panel log pa neznamo sto je i gdje poslo po zlu, moguce da je plugin, ali molimo vas da vi pokusate resetirati server, ja cu vidjeti oko pluginova. Hvala.', '1363114679');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('913', '244', '', '16', 'Pozdrav, mi to ne preporucujemo zbog toga pada server, moraces sam da nadjes i ako menjas, menjas na sopstvenu odgovornost.', '1363114996');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('914', '241', '', '21', 'Ne otvaraj duple tikete ,sacekaj na odg budi malo strpljiv.  Ako ti opet nesto treba pisi u ovom kad ga vec nije zatvoren .', '1363115283');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('915', '243', '', '21', 'Sad cu ja reinstalirati srv , samo mi napisi koji mod zelite ? ', '1363115342');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('916', '243', '52', '', 'Eto super, svaka cast sada nemamo nista sto smo imali u sto sam ja utrosio 7 i pol sati svoga vremena da namjestim, sve mape, svi modeli, svi pluginovi, svi config. fajlovi, i ono sto je vas zaposlenik namjestio i zbog cega smo bili zahvalni, vise toga nema, a ja nemam u planu potrositi jos tjedan dana da bih sve namjestio, zahvalni smo na  vasoj pomoci no mi zelimo ono sto smo napravili nazad - mape, pluginove, config-e, modele .... 97.8% je problem bio u pluginu kojeg sam dodao i obrisao, a sada nemamo ono sto smo mi, ja uz pomoc vaseg dragog pomocnika napravili. Uz sve zahvale na vasoj pomoci, mi nismo zadovoljeni cinjenicom da nemamo stvari, gore navedene, koje smo imali. Uz duzno postovanjr, mi zahtjevamo prijasnje opcije nazad. Hvala!', '1363116385');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('917', '242', '59', '', 'Hvala ', '1363117940');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('918', '243', '', '21', 'Dragi Marko vama je server non stop PADAO , znaci da ste ubacili neki fajl koji je bio los i nonstop je obatao server. Ja sam pokusao da ga restartujem nekoliko puta ali bezuspesno . Ako vam treba nesto spec da se doda na server otvorite temu na forumu i navedite sve sto zelite da imate i dace vam se svi ispravni fajlovi koji nece obarati server, a neke sitnije stvari se mogu i odmah srediti na serveru . Dakle na vama je samo da otvorite temu na forumu i napiseste sve sta zelite da se ubaci na vas server. Pozdrav.', '1363119316');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('919', '243', '', '21', 'JOS NESTO : Sve sto imate od tih fajlova koje ste ubacivali na vas server vi ZIPUJTE i ostavi te nam oovde download link, zatim cemo mi da pregledamo svaki faj i sve sto je ispravno ubaciti na GamePanel, a sta bude neispravno vama cemo reci i ubacice se drugi fajlovi koji nece obarati server. ', '1363119653');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('920', '243', '52', '', 'Razumijem. No, nama je server padao zbog mape koja nije valjala i sad zbog plugina, ja sam to sredio nesto prije nego sto je reinstalirano. Ja cubrazgledati forume, no mi smo htjeli pravi hibrid server izmedju klasike i modernog. Ako nemozemo vratiti ono sto je bilo onda cu ja sve ispocetka gledajuci na forume. Hvala na podrsci.', '1363119656');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('921', '243', '', '21', 'Ma nista , tu smo da pomognemo . Samo vas molimo da obratite paznju sta sve ubacujete na server, i posle svakog novog fajla promenite mapu da bi ste proverili da li taj novi fajl obara server, ili izbacuje neki error u logu . Savetujem vas da otvorite temu na forumu i postavite u njoj sve sto vam treba od fajlova, i dobice te odg u najkracem roku . Pozdrav .', '1363120031');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('922', '243', '52', '', 'Postavio sam temu, ja sam TheZEROts pa provjerite, samo vas molim da onda vi to probate postaviti, countdown plugin ili zombie extra pack plugin je stvarao problem, htio bih ono sto je navedenonu mom jedinom postu na forumu pod TheZEROts. Hvala, stvarno jeste super ali ne zelim sam nazad postavljati sve pa vas molim za pomoc, hvala puno. :-) Samo me obavjestite mozete li namjestiti. Pozdrav.', '1363121807');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('923', '243', '', '20', 'Pozdrav ja cu vam ponovno uploud sto sam vam i prosli put nije problem,sto se tice ostalih modela morat cete ponovno sami jer neznam sta ste sve imali 
Lep pozdrav ', '1363124200');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('924', '229', '37', '', 'ejj prijateljii neko mi hakovoo panell pliss pomagaj te nisam nikom davo panel ni sifruu aloo zar vamo se hoost moze hakocati pomagajte pravi mi sranja po srw banuje raju i ostaloo mjenja imena srw  plissssssssssssss', '1363125510');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('925', '245', '37', '', 'ejj prijateljii neko mi hakovoo panell pliss pomagaj te nisam nikom davo panel ni sifruu aloo zar vamo se hoost moze hakocati pomagajte pravi mi sranja po srw banuje raju i ostaloo mjenja imena srw plissssssssssssss', '1363126155');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('926', '229', '', '21', 'Neko ti je stavio rcon pass , preko njega moze sve da radi kao admin . Sad uklonjen i ubuduce nista ne stavljaj za rcon pass . Izmenjen ti je i pass na gamepanelu za svaki slucaj . Novi PASSWORD : mehmed123', '1363128520');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('927', '245', '', '21', 'Zamolio bih te da ne otvaras dva tiketa za istim problemom . Otvoris tiket i cekas na odg  . Odg sam ti sve u onom drugom tiketu . Pozdrav.', '1363128654');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('928', '246', '1', '', 'Test', '1363174861');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('929', '246', '', '21', 'Radi test . ;-)', '1363174906');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('930', '247', '47', '', 'test

test

test', '1363180929');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('931', '247', '', '19', 'test

odgovor', '1363181011');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('932', '243', '52', '', 'Znam. Hvala vam puno, najbolji ste, no molim vas da ne restartate i reinstalirate nesto bez da nas obavjestite zato sto mi ipak pokusavamo dobiti igrace i funkcionirati normalno. Countdown plugin je bio problem, to je jedino sto bi htio da namjestite. Hvala. Najbolji ste. Pozdrav!', '1363184171');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('933', '243', '', '16', 'Pozdrav, sve sto ubacujete mimo nase podrske, ubacujete na sopstvenu odgovornost, ako dodje do pada servera mi nismo krivi, ako kojim slucajem plugin ne ostavi error log, a tvoj je bio 2,7gb, kad sam krenuo da ga otvaram pisalo mi je 50 minuta, traje proces, dok je meni to otvaralo kolega je u medjuvremenu da bi resio problem reinstal server. :) ', '1363186039');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('934', '243', '52', '', 'U redu. Ja vracam na staro vecinu stvari cega imam backup. Sve plugniove imam su isti kao u podrskama na forumu, problem je bio sto sam jedan od 2 plugina koja sam zadnje stavio, stavio pogresno, najvjerojatnije, ili ne rade dobro. Sada je server ugasen i sredjujem ljepo. Countdown plugin je jedino sto ne bih htio sam srediti. :) Samo vas molim da ne reinstalirate server tako naglo. Hvala na podrsci. ;)', '1363187267');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('935', '243', '', '21', 'Nema problema , tu smo da se sve dogovorimo i da se pomogne ako zatreba. Ako imate opet neka pitanja za neki plugi ili neki fajl koji vam treba otvorite temu na forumu i neko ce vam odg u najkracem roku . Srdacan pozdrav. ', '1363187766');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('936', '248', '52', '', 'Naredio sam sve, barem mislim da sam sve naredio kako je bilo dok je server radio, no server nemogu startati. Pogledajte, molim vas, mozete li startati umjesto mene ili vidjeti u cemu je problem. Skoro sve je onako kako je bilo, ali cini se da ne radi. Hvala!', '1363188962');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('937', '248', '', '16', 'Pozdrav, ubacivao si plugine koji ne rade, server je startovan u plugins.ini & plugins-zm.ini sam ti oznacio koji plugini ne valjaju.', '1363189591');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('938', '249', '40', '', 'mozete li mi reci u kojim folderima su plugini svi za ljmenu', '1363192232');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('939', '248', '52', '', 'Sve sam sredio. Pogresno sam ime dao pluginu i jednom nisam modele dobro stavio. Sad sve radi perfektno. Ako se server bude rusio, nije nista neobicno zato sto probavam pluginove. Mozete zatvoriti ticket, super ste, hehe, server radi super. Hvala vam puno na podrsci! :)', '1363192393');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('940', '249', '', '16', 'Pozdrav, ima 2 plugina nalaze se u cstrike/addons/amxmodx/config/plugins-deathrun.ini', '1363192628');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('941', '226', '52', '', 'Stvar je da postoji i plugin za to. Ja cu probati to jos jednom, pa cu vam javiti. Hvala. :)', '1363192779');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('942', '250', '35', '', 'Kako da sakrijem kada neko ukuca \"/admins\" da ne izadje lista admina?', '1363193714');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('943', '226', '', '19', 'Vazi :)', '1363194842');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('944', '250', '', '21', 'Namestio sam vam ja to, ali da bi znali za ubuduce evo objasnjenja !
To se namesta u fajlu amx_super.cfg putanja do fajla : cstrike/addons/amxmodx/configs/amx_super.cfg zatim nadjes gde pise : (amx_admin_check 1) ti namestis (amx_admin_check 0) sacuvas promene i kad promenis mapu nece prikazivati vise kad neko kuca /admin', '1363196700');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('945', '251', '1', '', 'daj stavite demo server na ovaj acc i staj slotove 5', '1363196761');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('946', '251', '', '21', 'Bice uskoro i to sredjeno. Pozdrav .', '1363198540');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('947', '251', '1', '', 'imate neki bug sredite ga Poruka Neta?ni podatci za prijavu ili kada udjem u WEB Ftp pise username i lozinka su netacni', '1363199966');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('948', '251', '', '21', 'Sve ce biti sredjeno i bice javljeno na forumu kad se sve sredi. ', '1363200080');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('949', '252', '37', '', 'de mi iskljucite ovaj awp Rafalni snajper 
', '1363206466');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('950', '253', '58', '', 'Kako da dodam ZP Banku da modu spasiti amo koji imam treba mi pomoc nece uopste', '1363207672');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('951', '253', '', '20', 'Pozdrav skinite plugin 
zp_sxg_bank.amxx
to Uploud u Plugins
pa kada to zavrsite otvorite 
Plugins.ini i upisite ime plugina u ovom nasem slucaju 
zp_sxg_bank.amxx
Promenite mapu i radit ce vam 
Lep pozdrav', '1363208072');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('952', '253', '58', '', 'To sam tacno uradio ali neradi i zove mi se plugin zp_bank.amxx ali neradi probavo sam 3-4 plugina za banku MOZETE LI TO VI NAPRAVITI MOLIM VAS', '1363208151');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('953', '254', '58', '', 'Mozete li vi dodati banku meni nece dodam je ali nece uopste probavo sam 10 puta', '1363209028');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('954', '255', '58', '', 'Pa sto necete da odgovorite.Hajte mi vi dodajte to molim vas. Pozdrav', '1363209434');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('955', '254', '58', '', 'joooj', '1363209618');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('956', '256', '58', '', 'Kako da dodam vip u opcijama da pise vip items', '1363214193');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('957', '256', '', '16', 'Pozdrav, ne razumem vase pitanje? ali ako pitate kako da u VIP-u dodate extra iteme to se radi u sma fajlu, tj menja se kod celog plugina.', '1363216854');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('958', '252', '', '16', 'Sredjeno, restartujte server.', '1363217019');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('959', '256', '58', '', 'Ma evo napravio sam ja nista mi netreba 
', '1363217903');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('960', '257', '60', '', 'Zasto mi server ne radi?', '1363266859');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('961', '257', '', '21', 'Da niste nesto ubacivali novo od fajlova na server , pa vam je zbog toga server offline ? Prenecu poruku Borisu da pogleda u cemu je problem . Cim se sve sredi bicete ovbavesteni . Pozdrav.', '1363272867');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('962', '258', '58', '', 'Mozete mi objasniti kako promjeniti model od svih ljudi u srw i svih zombie.Sve klase ', '1363282434');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('963', '230', '', '21', 'Ugasen vam je plugin amx_match_deluxe.amxx  jer on pravi error u log-u . Moracete naci neki koji radi normalno ako zelite taj plug . Sad server radi normalno pratio sam ga danas i sve je ok sad. Pozdrav.', '1363283739');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('964', '258', '', '21', 'Za to pitanje otvori temu na forumu , i napisi sve lepo sta zelis i neko ce ti vec odg sve . Pozdrav.', '1363283859');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('965', '257', '', '21', 'Boris je nesto sredjivao, probajte sad pa javite da li je ok . Pozdrav.', '1363283939');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('966', '259', '58', '', 'E dali ja mogu transferovati server na ovaj email adnankovacevic539@yahoo.com', '1363294781');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('967', '259', '', '21', 'Mozes transverovati server na bilo koji mail, samo dobro paazi kome ga prebacujes jer mi ne snosimo odgovornost za bilo kakav problem . Pozdrav.', '1363295178');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('968', '259', '', '16', 'Pozdrav, to je vasa stvar i radite na vasu odgovornost.', '1363295213');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('969', '259', '58', '', 'IDEM NA TRANSFER I PISE OPCIJA TRENUTNO NEDOSTUPNA POMOZITE MI ILI VI PREBACITE NA adnankovacevic539@yahoo.com', '1363295339');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('970', '259', '', '21', 'Transver se ne moze odraditi direktno sa GamePanela , iz razloga jer se sprema novi GP . Ja sam promenio podatke na GP-u . Email : adnankovacevic539@yahoo.com  Password : adnan123', '1363295869');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('971', '259', '58', '', 'EE MOJ RODAKOV MAIL JE anes_kovacevic99@hotmail.com i on stalno mjenja pasword i neda mi pasword KAKO MOGU DA NAMJESTIM DA NEMOZE UCI JA KAD SAM KUPIO SERVER BILO JE PREKO NJEGOVOG EMAIL ', '1363296092');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('972', '260', '58', '', 'NEMOJTE DAVATI anes_kovacevic99@hotmail.com NOVI EMAIL MOLIM VAS UZECE MI GP PREBACITE SERVER NA adnankovacevic539@yahoo.com  JA SAM PLATIO ALI NA NJEGOV EMAIL I SAD ON TO KORISTI', '1363296867');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('973', '259', '', '19', 'Pa jednostavno,stavite email koji zelite i zatim promjenite password.', '1363297470');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('974', '260', '', '19', 'ok', '1363297491');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('975', '259', '58', '', 'Brate Nemoj da das onom anesu anes_kovacevic99@hotmail.com novi pasword ako trazi MOLIMTEEEEE ON SERE I UZME MI GP \" KAZE KONTAKTIRACU BORISA I DAT CE MI NOVI PASWORD I KURAC NEMAS SVOG VISE SERVER BICE MOJ\" TO JE REAKO', '1363297550');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('976', '259', '', '19', 'Ok,samo nemoj davati password i nece da bude problem-a.', '1363297677');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('977', '260', '58', '', ':DDDDDDD', '1363297682');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('978', '259', '58', '', 'ok necu', '1363297694');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('979', '230', '', '19', 'Sada je server online,ako budete imali i dalje probleme kontaktirajte nas da to sredimo.', '1363297847');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('980', '261', '58', '', 'Gdje da nadem da pise koji su banovani on mi je banovo 3 igraca 
', '1363298143');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('981', '261', '', '21', 'U fajlu  banned.cfg ti se nalaze banovani igraci . Putanja do fajla je : cstrike/banned.cfg j
a sam izbrisao sav spisak iz fajla , ti samo moras da restartujes server, ili promenis mapu. Pozdrav.', '1363298369');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('982', '261', '58', '', 'Ok hvala', '1363299028');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('983', '262', '58', '', 'Sto mi neradi @haha NPR ovo nije bijelima slovima neradi uopste', '1363299063');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('984', '252', '37', '', 'ok hwala :)', '1363299551');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('985', '263', '58', '', 'E Borise Jeli tacno da je Anes ti rekao da ti njemu moras dati pasword ili cce te tuziti.', '1363306238');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('986', '263', '', '16', 'Pozdrav, jes da nije mesto za diskusiju vec za odklanjanje nekog problema ali prosto moram da odgovorim :D Ko bre da nas tuzi tj Borisa da tuzi?? To te pali neki klinac koji nezna nos da obrise xD Uzivkaj ti lepo i ne sekiraj se za Borisa on je inspektor, radi u MUP-u', '1363308524');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('987', '264', '61', '', 'E ne zeli da mi promeni ime servera samo mi stoji Half-Life  pokusavao sam da gasim server resetujem nista nece da radi. Molim te pomagaj', '1363335770');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('988', '264', '', '21', 'U server.cfg menjas ime serveru. 
Putanja do fajla :   cstrike/server.cfg    nadjes ovaj deo :   // server name
hostname \"Ime Tvog Servera\" sacuvas promene restartujes server preko GamePanela i to bi bilo to . 

Kazi koje ime serveru zelis pa cemo mi da ti sredimo to , ako ne uspes slucajno . Pozdrav.', '1363346012');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('989', '264', '', '21', 'Ja sam promenio ime servera u \"Maximum Hns\"  ako zelis neko drugo samo uradi kako sam vec napisao u predhodnoj poruci. Ako se nesto ne snadjes napisi ovde ime servera koje zelis i bice izmenjeno. Pozdrav.', '1363346305');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('990', '265', '52', '', 'Ovako, imam sve pluginove koji su 100% dobro namjesteni i 100% dobro rade (osim ako netko nije nesto drugo ubacio) i server mi se ugasi, barem tako pise. Nemojte mi stavljati mod ponovno i brisati opet jer sam se vec 2. put namucio da naredim, hvala. No, ja dodjem na Panel i sve radi, dodjem sutra i ono pise da je server \"Offline\". Hmm. Nerazumijem. Sad sam server restartovo i sve radi super. Hmm P.S. Znate li kako da mi default mapa (kad se server restarta) nije de_dust2? Da ju obrisem? Hvala!', '1363351832');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('991', '266', '37', '', 'de mi ubacite ba na srw nmgu ban za stalnoo samo mogu ban na minutee  :(((', '1363352888');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('992', '266', '', '21', 'Bice sredjeno.', '1363354732');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('993', '265', '', '16', 'Pozdrav, Ovaj plugin zp_sub_parachute.amxx   &  zp_extra_unlimited_clip.amxx   vam prave erorr logove i zbog njih postepeno pada server, te plugine ste vi ubacili i mi ne odgovaramo za to, mapu ne mozete vid apromenite samo mi, posaljite mi ovde ime mape koju zelite za pocetnu pa cu da vam promenim.', '1363354957');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('994', '226', '52', '', 'Kada promjenim skin u zombieplague.ini onda mi server se nece upaliti pa moram izvaditi original iz backup fajla.', '1363354962');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('995', '267', '61', '', 'Treba mi ono da imam svoj lj hj i ostalo a ne znam kako da stavim probao sam sve moguce svaka pomoc zahvalna oduzujem se adminom hvala unapred', '1363355416');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('996', '266', '37', '', 'aj samo pozurite :)))', '1363356244');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('997', '265', '52', '', 'zm_westwood bih da bude pocetna mapa. A ovaj parachute neradi, extra unlimited clip radi ali ocito stvara problem, no neznam sto ste napravili ali vise nije zeleni amx chat heh. Moram to narediti ponovo? Uglavnom, hvala. zm_westwood. I trebam dodati plugin za lasere, mozete li vi? To smo imali pa kad ste resetirali sve, vise nemamo. Hvala puno.', '1363356720');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('998', '265', '', '21', 'Namestena startna mapa. ', '1363358065');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('999', '226', '', '16', 'Pozdrav, verovatno nesto ne ubacite kako treba, jer da je sve ok server bi se besproblema startovao kao kod default skin-a', '1363359234');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1000', '266', '', '21', 'Ubacen vam je mdbban i da bi ste otvorili ban listu kucate u konzoli amxbanmenu . Pozdrav.', '1363362965');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1001', '226', '52', '', 'Jel znate kako da promjenim druge skinove? CT, Zombie klase? Zato sto bih htio da CT ima neki skin, recimo vojnika, a svaka zombie klasa svoj skin ... Probati cu opet, hvala. :)', '1363364723');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1002', '267', '', '16', 'Pozdrav, ubaceno je.', '1363365337');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1003', '268', '52', '', 'Bio je plugin na serveru za tripmine, besplatni, obicni trip/laser mine. Nestao je kada ste reinstalirali mod, a nemam ga vise nazad. Moze pomoc? Znam da ovo nije vas a duznost, no, nadam se. :) Hvala.', '1363366617');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1004', '268', '', '16', 'izvoli :)  http://forums.alliedmods.net/showthread.php?t=70782', '1363366997');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1005', '268', '52', '', 'Hvala. No to je .smx datoteka za Source. A, jedine koje sam ja nasao su oni koje kupujes. Hmm, znam da je vas suradnik meni bio naredio sve to iz ciste volje, no, problem je sto nemogu naci vise taj plugin. Ako sam ja u krivu, molio bih da objasnite s obzirom da je ovo za Source(barem tako pise). Hvala.', '1363367269');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1006', '268', '', '16', 'Moja greska ovo izvolite :) http://forums.alliedmods.net/showthread.php?p=221113', '1363367513');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1007', '269', '52', '', 'Mozete li smanjiti svjetlost na serveru? Da bude jos mracnije? Neznam mogu li ja to uopce. Hvala. P.S. Neka bude stvarno jako mracno. :)', '1363369375');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1008', '270', '61', '', 'Ako mozete da mi kazete sta da radim.', '1363370156');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1009', '270', '', '20', 'Naravno, Skinite mape sa http://gamebanana.com/maps

I odaberite zeljene te 
Uploud ih u maps pa upisite naziv mape u maps.ini
Primer 
Uploud de_dust2  u maps
pa onda upisete u maps.ini  de_dust2 
znaci koja je mapa to ime upisujete pozz', '1363371453');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1010', '269', '', '20', 'Pozdrav Stavio sam vam na slovo \"C\" nadam se da je to dobro 
Srdacan pozdrav ', '1363371665');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1011', '268', '52', '', 'Hvala. I taj radi, ali, ja sam mislio obican laser koji je vas kolega prije bio dodao, jednostavno: Uzmes bombu u ruku i desnim klikom biras mod: \"Homing, Satchel Charge, Trip Laser ...\" Hvala. :)', '1363371833');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1012', '268', '', '21', 'Ako hocete bas taj , jedino da sacekate kolegu pa da vam on ubaci bas taj . .Pozdrav.', '1363372270');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1013', '271', '45', '', 'Mnoge funkcije kod amx_supper ne rade provjerite u cemu je problem
admin komande takoder ne rade 
npr amx_map itd :S', '1363373330');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1014', '271', '', '20', 'Uredu Fler prosledjeno Borisu ', '1363373502');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1015', '271', '', '16', 'pozdrav, amx_supper.amxx treba da upises u users.ini da bi radio, amx_map radi samo sto treba da uploadujes zeljenu mapu, posto smo tanki sa mapama.', '1363378908');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1016', '268', '52', '', 'E, hvala vam puno. Plugin je \"Nademodes\", vec je bio ubacen, samo iskljucen, hvala vam.! Jos jedan problem, posto ste vi profesionalci sto se tice ovoga, htio bi da provjerite koji plugin i zasto srusi server svakih 5-7 sati. Ja cu onda taj plugin obrisat, no, problem je sto sve pluginove koje ja stavim rade, ali dodjem sutra i server srusen. Hvala, samo provjerite koji je plugin, nemojte mi, molim vas, vise brisati mod, namucio sam se. Hvala.', '1363420792');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1017', '272', '52', '', 'Nemogu promjeniti modele, kada promjenim server se vise nece upaliti pa moram ponovno vratiti zombieplague.ini. Ili ja radim nesto pogresno ili nesto nije kako treba. Htio bih da VIP imaju svoje modele i admini, da CT i T modeli budu drugaciji, da Nemesis ima svoj model, da Survivor ima svoj model. Ja sam stavio modele: Koshak_Nemesis_New_Anim - Nemesis, CSS_Urban_Nanosuit - Admin, flesh_creature - Admin Zombie, master_chief_red - Survivor. Mislio sam dali trebam preimenovati modele u \"gign\" ako i zamjeniti sa postojecim da to bude model/skin za gign-a, isto sa VIP, dali trebam da promjenim ime od CSS_Urban_Nanosuit u vip.mdl i staviti u vip folder da to bude vip skini, ali neznam, nemogu mjenjati modele, to je cinjenica, a nisam siguran radim li ja sve dobro. Hvala na pomoci! :)', '1363422966');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1018', '269', '52', '', 'Mozete li narediti na tamnije? Ja neznam kako da to napravim. Hvala!', '1363422987');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1019', '273', '40', '', 'mozete li mi dati link da skinem ovaj vas cod mw4 mod ako ga imate u winraru molim vas', '1363424351');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1020', '272', '', '20', 'Pozdrav Mi preporucujemo da modele ne ubacujes jer moze zabosti server te dovesti do padanja i ocitavanja velikih erora (2gb-4gb)
Lep Pozdrav', '1363424810');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1021', '269', '', '20', 'Uredu ja cu vam staviti potpuni mrak..
Lep pozdrav ', '1363424861');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1022', '272', '52', '', 'Pa znam. Ali modeli valjaju i svi serveri imaju svoje modele, a ovdje ja nemogu. Ako server zasteka, imam ja backup i lako ja obrisem i promjenim. Pozdrav. Ipak bih molio pomoc.', '1363428738');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1023', '273', '', '16', 'Pozdrav, nemamo u winrar-u.', '1363428899');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1024', '272', '', '16', 'Pozdrav, mi modele ne radimo u supportu, jer je to malo zajtevniji posao i trazi malo vise vremena, ako vam server pada kad ubacite modele to znaci da ne radite kako treba, jer da je do nas server uopste nebi radio.', '1363428996');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1025', '272', '52', '', 'Problem je sto vas server ne podrzava nikakve modele. Sto god je \"custom\" ubaceno, ne radi. Kao recimo kad ja ocu da ko na svakom normalnom serveru na Nemesis svira - Era Ameno i The Prodigy na nekim drugima, pise da podrzava .mp3, stavim ja sve ljepo, namjestim, kad ulazim u server nista ne skida, kad pokrenem mod ugasi se server, sad sam morao to vratiti kako je bilo. Jednostavno ne podrzava. Htio bih da VIP imaju Nanosuit skin, Nemesis da ima Nemesis skin i tako, da gamemodovi imaju svoju glazbu, ali jednostavno ne mogu. Kao da ste napravili da nitko nista ne moze sam. Cudno. Ako vec tako jest, mi nemozemo sami bez vas, a vi kazete da ne mozete pomoci, pa onda nista se nemoze ni promjeniti, to me muci. :) Ako ne radim kako treba, neznam kako treba, ubacim model i promjenim vezu do njega, kako inace treba. Evo, mozete vi barem probati, vi ste iskusni i vodite cjeli hosting. Hvala. :)', '1363429749');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1026', '274', '52', '', 'Htio bih da bude normalan(zelen) amx_say i ostalo, kako je bilo, ako je to moguce, naravno. Hvala.', '1363429819');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1027', '274', '', '16', 'Pozdrav, takav je plugin za say, mi plugin ne mozemo da menjamo, ali potrudicemo se da nadjemo neki u narednom periodu koji vama odgovara.', '1363430743');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1028', '272', '', '16', 'Pozdrav, nismo mi nista ugasili da vi ne mozete da menjate, nego jednostavno ne radite to na pravi nacin tj negde pogresite u dodavanju, ja sam juce radio svoj zombie server trebalo mi je par sati ali sam sve izmenio i modele zombia i sve lepo radi ako ne verujete evo IP pa se uverite sami.. 144.76.46.198:22222 ', '1363430904');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1029', '274', '52', '', 'Pa dobro, ja sam sam to napravio - Iskljucio sam onaj kao napredni tsay, csay, say ... :) P.S. Imate super default pluginove. ', '1363431013');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1030', '272', '52', '', 'Pa dobro, ali pitanje jos stoji: \"Kako?\" kad zombie_source nemogu promjeniti, nemogu promjeniti nista, nesto ne radim dobro, ali sto? Hocete li pomoci ako vam dam model a vi probate staviti? Molim vas da barem pokusate. Hvala Vam i pozdrav!', '1363431096');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1031', '274', '', '16', 'Oki eto resio si problem, a default plugine sam licno ja ubacivao tako da hvala, sad u novijem modu koji sam juce spremio bice jos plugina i pregledniji plugins.ini :)', '1363431098');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1032', '272', '', '16', 'Ne mi modele ne radimo u podrsci, ja ne mogu da vam menjam to jer mi to odnosi vremena, takve supporte vam ni jedan hosting ne radi, znaci morate sami upravo zbog takvih gresaka kao sto se vama desavaju.Ja sam vam dao server koji sam juce radio da se uverite da su modeli izmenjeni a da server radi. I sad dolazimo na ono prvo a to je da nesto ne radite kako treba. Jedino sto mogu da vam dam je moj kontakt E-mail pa ako vam treba nesto sitno tako mozda bih mogao da pomognem. E-mail demon@sd-hq.info', '1363431252');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1033', '272', '52', '', 'Pa samo trazim da me barem pokusate nauciti kako. Ja znam gdje sta ide, ali kako ih aktivirati je druga prica. Dobro. Kontaktirati cu vas. Hvala.', '1363432066');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1034', '273', '40', '', 'a mozete li staviti u mediafire ili neki storage to sto imate sve plugine za mod i da mi date link', '1363433219');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1035', '275', '52', '', 'Ja sam ljepo sve naredio a netko resetira server i sredjuje nam plugnove, sredjuje nam plugins.ini, do sad je sve bilo normalno, jel to netko od vas??', '1363440610');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1036', '276', '52', '', 'Nesto uzrokuje server da pada, mozete li provjeriti sto? Hvala.', '1363443449');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1037', '276', '52', '', 'Rjeseno je cini se. Obavjestit cu vas kasnije, u plugins-zm.ini sam slucajno stavio \"z\" ispred ; pa je pogresno detektirao. Hvala. :)', '1363443539');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1053', '279', '', '20', 'Upravu ulazim na server da pogledam inace postavio sam http://forum.arenahosting.info/showthread.php?539-PAZNJA-Vazno-OBAVESTENJE&p=2372#post2372

', '1363461017');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1039', '271', '45', '', 'Aha oke hvala ;)', '1363451552');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1052', '279', '52', '', 'Nije to. Pogledaj na Arena Hosting Main, \"DDos napadi\", kaze da svima steka. Nije samo nama, ali bih volio da provjerite zasto \"Armageddon Mod\" neradi.', '1363460788');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1041', '271', '', '20', 'Zatvaram ticket pozzz
', '1363453517');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1042', '278', '37', '', 'sta je ovo sa srw stalno stane svima iigracima sad bude onlin a onda ofline pomocc baa', '1363454323');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1043', '279', '52', '', 'Po pocetnome, mi trebamo imati i \"Antodite\" i \"Infection Bomb\" u \"Extra Items\" za zombije. Ja to vise nemam od prije nekih sat i pol. Mozete li to vratiti? Hvala! :)', '1363454919');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1044', '279', '52', '', 'Pokrenem Armageddon mod i server zasteka!', '1363454964');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1045', '280', '39', '', 'Imam problem server mi opet laga...', '1363457811');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1046', '279', '', '20', 'Da to je problem moda 5.0.5 mnogo je tezak,mi razvijamo 6.0 valda ce ispravno raditi,te nece imati laga ali nece imati ni tih amargedon moda..
Lep pozdrav ', '1363458944');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1051', '279', '', '20', 'Da moguce je ako ste pretrpali server s nepotrebnim stvarima,sad cu se konektovati na vas server te pogledati razlog 
Pozdrav', '1363460316');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1048', '280', '', '1', 'DDos,bice rejeseno do veceras.', '1363459798');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1049', '278', '', '19', 'DDos,bice rjeseno do veceras.', '1363459836');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1050', '279', '52', '', 'Jos jedan problem - server malo malo zasteka, ulaguje, ne radi kako spada, probajte doci i uvjerite se sami. :/', '1363460018');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1054', '279', '52', '', 'Jos uvijek steka. Shvacam ja da su to \"virusi\". Ja cu se strpiti, pa se vidimo sutra, lag je jos tu, pa cemo sutra, a molio bih vas da pogledate zasto \"Armageddon Mod\" ne radi od prije neka 4 sata odjednom je prestao. Hvala vam. :)', '1363461808');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1055', '279', '', '20', 'Uredu ja nemogu se konektovati na vas server iz nepoznatog razloga verovatno je do nekog modela u pitanju samo mi ubaguje cs prosledit cu ticket kolegi da on pokusa,
Lep pozdrav ', '1363461950');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1056', '281', '58', '', 'Trebami pomoc ja sam stavio zm sve mape ali sledeca mapa nije zm nego npr de dust 2 ja sam izbriso sve mape osim zombie mape ali sledeca mapa nije zombie nego de dust a npr treba zm defense ?', '1363467060');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1057', '282', '58', '', 'Kako da dodam nove klase zombia skino sam ih ja samo kako ih dodati', '1363468115');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1058', '283', '61', '', 'Imam problem sa serverom mnogo laguje secka cesto pise da je server online igraci samo izlaze..Koji razlog moze da bude i kako mogu da sredim taj lag? hvala unapred.', '1363468410');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1059', '282', '', '20', 'Pozdrav upisete plugin u Plugins te onda to ime upisete u Plugins.ini
promenete mapu i ako ste dobro uradili radit ce ', '1363468756');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1060', '281', '', '20', 'da bi to uspelo morate izmenuti spisaka mapa u mapcykle.ini 
jos nesto 
mapu De_dust2 ne brisite jer je to po defaultu mapa iz maps i iz maps.ini ne brisite ali slobodno mozete iz mapcykle.ini 
pozdrav', '1363468851');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1061', '282', '58', '', 'Ma uradio sam to ali nece opet nesto.Pozdrav', '1363468878');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1062', '281', '58', '', 'Ali nema mapcykle.ini NEPOSTOJI', '1363468915');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1063', '283', '', '20', 'Pozdrav verovatno vam se to desavalo u toku napada na nasu masinu,ovde imate detaljnije http://forum.arenahosting.info/showthread.php?539-PAZNJA-Vazno-OBAVESTENJE&p=2372#post2372   Nadam se da je prestao lag
Srdacan pozdrav', '1363468944');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1064', '282', '', '20', 'Verovatno niste onda lepo Uploud 
Nakon sto skinete plugin sa interneta 
sa extenzijom .amxx (Primer)
zp_tight10c.amxx 
to uploud u Plugins te upisete ime 
zp_tight10c.amxx NAPOMENA OVO JE SAMO PRIMER ALI JE POSTUPAK ISTI..', '1363469029');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1065', '283', '61', '', 'ovo mi je dosta pomoglo lag je prestao hvala', '1363469099');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1066', '281', '', '20', 'Znaci idete sledecom putanjom 
Web FTP = CSTRIKE=mapcycle.txt
tu upisete zm mape 
Lep pozdrav', '1363469131');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1067', '283', '', '20', 'Tu smo da pomognemo.Inace tek kada se ulogujete u vas panel na pocetnoj strani imate najjnovija obavestenja o radu na masini te eventualnim problemima..
Srdacan pozdrav ', '1363469211');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1068', '282', '58', '', 'Vako je meni  zp_class_climb.amxx OVO sam ubacio u plugins.Onda sam upiso upiso ime zp_class_climb.amxx UU
plugins.ini a ima i fajl nekakav zp_class_climb.sma gdje to ubacim', '1363469560');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1069', '282', '', '20', 'Pozdrav ta extenzija .sma nije potrebna jer ona se koristi u koliko zelis editovati(promenuti)plugin,to je malo komplikovanije znaci nije potreban..
', '1363469722');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1070', '282', '58', '', 'Uredu ', '1363470431');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1071', '284', '58', '', 'Sto laga server toliko da se nemoze igrati', '1363470455');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1072', '284', '58', '', 'Svako 1min laga i moram restartovati server ili refresh stoo!!', '1363471132');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1074', '284', '', '20', 'Imate ovde detaljnije objasnjeno 
Lep pozdrav 
http://forum.arenahosting.info/showthread.php?539-PAZNJA-Vazno-OBAVESTENJE&p=2372#post2372', '1363471555');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1078', '284', '', '20', 'Pokusajemo da blokiramo odakle dolaze napadi sredit ce se to brzo,budi te bez brige
Srdacan pozdrav ', '1363471787');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1077', '284', '58', '', 'Ko vas je napao neki hacker ili neko jebemu sve.Lep pozdrav :D', '1363471733');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1079', '284', '58', '', 'dobro :D pozdrav', '1363471890');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1080', '287', '58', '', 'Kako da ja napravim npr kada zombia pucam i oduzmem mu 200 dmg da mi da npr 2 ama
ILI ', '1363472521');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1081', '287', '', '20', 'zombiplague.cfg tu podesavas 
Pozdrav', '1363472614');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1082', '287', '58', '', 'Pozdrav. Hvala ', '1363477666');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1083', '288', '58', '', 'Dodo sam banku ali kako da restartujem amo pakove u banci
', '1363482437');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1084', '289', '52', '', 'Server se srusio preko noci, jednostavno se ugasio, barem meni tako na panelu pise. Neznam zasto, a nemogu ni provjeriti u cemu je stvar. Svi pluginovi trebaju raditi kako treba, a ovo se dogadja od samog pocetka servera. Trazim za podrsku da pogledate, ako je to moguce, molim vas, u cemu je stvar. Hvala.', '1363510539');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1085', '289', '', '20', 'Pozdrav sad sam pogledao Erore koje moguce je da ruse server 
problem je u \"zp_vote_modes.amxx\"
Lep pozdrav ', '1363510805');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1086', '288', '', '20', 'Pozdrav o kojoj je banci rec jer verovatno postoji neki cvar kad ste skidali,sada sam gledao u bank.cfg i tamo nema samo moze se nastimati limit u banci,Lep pozdrav', '1363510975');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1087', '289', '52', '', 'Znam. Na Allied Modders gledam, stavio sam problem, kaze da je napravljen za 5.0.8, što je skoro isto kao i 5.0.5, i da nece taj plugin raditi na ranijim verzijama od 5.0, na amx_plugins dobijem \"unknown unknown unknown   bad load\" ... Neznam zasto ne radi, ali je pravilno stavljen, u suprotnom ne bi ni bio na amx_plugins, postoji li nekakav jos nacin da provjerim u cemu je stvar? Nije ovo jedini plugin koji je napravljen za ZP5.0+ a daje mi \"Bad Load\" ... Hvala.', '1363511072');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1088', '289', '', '20', 'Po meni jedino da iskljucis taj plugin dok ne nadjes zamenski,jer padat ce server kad verovatno kad ima igraca + gubis igrace i nece da ostaju na serveru.Po meni ja nebi ubacivao nikakve modele jer ako nemas Fast Download niko nece da ceka 20 minuta da se poskidaju modeli i ostalo 
Lep pozdrav ', '1363511278');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1089', '289', '52', '', 'Imam Fast Download, sam sam napravio po svome, ali sada trazim pravi hosting za FastDL. A nemogu ubacivati modele ni glazbu niti ista zato sto sam upravo saznao da ... recimo ... umm ... neznam. Tamo u zombieplague.cfg i zombieplague.ini ako nesto dirnem sto nisu brojke ode server. Ako mi mozete pomoci, molio bih vas da me kontaktirate na thezerots@hotmail.com - stvarno trebam pomoc. Sjetio sam se da imam Dropbox pa sam tamo stavio zato sto je to otprilike 1.8x brze, a sada trazim neki bolji fajl hosting. No, problem je sto trebam nekakav tutorial od vas za to. Pa ako mozete pomoci, pokazati kako se to radi, zato sto nije onako kako je po default napravljeno, ili nesto fali onome sto sam ja napravio. Hvala vam puno! Pozdrav. :)', '1363511722');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1090', '289', '', '20', 'Pa pazi zombiplague.cfg tamo stimas sve sto se tice moda
npr KOliko da traje MADDNESS kod zombia 
Leap zombia svetlost na mapama 
NV(night vision) menjas boju 
te mnoge stvari.A u server.cfg pod sv_download url \"upisujes fast download tj link od fd-a\".
Baci pogled na ovaj link imas tu neke tutorijale http://forum.arenahosting.info/showthread.php?498-Sve-za-Zombie-Mod
Lep pozdrav ', '1363512092');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1091', '278', '37', '', 'ok  hwala :)', '1363514883');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1092', '290', '52', '', 'Kada upalim Armageddon mod - server zasteka. Pomoc? Hvala.', '1363522095');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1093', '290', '', '24', 'Jel komplet zasteka ili secka ??', '1363522149');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1094', '291', '44', '', 'Server mi je poceo bagovati od juce, Resetujem ga on ne radi nez sta je !! MOd je zm radio je normalno pre a sad baguje stalno !', '1363522900');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1095', '291', '', '24', 'Sad sam ulazio na server lepo radi sem sto erori pune logove,nemogu tacno da utvrdim razlog posto nemogu otvoriti eror,suvise je tezak 2 gb po 7x 
', '1363523553');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1096', '292', '65', '', 'stavio sam mod DM i ne radi cekao sam odredjeno vrijeme i vise i ne radi
', '1363525989');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1097', '292', '', '24', 'Podeseno..
Lep pozdrav ', '1363526822');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1098', '292', '65', '', 'HVALA TI NAJVISE', '1363526832');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1099', '292', '', '24', 'Tu smo da pomognemo Zatvaram ticket..Ukoliko vam bude potrebna pomoc otvorite novi 
Srdacan Pozdrav', '1363526890');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1100', '293', '65', '', 'mozete li mi ubaciti ono da u configs ima folder mdbbans i tu imam podesavanja kao na PUBU molim vas hitno mi je 
', '1363528103');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1101', '294', '64', '', 'Drugari moze pitanje tek sad vidim da ako narucim srvr dobim dz ts :D prejebeno naci ovo nigde nisam video svuda je ts posebno  i prodaje se ae molim vas napravite mi ts imam samp srvr  vec ovde ae  molim vas <333 najjaci hosting :* kad kazem ovo drugarima imat cete promet veci nego kgb xd :D ae molim vas ', '1363529159');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1102', '295', '58', '', 'Ma staje ovo offline uopste nije crveno nego ffline i nema sanse da se pokrene server!', '1363530248');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1103', '294', '', '24', 'Pozdrav Sve dodatne Usloge kostaju 4e to mozete videti na nasoj pocetnoj stranici 
www.arenahosting.info', '1363530598');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1104', '294', '64', '', 'al pise tamo na pocetnoj uz kupljeni srvr dobivate i ts gratis ', '1363530679');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1105', '294', '', '24', 'Pogledat cu s Borisom u cemu je rec.MOzda je greska na pocetnoj
Lep pozdrav ', '1363530770');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1106', '294', '64', '', 'uz svaki zakupljen gameserver dobivate teamspeak3 server potpuno besplatan... ETO TO PISE SAD SAM PREKOPIRO POZZ ;) ', '1363531097');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1107', '294', '', '24', 'Pricekaj dok dobijem Potvrdne informacije...', '1363531427');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1108', '290', '52', '', 'Zasteka server i mora se restart. Ja sam ponovno stavio zombieplague.cfg i .ini ako je tamo problem, sada radi ... Ali nemogu stavljati svoje zvukove i to, kako da stavim put? sound/zombie_plague/zvuk.wav ili? Ili da ja vama nekako dam pa da vi stavite? Hvala.', '1363532569');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1109', '289', '52', '', 'Sredio sam ja fast DL, ali mozete li vi na thezerots@hotmail.com ili na forum napraviti tutorial kako staviti svoje modele, skinove, zvukove, glazbu za modove i sve to i u zombieplague.ini? Hvala! :)', '1363532709');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1110', '289', '', '24', 'Izvoli 
http://forum.arenahosting.info/showthread.php?498-Sve-za-Zombie-Mod
tu imas sve ', '1363532914');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1111', '290', '', '24', 'Pozdrav zvukove uploud u SOUNDS,Modele u MODELS 
plugine u Plugins i upisete u plugins.ini 
Lep pozdrav ', '1363532976');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1112', '290', '52', '', 'Da, ali kako da zvukove ili modele upisem i gdje, zar ne bih trebao u zombieplague.ini to? A kako? Kako da recimo stavim glazbu za Armageddon i Nemesis mod? To bi trebalo nekako u zombieplague.ini ali neznam kako ...', '1363533843');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1113', '290', '', '24', 'Izvoli ovaj link tu sve ima nadam se da ce ti pomoci 
http://forum.arenahosting.info/showthread.php?498-Sve-za-Zombie-Mod', '1363533983');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1114', '290', '52', '', 'Vidio sam vec, nema toga tamo, no svejedno hvala na pomoci. :)', '1363536073');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1115', '296', '52', '', 'Ne radi flashlight. Ja upalim i cuje se zvuk kako se pali, ali jednostavno nije ukljucena i ne vidi se. Hvala na pomoci. Pozdrav.', '1363536140');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1116', '296', '', '24', 'Pozdrav pokusaj sad 
', '1363536410');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1117', '296', '52', '', 'Pokusao sam ali ne radi. Dodji vidjeti ako mozes. Hvala. :)', '1363536719');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1118', '296', '', '24', '?ad sam usao ali ti mi rece da si ubacivao neki plugin vezan za flashlight Ugasi taj plugin i sve vezano za njeg sacuvaj promene,promeni mapu i vidi oce li raditi..Lep pozdrav', '1363537591');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1119', '296', '52', '', 'Obriso sam plugin i sve vezano za to ali neradi.', '1363538339');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1120', '296', '52', '', 'Aktivirao sam \"Custom Flashlight\". To je rjeseno, sada radi. Zaboravio sam, gdje se povecama svjetlost? Ono a - najmracnije i z - najsvjetlije i to po slovima? Hvala.', '1363539054');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1121', '295', '', '23', 'Pozdrav, evo sad radi server :)', '1363539297');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1122', '296', '', '24', 'A-najjmracnije za mape
z-Najjsvetlije
Lep pozdrav ', '1363539509');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1123', '296', '52', '', 'pitao sam gdje, ali sam shvatio da je u zombieplague.cfg. Hvala puno! :)', '1363539887');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1124', '296', '', '24', 'Uredu.Zatvaram ticket u koliko bude potrebna pomoc mozete uvek otvoriti novi ticket..Lep pozdrav', '1363540033');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1125', '297', '52', '', 'Nema /boost. Mozete li vratiti? Hvala. :)', '1363541156');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1126', '297', '', '23', 'ne razumem pitanje ?', '1363541457');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1127', '297', '52', '', 'Pa nema /boost na serveru, a bio je, moze li jednostavnije? Nestao nam /boost sa servera.', '1363541525');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1128', '297', '', '23', 'pa kakve mi veze imamo stim boostom ?', '1363542415');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1129', '297', '', '23', 'Dali hocete plugin za boost ili ?', '1363542443');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1130', '295', '58', '', 'EW gledaj pa nema nista sve sto sam radio 5 dana sve se izbrisalo jebo ga dan!', '1363542711');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1131', '295', '58', '', 'Sve plugine se izbrisale trebalo mi 5 dana ', '1363542835');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1132', '295', '58', '', 'Ima da vi to popravite neznam ja kako ali to ce te vi popraviti PET DANA SAM RADIO NA SERVERU DODAVO PLUGINE I OSTALE MODELE I SVE SE IZBRISALO !!!', '1363543063');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1133', '297', '52', '', 'Pa bilo je kada upises /boost da ti izbaci: \"Izaberi zemlju\" onda izaberes pa onda pise \"Pogledajte u konzolu za sve informacije\" ako je to plugin onda to. :) Hvala.', '1363543385');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1134', '295', '', '22', 'Zdravo Adnan . Server nije reinstaliran i nije do nas prob taj sto su ti se pobrisali svi fajlovi . Otvori temu na forumu i napisi sve sto bi trebalo da se sredi. Izvinjavamo se na svemu i nadam se da cete imati razumevanja. ', '1363543763');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1135', '297', '', '24', 'Ubaceno, ', '1363543817');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1136', '295', '58', '', 'Dobro hocu hajde nema veze ionako sam spasio fajlove sve samo da ih vratim :)', '1363544761');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1137', '295', '', '1', 'To da pise netacan password i username ste vi doprinjeli ubacivanjem plugina.Izacemo vam i ovaj put u susret i ubaciti sve potrebno samo da nam tacno navedete sta zelite.', '1363544941');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1138', '295', '', '1', 'Nasa greska,kasno smo odogovorili ovdje ona ide zakljucavanje ako je sve rjeseno', '1363544993');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1139', '294', '', '1', 'TeamSpeak 3 je potpuno izbacen iz ponude,radimo novi sajt pa cjene na postojecem nismo mjenjali', '1363546129');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1141', '294', '64', '', 'uredu :)', '1363549369');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1142', '299', '65', '', 'mozete li dodati onu komandu /admins i dodam admina a da ne moram rr srw samo kucam /admins i dodam ili obrisem admina', '1363554937');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1143', '300', '1', '', 'test hahaha like', '1363555492');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1144', '299', '', '23', 'Ubaceno, samo sa ovim pluginom imas veci rizik da ti neko upadne i poskida sve admine i td... sacekaj da se promeni mapa ili restartuj server', '1363555518');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1145', '301', '66', '', 'Jel moze reinstall servera nemogu ga dodati na gametracker.rs jer je srw offline a u panelu je startovan moguce da je drugi head ubacio neki plugin koi rusi server pa ako moze sto pre reinstall', '1363570449');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1146', '302', '61', '', 'Pozdrav, mozda je malo bezobrazno od mene ali ako biste mogli da mi stavite stats opet ja sam nesto vracao menjao zezao se bzv i izgubio stats. Zelim da stavim server na hns mod i  da ga ostavim tako,ali usput ako mozete da mi stavite stats i da stavite da sv_aicelerate bude na 100 prosli put sam promenio mod jer nisam znao kako da stavim na 100 hvala unapred podrsci.', '1363596609');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1147', '301', '', '22', 'Reinstaliran je server, obavezno sacekati 5 min pa ga pokrenuti. ', '1363597145');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1148', '301', '66', '', 'Hvala,sacekacu 5 minuta', '1363599422');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1149', '299', '65', '', 'ok', '1363599601');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1150', '301', '', '22', 'Zao mi je ali vas moram obavestiti da imamo neki problem oko masine, ja trenutno ne mogu nista da resim . Prosledicu poruku Adminima i nadam se da ce u najkracem mogucem roku biti sve reseno. Hvala na strpljenju i izvinjavam se u ime cele Administracije.', '1363599902');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1151', '301', '', '24', 'Pozdrav Popravio sam vam server sad vam radi lepo

Srdacan pozdrav ', '1363603056');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1152', '303', '1', '', 'daj sredite ovaj demo server nece da se upali :@@@', '1363607246');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1153', '303', '', '24', 'Mozete iznajmiti svoj server vise informacija na www.arenahosting.info
Lep pozdrav ', '1363607543');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1251', '401', '1', '', 'zasta brises tikete oces li da letas iz podrske?', '1363608491');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1252', '401', '', '24', 'Nepotrebni spam pravis,+ sada cu da promenim password od tog demo klijenta', '1363608532');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1267', '416', '1', '', 'Zemire nemoj da brises tiketa bre!!!!', '1363609014');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1519', '667', '58', '', 'PA STO JE PAO OPET JEBO GA DAN I SERVER VRATIO PLUGINE I OPET PAO ', '1363623371');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1520', '667', '58', '', 'NEMOJTE GOVORITI NESTO MOZDA PLUGIN NERADI ILI NESTO SVE RADI ALI VAS SERVER NERADI TO JE PROBLEM', '1363623545');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1518', '291', '', '23', 'Pozdrav, server ti baguje i pada zbog ovih plugin-a  zp_get_user_zombie  zp_get_user_zombie  verovatno ima jos ali kao sto je kolega rekao vrlo su teski logovi po 2gb a to ne moze da se otvori, tako da sve te plugine moras srediti ako zelis da ti ne baguje i ne pada server.', '1363615818');
INSERT INTO `tiketi_odgovori`(`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES ('1517', '666', '1', '', 'zemir zasta mi brises tiketi bre ko ti je dao da radis u podrsci omfg!! xDDD', '1363609452');
#---------------------------------------------------------------------------------

