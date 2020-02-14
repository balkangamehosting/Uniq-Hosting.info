-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 30. Jan 2018 um 15:52
-- Server Version: 5.1.73
-- PHP-Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `gpanel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `napomena` text CHARACTER SET utf8 NOT NULL,
  `signature` text NOT NULL,
  `lastactivity` text NOT NULL,
  `boja` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `signature`, `lastactivity`, `boja`) VALUES
(1, 'Uniq', 'Hosting', 'kobiC', '512352523523523', 'info@uniq-hosting.info', 'admin', 'Morph evo par prjedloga za panel jos:\r\nDa ubacis cjenu,prilikom kreiranja server-a da upisemo cjenu i da u game panelu mogu da vide cjenu\r\nOne ikonice sto sam ti pricao zavisno od igre\r\nPrecice za samp i half life a ne samo za cs', 'Best regards / S poštovanjem,\r\nMilos Stefanovic\r\nOwner / Osnivac\r\nE-mail: info@uniq-hosting.info', '1517306208', 'red'),
(35, 'Marko', 'Seselj', 'Mark0', 'markothegod15', 'mark0', 'admin', 'Dobrodosao na e-trail hosting! :)', '', '1517232680', 'red');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `box`
--

CREATE TABLE IF NOT EXISTS `box` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `box`
--

INSERT INTO `box` (`id`, `name`, `ip`, `username`, `password`, `ftp_port`, `ssh_port`, `location`, `slobodan`) VALUES
(1, 'Dedicated', '54.37.204.92', 'root', 'TjAxZmM4T0Y=', 21, 22, 'Germany', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chat_messages`
--

