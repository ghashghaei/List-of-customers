-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 10, 2021 at 10:20 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registered_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email_address`, `registered_date`, `created_at`, `updated_at`) VALUES
(1, 'Victoria', 'Yost', 'boyle.cameron@gmail.com', '2014-09-20', NULL, NULL),
(2, 'Noah', 'Lubowitz', 'jacky.romaguera@schmitt.info', '2004-11-11', NULL, NULL),
(3, 'Alvera', 'Bernier', 'jamie.cole@spencer.biz', '1984-02-27', NULL, NULL),
(4, 'Flavie', 'Kozey', 'ludwig86@hackett.info', '2016-06-26', NULL, NULL),
(5, 'Marguerite', 'Wolf', 'windler.amara@hotmail.com', '1973-12-06', NULL, NULL),
(6, 'Meda', 'Pollich', 'melvina81@gmail.com', '2013-04-26', NULL, NULL),
(7, 'Alford', 'Cremin', 'bobbie22@beer.com', '1981-11-23', NULL, NULL),
(8, 'Ellsworth', 'Stracke', 'mmetz@farrell.com', '1970-10-01', NULL, NULL),
(9, 'Vivian', 'Zboncak', 'deion81@gmail.com', '2018-09-20', NULL, NULL),
(10, 'Phoebe', 'Becker', 'junius.murphy@gmail.com', '2011-03-18', NULL, NULL),
(11, 'Deondre', 'Sipes', 'tiana.terry@hotmail.com', '1991-06-12', NULL, NULL),
(12, 'Sean', 'Jerde', 'lulu.larson@kreiger.com', '1985-02-20', NULL, NULL),
(13, 'Narciso', 'Thompson', 'uledner@toy.org', '1987-09-18', NULL, NULL),
(14, 'Twila', 'Heidenreich', 'quitzon.linnea@hotmail.com', '2011-02-08', NULL, NULL),
(15, 'Jordi', 'Auer', 'marilyne.schinner@gmail.com', '2008-05-13', NULL, NULL),
(16, 'Kenyatta', 'McKenzie', 'claud37@gmail.com', '2008-11-02', NULL, NULL),
(17, 'Francisco', 'Tremblay', 'jayne90@gmail.com', '2004-11-29', NULL, NULL),
(18, 'Pink', 'Volkman', 'friesen.briana@yahoo.com', '1972-05-06', NULL, NULL),
(19, 'Marielle', 'McKenzie', 'ariane84@hotmail.com', '2008-03-16', NULL, NULL),
(20, 'Dillon', 'Ferry', 'kulas.easter@gmail.com', '1970-08-22', NULL, NULL),
(21, 'Raven', 'Hayes', 'robert89@hotmail.com', '1989-11-13', NULL, NULL),
(22, 'Chaz', 'Kreiger', 'erick92@streich.com', '1978-12-09', NULL, NULL),
(23, 'Manuel', 'Lowe', 'mike95@runolfsdottir.com', '1994-09-18', NULL, NULL),
(24, 'Loyal', 'McKenzie', 'dstroman@yahoo.com', '1997-04-15', NULL, NULL),
(25, 'Griffin', 'Walker', 'phirthe@cronin.com', '2004-03-05', NULL, NULL),
(26, 'Dolly', 'Roberts', 'bstiedemann@pagac.com', '1972-02-19', NULL, NULL),
(27, 'Enoch', 'Lind', 'joany55@hotmail.com', '1980-07-24', NULL, NULL),
(28, 'Dorothea', 'Hagenes', 'odamore@hotmail.com', '1991-02-15', NULL, NULL),
(29, 'Meggie', 'Schmitt', 'sigrid.purdy@hotmail.com', '1977-10-10', NULL, NULL),
(30, 'Darrion', 'Koelpin', 'payton.jacobs@hermann.net', '2012-10-23', NULL, NULL),
(31, 'Felicita', 'Gerhold', 'smcdermott@yahoo.com', '2004-11-29', NULL, NULL),
(32, 'Lilly', 'Leffler', 'maida.kling@hermann.com', '2015-07-08', NULL, NULL),
(33, 'Aiden', 'Wolf', 'frederick.hansen@hotmail.com', '1997-07-28', NULL, NULL),
(34, 'Mustafa', 'Rogahn', 'runolfsson.raymond@kris.com', '1996-02-24', NULL, NULL),
(35, 'Alberto', 'Gorczany', 'conn.ashtyn@morar.com', '2017-11-09', NULL, NULL),
(36, 'Alexie', 'Pouros', 'homenick.jordane@christiansen.com', '2007-04-21', NULL, NULL),
(37, 'Tara', 'White', 'jayme.auer@hotmail.com', '2021-03-02', NULL, NULL),
(38, 'Nyasia', 'Stracke', 'harber.antonina@gmail.com', '1994-10-24', NULL, NULL),
(39, 'Burley', 'Satterfield', 'bartoletti.jabari@von.com', '1970-03-23', NULL, NULL),
(40, 'Reinhold', 'Mann', 'ayla.borer@hotmail.com', '1998-06-03', NULL, NULL),
(41, 'Lilla', 'Kub', 'crona.trycia@zboncak.org', '2018-10-05', NULL, NULL),
(42, 'Leonel', 'Hudson', 'jacques99@walter.net', '1983-07-15', NULL, NULL),
(43, 'Selina', 'Brakus', 'yadira42@yahoo.com', '2011-05-14', NULL, NULL),
(44, 'D\'angelo', 'Gutkowski', 'katrina.cremin@hickle.biz', '1998-02-06', NULL, NULL),
(45, 'Camylle', 'Spencer', 'powlowski.jayne@yahoo.com', '2015-04-22', NULL, NULL),
(46, 'Lilliana', 'Bechtelar', 'oryan@corwin.biz', '2012-04-27', NULL, NULL),
(47, 'Jany', 'Kuhlman', 'jed.hettinger@yahoo.com', '2009-06-23', NULL, NULL),
(48, 'Devonte', 'Padberg', 'amuller@gmail.com', '2005-05-05', NULL, NULL),
(49, 'Alessia', 'Leffler', 'robb89@yahoo.com', '1989-11-28', NULL, NULL),
(50, 'Chauncey', 'Krajcik', 'ceasar.emard@yahoo.com', '1986-04-04', NULL, NULL),
(51, 'Lilliana', 'O\'Conner', 'hdouglas@gmail.com', '2021-02-15', NULL, NULL),
(52, 'Mariana', 'Grady', 'dedrick.schuster@yahoo.com', '1979-08-25', NULL, NULL),
(53, 'Isadore', 'VonRueden', 'solon01@yahoo.com', '1977-10-03', NULL, NULL),
(54, 'Hector', 'Williamson', 'uaufderhar@hotmail.com', '2011-04-16', NULL, NULL),
(55, 'Gabriel', 'Kozey', 'stracke.madonna@berge.info', '1977-11-25', NULL, NULL),
(56, 'Watson', 'Flatley', 'lavonne05@yahoo.com', '1970-08-20', NULL, NULL),
(57, 'Jeff', 'McLaughlin', 'prosacco.cynthia@walker.net', '2008-06-29', NULL, NULL),
(58, 'Edmond', 'Ruecker', 'abigail83@gmail.com', '2004-10-08', NULL, NULL),
(59, 'Buck', 'Cartwright', 'elinore32@marvin.info', '2012-04-20', NULL, NULL),
(60, 'Sunny', 'Roberts', 'abbott.kyleigh@gmail.com', '2006-09-01', NULL, NULL),
(61, 'Abigail', 'Medhurst', 'janis63@sanford.com', '1970-01-26', NULL, NULL),
(62, 'Aileen', 'Veum', 'kay19@hotmail.com', '1991-12-26', NULL, NULL),
(63, 'Griffin', 'Waelchi', 'oceane.okeefe@yahoo.com', '2000-02-06', NULL, NULL),
(64, 'Jack', 'Bashirian', 'kbarton@yahoo.com', '2021-01-23', NULL, NULL),
(65, 'Shany', 'Steuber', 'joshua.kertzmann@gmail.com', '2005-03-14', NULL, NULL),
(66, 'Camden', 'Gutmann', 'estell23@hotmail.com', '1970-07-14', NULL, NULL),
(67, 'Rafael', 'Marquardt', 'ally20@yahoo.com', '2004-01-16', NULL, NULL),
(68, 'Genoveva', 'Grimes', 'fmurphy@hotmail.com', '1999-06-26', NULL, NULL),
(69, 'Kristin', 'Nader', 'jonathan68@yahoo.com', '1998-02-09', NULL, NULL),
(70, 'Zander', 'Carter', 'timmothy.streich@hotmail.com', '2014-09-15', NULL, NULL),
(71, 'Ellsworth', 'Bradtke', 'ypadberg@yahoo.com', '1971-06-30', NULL, NULL),
(72, 'Marjolaine', 'Schaden', 'stephany18@effertz.com', '2016-02-28', NULL, NULL),
(73, 'Jackie', 'Parker', 'sbednar@eichmann.com', '1999-11-06', NULL, NULL),
(74, 'Lysanne', 'Kunze', 'irwin.hettinger@gmail.com', '1977-03-27', NULL, NULL),
(75, 'Chet', 'Wolf', 'zlebsack@rosenbaum.info', '2009-03-07', NULL, NULL),
(76, 'Mathilde', 'Erdman', 'damore.cierra@yahoo.com', '2016-07-23', NULL, NULL),
(77, 'Allan', 'Carroll', 'judge04@hotmail.com', '2004-03-24', NULL, NULL),
(78, 'Major', 'Sipes', 'fparker@wilderman.com', '2021-04-21', NULL, NULL),
(79, 'Alek', 'Yundt', 'nienow.celestino@balistreri.com', '2014-08-25', NULL, NULL),
(80, 'Fern', 'Batz', 'cielo28@langworth.com', '2006-08-04', NULL, NULL),
(81, 'Demetris', 'Mayer', 'astrid37@klocko.com', '1979-05-17', NULL, NULL),
(82, 'Alf', 'Lockman', 'nicolas.gretchen@spinka.biz', '1973-02-06', NULL, NULL),
(83, 'Janelle', 'Huels', 'mina.dare@satterfield.com', '1988-04-01', NULL, NULL),
(84, 'Layla', 'Nienow', 'tomasa17@legros.com', '1999-12-24', NULL, NULL),
(85, 'Jeramie', 'O\'Connell', 'bode.vidal@lehner.com', '1999-02-12', NULL, NULL),
(86, 'Ansel', 'Bailey', 'regan.pfannerstill@yahoo.com', '1986-11-20', NULL, NULL),
(87, 'Cooper', 'Hartmann', 'khomenick@collins.com', '1989-11-09', NULL, NULL),
(88, 'Adrian', 'Tromp', 'crystal.zboncak@hyatt.net', '2002-06-12', NULL, NULL),
(89, 'Anita', 'Kshlerin', 'lgutkowski@sawayn.biz', '1982-10-02', NULL, NULL),
(90, 'Lexi', 'Harber', 'richmond92@rosenbaum.com', '1978-10-10', NULL, NULL),
(91, 'Ruthe', 'Ankunding', 'jarred.herzog@jacobs.info', '1992-08-20', NULL, NULL),
(92, 'Marisol', 'Gerlach', 'eschmeler@hotmail.com', '2017-05-25', NULL, NULL),
(93, 'Laury', 'Schulist', 'mitchel51@hotmail.com', '1991-09-18', NULL, NULL),
(94, 'Frederik', 'Dietrich', 'kohler.amalia@hotmail.com', '2016-11-21', NULL, NULL),
(95, 'Enoch', 'Robel', 'terrance40@mann.com', '1986-03-07', NULL, NULL),
(96, 'Sheldon', 'Thompson', 'ashley.hahn@gmail.com', '2007-08-31', NULL, NULL),
(97, 'Margaretta', 'Pfeffer', 'hackett.janick@schuster.com', '1998-05-10', NULL, NULL),
(98, 'Rashad', 'Marquardt', 'tblick@hotmail.com', '2009-05-17', NULL, NULL),
(99, 'Emerald', 'Balistreri', 'trantow.jonas@ledner.net', '1975-05-03', NULL, NULL),
(100, 'Katrina', 'Abshire', 'frank54@aufderhar.net', '2008-05-20', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