CREATE TABLE IF NOT EXISTS `chat_messages` (
  `Text` text,
  `Autor` text NOT NULL,
  `Datum` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `chat_messages`
--

INSERT INTO `chat_messages` (`Text`, `Autor`, `Datum`, `ID`) VALUES
('Otvorio sam nov tiket <a href=admin.php?page=tiket&akcija=pregled&id=1>Pomoc</a>', '<span>Zicko Dizajner</span>', '29 Jan 2018, 20:31:50', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `lastactivity` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `clients`
--

INSERT INTO `clients` (`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES
(1, 'Milos', 'Stefanovic', 'stefanovicm00@gmail.com', 'bfe672df4fd6bd01d42c96cdf4ed20d4', '1517306173'),
(2, 'Aleksandar', 'Kenic', 'andjela1kenic@gmail.com', '9122f993068b2710a79d835ac5b86861', '1517319429'),
(3, 'Hard', 'Hard', 'ekipamrak@gmail.com', '9d696fcdec4d3cfd8005980255a2f1df', '1517306210'),
(4, 'Zicko', 'Dizajner', 'lazicigorbiz@gmail.com', '4d17dfc82d39484b6d2ce8472d65994a', '1517306197');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ip`
--

CREATE TABLE IF NOT EXISTS `ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `ip`
--

INSERT INTO `ip` (`id`, `box_id`, `ip`) VALUES
(1, 1, '54.37.204.92');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ip_logs`
--

CREATE TABLE IF NOT EXISTS `ip_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `vreme` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Daten für Tabelle `ip_logs`
--

INSERT INTO `ip_logs` (`id`, `ip`, `user_id`, `hostname`, `vreme`) VALUES
(1, '109.245.79.101', '2', 'net101-79-245-109.dynamic.mbb.telenor.rs', '1516975746'),
(2, '109.93.1.72', '3', '109-93-1-72.dynamic.isp.telekom.rs', '1516982229'),
(3, '109.122.123.99', '3', '109.122.123.99', '1516984671'),
(4, '109.122.123.99', '3', '109.122.123.99', '1516990651'),
(5, '109.122.123.99', '3', '109.122.123.99', '1516993375'),
(6, '109.93.113.10', '1', '109-93-113-10.dynamic.isp.telekom.rs', '1517011433'),
(7, '109.92.154.76', '1', '109-92-154-76.dynamic.isp.telekom.rs', '1517021290'),
(8, '178.222.25.106', '1', '178-222-25-106.dynamic.isp.telekom.rs', '1517039961'),
(9, '178.222.25.106', '1', '178-222-25-106.dynamic.isp.telekom.rs', '1517040313'),
(10, '178.222.25.106', '1', '178-222-25-106.dynamic.isp.telekom.rs', '1517043530'),
(11, '178.222.25.106', '1', '178-222-25-106.dynamic.isp.telekom.rs', '1517046080'),
(12, '178.222.25.106', '1', '178-222-25-106.dynamic.isp.telekom.rs', '1517051027'),
(13, '109.245.79.101', '2', 'net101-79-245-109.dynamic.mbb.telenor.rs', '1517052513'),
(14, '109.122.123.99', '3', '109.122.123.99', '1517057866'),
(15, '109.245.79.101', '2', 'net101-79-245-109.dynamic.mbb.telenor.rs', '1517063847'),
(16, '109.122.123.99', '3', '109.122.123.99', '1517091562'),
(17, '109.245.79.101', '2', 'net101-79-245-109.dynamic.mbb.telenor.rs', '1517133013'),
(18, '109.245.79.38', '2', 'net38-79-245-109.dynamic.mbb.telenor.rs', '1517146842'),
(19, '109.245.79.38', '2', 'net38-79-245-109.dynamic.mbb.telenor.rs', '1517151280'),
(20, '92.244.159.244', '4', 'dynamic-92-244-159-244.cpe.vektor.net', '1517151616'),
(21, '178.222.19.211', '2', '178-222-19-211.dynamic.isp.telekom.rs', '1517160791'),
(22, '109.245.175.64', '2', 'net64-175-245-109.dynamic.mbb.telenor.rs', '1517244138'),
(23, '92.244.159.244', '4', 'dynamic-92-244-159-244.cpe.vektor.net', '1517249542'),
(24, '178.221.183.22', '1', '178-221-183-22.dynamic.isp.telekom.rs', '1517264852'),
(25, '178.221.183.22', '1', '178-221-183-22.dynamic.isp.telekom.rs', '1517270501'),
(26, '178.222.24.7', '1', '178-222-24-7.dynamic.isp.telekom.rs', '1517302560'),
(27, '109.245.175.64', '2', 'net64-175-245-109.dynamic.mbb.telenor.rs', '1517318450');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logovi`
--

CREATE TABLE IF NOT EXISTS `logovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `boxid` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vreme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `logovi`
--

INSERT INTO `logovi` (`id`, `clientid`, `serverid`, `boxid`, `message`, `name`, `ip`, `vreme`) VALUES
(1, 1, 0, NULL, 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Cs</a>', 'Uniq Hosting', '109.93.1.72', '26.01.2018 14:59'),
(2, 1, 1, NULL, 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=1>Cs</a>', 'Uniq Hosting', '109.93.1.72', '26.01.2018 15:04'),
(3, 1, 1, NULL, 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=1>Cs by Uniq-Hosting.info</a>', 'Uniq Hosting', '109.93.1.72', '26.01.2018 15:04'),
(4, 1, 0, NULL, 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Zeljko</a>', 'Uniq Hosting', '109.93.1.72', '26.01.2018 16:55'),
(5, 1, 0, NULL, 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Cs</a>', 'Uniq Hosting', '109.93.1.72', '26.01.2018 18:32'),
(6, 1, 0, NULL, 'Admin je napravio server: <a href=admin.php?page=serveri&akcija=uredi&id=>Samp</a>', 'Uniq Hosting', '178.222.19.211', '28.01.2018 12:47'),
(7, 1, 3, NULL, 'Admin je editovao server: <a href=admin.php?page=serveri&akcija=uredi&id=3>Invasion [Grobari Vs Delije]™</a>', 'Uniq Hosting', '178.222.19.211', '28.01.2018 15:09');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od` varchar(30) NOT NULL,
  `za` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `server` varchar(30) NOT NULL,
  `server_id` varchar(30) NOT NULL,
  `vreme` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `modovi`
--

CREATE TABLE IF NOT EXISTS `modovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `putanja` text CHARACTER SET utf8 NOT NULL,
  `ime` text CHARACTER SET utf8 NOT NULL,
  `igra` text CHARACTER SET utf8 NOT NULL,
  `komanda` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  `mapa` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Daten für Tabelle `modovi`
--

INSERT INTO `modovi` (`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`, `mapa`) VALUES
(1, '/home/gamefiles/cs', 'Public', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate 333 -pingboost 0 +map {$map} +servercfgfile server.cfg', 0, 'de_dust2'),
(2, '/home/gamefiles/srv_13_786', 'Cw Nemacka masina', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', 1, 'de_dust2'),
(4, '/home/modovi/gamefiles/cs16/cw', 'CW', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', 1, 'de_dust2'),
(5, '/home/modovi/gamefiles/cs16/gg', 'GunGame', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', 1, 'gg_dusty'),
(6, '/home/modovi/gamefiles/cs16/dm', 'DeathMatch', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', 1, 'de_dust2'),
(7, '/home/modovi/samp0.3x/samp03', 'SA:MP 0.3z (default)', 'SA:MP', './samp03svr', 0, 'Los Santos'),
(24, '/home/modovi/gamefiles/cs16/paintball', 'PaintBall', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'pb_castle'),
(9, '/home/modovi/gamefiles/cs16/jb', 'JailBreak', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'jail_xmf'),
(10, '/home/modovi/gamefiles/cs16/surf', 'Surf', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg ', 1, 'surf_1337'),
(11, '/home/modovi/gamefiles/cs16/deathrun', 'DeathRun', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'deathrun_4life'),
(12, '/home/modovi/gamefiles/cs16/hns', 'HideNSeek', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'hns_nova'),
(13, '/home/modovi/gamefiles/cs16/zombi', 'Zombie 5.0.5', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'zm_dust2'),
(14, '/home/modovi/gamefiles/cs16/kreedz', 'Kreedz', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'bkz_goldbhop'),
(15, '/home/modovi/gamefiles/cs16/knife', 'Knife', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'noz_ultra'),
(17, '/home/modovi/gamefiles/cs16/codmw4', 'COD:MW4', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(18, '/home/modovi/gamefiles/cs16/zombi4.3', 'Zombie 4.3', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(19, '/home/modovi/gamefiles/cs16/zmurka', 'Zmurka', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(20, '/home/modovi/samp0.3x/samp03', 'Za prebacivanje sa CS-a na SAMP', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'Los Santos'),
(21, '/home/modovi/gamefiles/cs16/basebuilder/bb', 'Base Builder', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'bb_dust2long2'),
(25, '/home/modovi/samp0.3x/samp0.3R2/samp03', 'SA:MP 0.3x R2 (default)', 'SA:MP', './samp03svr', 1, 'Los Santos'),
(23, '/home/modovi/halflife/hl1', 'Half Life', 'Half Life', './hlds_run -game  valve +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'crossfire'),
(26, '/home/modovi/gamefiles/cs-test', 'Public Clean ( bez plugina )', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(27, '/home/modovi/gamefiles/cs16/public/bababa', 'Nova masina mod.', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(28, '/home/modovi/gamefiles/cs16/cw', 'CW - Mod', 'CW', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(29, '/servers/csgo/public', 'CS GO TEST', 'CSgo', './srcds_run srcds -game csgo -console -usercon +game_type 0 +game_mode 0 -maxplayers_override {$slots} +exec classic_casual.cfg +mapgroup mg_csgo +map {$map} -ip {$ip} -port {$port} -tickrate 128', 1, 'de_dust'),
(30, '/home/gamefiles/mc', 'Minecraft', 'Minecraft', 'java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui', 1, 'Minecraft'),
(31, '/home/gamefiles/public', 'Public PREMIUM ', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(32, '/home/gamefiles/home/fieldline/hlds', 'testttttttttttttttttttttt', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 2 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2'),
(33, 'home/kud-si/posao', 'default', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate {$fps} -pingboost 0 +map {$map} +servercfgfile server.cfg', 1, 'de_dust2');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=57 ;

--
-- Daten für Tabelle `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `text`, `hidden`) VALUES
(49, 'Sretni Praznici', '2014-04-20', 'Srecni i uspesni praznici zeli vam vasa Arena Hosting Administracija..<p>            </p>\r\n            \r\n            ', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `online` varchar(2) DEFAULT NULL,
  `poruka` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `online`
--

INSERT INTO `online` (`online`, `poruka`) VALUES
('fi', '1347207724'),
('Da', 'Test'),
('fi', '1347207727'),
('fi', '1347207858'),
('fi', '1347207866'),
('fi', '1347207877'),
('fi', '1347207953');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `serveri`
--

CREATE TABLE IF NOT EXISTS `serveri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `cena` varchar(10) COLLATE latin1_general_ci NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `serveri`
--

INSERT INTO `serveri` (`id`, `user_id`, `box_id`, `ip_id`, `name`, `cena`, `mod`, `map`, `port`, `fps`, `slotovi`, `username`, `password`, `istice`, `status`, `startovan`, `free`, `uplatnica`) VALUES
(1, 2, 1, 1, 'Luda Kuca oldscholl', '705', '1', 'de_dust2', '27015', 300, 32, 'srv_1_442', 'zvZMWQ9n', '2018-02-26', 'Aktivan', 1, '0', ''),
(2, 3, 1, 1, 'La_Cocaine ® | Fy_Snow Only', '0', '2', 'fy_snow', '27016', 300, 20, 'srv_3_989', 'vGgmd7TH', '2018-02-26', 'Aktivan', 1, '1', ''),
(3, 1, 1, 1, 'Invasion [Grobari Vs Delije]™', '1500', '1', 'de_dust2', '27017', 300, 32, 'srv_1_106', 'yx7TgzJ9', '2018-02-26', 'Aktivan', 1, '1', ''),
(4, 4, 1, 1, 'Balkan Project', '0', '7', 'Los Santos', '7788', 300, 100, 'srv_4_93', 'LDP4KYkn', '2018-02-28', 'Aktivan', 1, '1', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tiketi`
--

CREATE TABLE IF NOT EXISTS `tiketi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `datum` text CHARACTER SET utf8 NOT NULL,
  `naslov` text CHARACTER SET utf8 NOT NULL,
  `zatvoren` int(11) NOT NULL DEFAULT '0',
  `cekanje` varchar(1) NOT NULL,
  `vrsta` varchar(50) NOT NULL,
  `prioritet` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tiketi`
--

INSERT INTO `tiketi` (`id`, `server_id`, `user_id`, `status`, `datum`, `naslov`, `zatvoren`, `cekanje`, `vrsta`, `prioritet`) VALUES
(1, 4, 4, 'Neodgovoren', '1517254310', 'Pomoc', 0, '', 'Podrska', 'Hitno');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tiketi_odgovori`
--

CREATE TABLE IF NOT EXISTS `tiketi_odgovori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiket_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `odgovor` text CHARACTER SET utf8 NOT NULL,
  `vrijeme_odgovora` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tiketi_odgovori`
--

INSERT INTO `tiketi_odgovori` (`id`, `tiket_id`, `user_id`, `admin_id`, `odgovor`, `vrijeme_odgovora`) VALUES
(1, 1, 4, NULL, 'Kada god pokusam ubaciti neki fajl u FTP ili da ga obrisem izbaci mi ovu gresku\r\n\r\nhttps://s13.postimg.org/pd6lz0flj/Screenshot_8.png', '1517254310');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
