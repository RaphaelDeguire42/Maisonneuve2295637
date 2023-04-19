-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 01:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_link`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `name`, `adress`, `email`, `phone`, `date_of_birth`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Eriberto Swift', '580 Murphy Extension Apt. 988\nBergstromfurt, ME 73371', 'palma19@example.org', '239-100-3188', '2001-01-23', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(2, 'Tianna Goldner', '51226 Brekke Estates Apt. 938\nPort Raphaelle, AR 50562-2343', 'awiegand@example.net', '645-940-2979', '2004-08-17', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(3, 'Ulises Thiel', '970 Clotilde Court Apt. 376\nPort Eliseberg, KY 10100', 'ufunk@example.com', '720-896-9079', '1964-01-24', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(4, 'Ms. Elisa Crooks II', '39173 Frami Garden Suite 793\nLake Jameson, ND 52928', 'istokes@example.net', '567-898-9361', '1970-04-25', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(5, 'Misty Yost', '6578 Bergnaum Lane\nWest Jackchester, CT 61674', 'waters.vada@example.org', '550-955-7769', '1961-12-27', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(6, 'Kallie McDermott', '718 Rolando Walks\nBashirianbury, MN 26052-3163', 'elegros@example.com', '727-621-8351', '1971-02-22', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(7, 'Christop Rutherford', '1194 Casper Station\nLake Nyasiamouth, VT 06083-9052', 'hank.lind@example.org', '988-378-1731', '1967-02-16', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(8, 'Delores Paucek', '759 Kuhn Tunnel Suite 930\nNew Amyahaven, MT 39687-6298', 'andre13@example.com', '706-256-2913', '2000-10-31', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(9, 'Rocio O\'Kon', '34421 Erdman Pike\nGordonland, LA 82476-8269', 'gerhard33@example.net', '604-699-6882', '1972-02-19', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(10, 'Alexandrine Terry', '82141 Maybelle Circles\nEphraimview, IL 56561', 'ankunding.rasheed@example.org', '001-466-4492', '1966-04-11', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(11, 'Estel Beier', '959 McDermott Wall\nWest Aureliaport, WA 83267-3599', 'cjakubowski@example.net', '554-562-4144', '1966-09-04', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(12, 'Nathanial Buckridge', '30768 Nolan Branch\nStarkton, WV 78455', 'oconnell.josue@example.com', '653-589-9450', '1977-01-24', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(13, 'Henry Volkman', '849 Rosanna Vista\nVandervortview, AZ 85268-4300', 'kiehn.gino@example.net', '593-433-6389', '1979-12-12', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(14, 'Dr. Kole Wilkinson I', '8792 Streich Course Apt. 974\nDeclanburgh, NC 04832-5004', 'bhammes@example.com', '351-776-3439', '1991-11-16', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(15, 'Dayton Wisozk', '487 Herzog Ports Suite 948\nPort Janetport, AR 23541-4964', 'pink.cormier@example.net', '707-463-5810', '2000-10-16', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(16, 'Mrs. Leslie Hagenes', '767 Monroe Flats\nPort Mikaylaton, MN 31054', 'okuneva.torrance@example.org', '435-462-0699', '1988-07-09', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(17, 'Prof. Austyn Muller', '59700 Ezra Cliff Suite 441\nNew Edwina, UT 18793', 'dawson.lubowitz@example.net', '918-632-0006', '1999-02-22', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(18, 'Carter Macejkovic', '744 Tillman Locks Apt. 504\nMurphyview, TX 52078-0415', 'soconner@example.net', '735-909-5549', '1977-01-25', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(19, 'Daniela Trantow II', '891 Simonis Shoal\nLake Noemy, IN 50270-9794', 'pmayert@example.org', '229-801-2375', '1989-09-05', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(20, 'Mr. Harry Huel', '800 Jessie Square\nLake Tyree, ID 54545-7705', 'torp.ruben@example.org', '699-958-5812', '1999-10-21', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(21, 'Ettie Sporer', '86610 Stamm Drives\nNorth Anne, GA 43383', 'reichert.alejandra@example.org', '841-587-4008', '2000-03-02', 11, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(22, 'Arch Green V', '286 Hudson Shoals\nWest Dallin, DE 33606-0921', 'braulio.yost@example.com', '502-236-6874', '1994-05-11', 8, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(23, 'Virgie Jaskolski', '60256 Mueller Mission\nOrnberg, WY 83197', 'bette.mccullough@example.net', '550-322-3264', '2000-01-30', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(24, 'Luther Corwin', '50526 Kayla Shoals Apt. 907\nWest Tyreseburgh, MT 77445', 'conn.kobe@example.net', '948-350-0500', '1994-07-20', 6, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(25, 'Jeramy Koepp', '7008 Jaylon Fords Apt. 043\nCassandreshire, WY 75935', 'owen52@example.net', '223-083-8978', '1988-10-18', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(26, 'Esmeralda Cormier', '96945 Cathy Inlet\nNorth Harmonhaven, NM 87142-2710', 'omer71@example.net', '490-818-3550', '1966-07-14', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(27, 'Sydni Lemke V', '185 Guadalupe Glens Suite 797\nLake Ladariusbury, NE 86397-8274', 'qdicki@example.org', '802-825-5985', '2004-04-21', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(28, 'Mr. Kadin Jacobson PhD', '2402 Schmeler Haven\nNorth Catalina, NY 33896', 'esperanza66@example.net', '708-386-4715', '1971-08-23', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(29, 'Russ Runolfsson', '902 Trycia Crossing Apt. 657\nTroybury, KS 08652-1583', 'alayna.gutmann@example.com', '966-144-1389', '1962-08-09', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(30, 'Veronica Hyatt Jr.', '8432 Kuhn Green\nReggieside, VT 08471', 'nnolan@example.net', '225-838-9964', '1994-05-28', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(31, 'Raymond McClure III', '110 Shea Views\nPort Hattie, NJ 56681', 'elisa.russel@example.org', '920-149-5737', '1976-04-08', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(32, 'Prof. Justina Mitchell', '653 Gislason Neck\nEast Rolando, KY 41580', 'wshanahan@example.com', '443-168-8086', '1963-09-04', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(33, 'Rebeca Dickens', '89969 Fay Stravenue Suite 021\nMayrahaven, MA 24978', 'robbie24@example.com', '216-939-8310', '1990-03-19', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(34, 'Angelo Bergnaum', '3819 Blick Skyway\nHahnview, MA 71454', 'fbaumbach@example.net', '676-922-9874', '1961-05-07', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(35, 'Madyson Conroy', '324 Streich Squares\nLake Asa, AK 85952', 'nathen84@example.net', '111-725-7283', '1966-11-14', 11, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(36, 'Christ Stamm III', '53848 Ed Lodge Suite 759\nNoeliabury, NH 58433-8685', 'ohackett@example.net', '035-394-4689', '1982-06-09', 11, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(37, 'Antonio Green', '2885 Elda Fords Apt. 412\nEast Tess, VT 91756-9525', 'hmayert@example.com', '998-355-3349', '1998-03-16', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(38, 'Mr. Gerald Lind V', '59923 Dach Meadows Suite 364\nBeerhaven, MS 56449', 'mariana32@example.com', '865-216-6608', '1984-09-27', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(39, 'Ludie Ziemann', '5474 Carli Walk Apt. 924\nFeeneyberg, DE 60994-4497', 'hayes.cameron@example.org', '538-784-9294', '1988-02-19', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(40, 'Alena Corwin', '501 Keebler Crest Suite 745\nPort Kaylabury, HI 40165', 'mcole@example.org', '834-474-3729', '1990-12-01', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(41, 'Brittany Dickens', '495 Dominic Lights Suite 541\nNorth Alexanefort, WA 82088-6796', 'grant.ethelyn@example.net', '112-366-0155', '1985-08-25', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(42, 'Mr. Alfred Vandervort', '7939 Hammes Extensions\nLake Lawrenceton, HI 18332-0605', 'heidenreich.michelle@example.org', '279-302-7645', '1971-12-01', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(43, 'Jacinthe Baumbach', '2161 Watsica Motorway Apt. 421\nZemlakport, ME 82256-9417', 'lavina18@example.net', '653-395-7783', '1987-12-27', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(44, 'Hilton Grant PhD', '9228 Karelle Viaduct Suite 934\nHaleyview, WY 79398', 'ezra.daniel@example.com', '765-651-1630', '1963-04-06', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(45, 'Myrtice Collier II', '9348 Charlene Parks\nWest Blancaville, SC 21697', 'neva58@example.com', '653-093-6285', '1965-08-03', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(46, 'Aisha Hackett', '5497 Myrl Greens Apt. 760\nNorth Alysonville, IL 68667-9707', 'lferry@example.com', '435-623-1319', '1988-06-20', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(47, 'Eudora Zieme', '5755 Bogisich Glen\nOrloberg, AZ 69223', 'satterfield.hoyt@example.net', '266-570-2870', '1990-10-16', 6, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(48, 'Max Rath', '277 Odessa Parkway\nKrajciktown, KY 22775', 'haley.nils@example.com', '609-625-3626', '1980-02-04', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(49, 'Marley Waters', '95418 Heller Via\nGloverberg, MO 41822-0957', 'daugherty.alice@example.net', '881-364-9761', '1984-12-29', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(50, 'Thea Dibbert', '59277 Auer Pine\nRahsaantown, NM 54766-0740', 'terry.mariam@example.net', '034-165-3766', '1995-08-20', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(51, 'Trinity Weimann', '133 Hoeger Wall Suite 040\nHollieberg, MS 23602-0587', 'hane.morton@example.org', '113-163-8774', '1964-06-29', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(52, 'Margie Walter', '54385 Johnston Mountain\nAliyahstad, SD 13391-8586', 'gavin98@example.com', '238-389-9843', '1985-03-02', 11, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(53, 'Lysanne Welch', '12587 Ortiz Junctions Apt. 233\nPort Lorenzmouth, SD 10526-8275', 'emmie81@example.com', '942-655-1182', '1981-09-22', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(54, 'Saul Dare DDS', '4329 Okuneva Hill Suite 761\nLake Kayfurt, MA 31925', 'wwiza@example.com', '699-570-7687', '1998-10-31', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(55, 'Serenity Swaniawski', '49573 Blaze Gardens\nNorth Stuart, FL 81567', 'eddie.lynch@example.org', '512-131-2659', '1963-05-30', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(56, 'Leila Denesik DVM', '718 Crooks Mountains\nLake Nicolette, NH 32547', 'dickinson.stefan@example.org', '626-513-5753', '1987-09-19', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(57, 'Edyth Lakin', '62188 Delores Groves\nMerlland, AL 39595', 'louvenia.west@example.net', '837-981-8821', '1962-06-21', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(58, 'Prof. Joshua Nitzsche DDS', '1980 Karolann Ville Suite 090\nWest Estefania, AR 49501', 'finn87@example.net', '284-301-4720', '1990-05-03', 6, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(59, 'Mr. Stephan Kuhic', '5665 Reichert Hill Apt. 222\nShadberg, WV 08470', 'okilback@example.org', '619-411-1870', '1980-12-13', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(60, 'Sherwood Pacocha V', '12445 Mertz Mountains\nNorth Santachester, CA 88302-0297', 'clara.towne@example.org', '500-851-4471', '1991-07-25', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(61, 'Prof. Chaim Zboncak', '889 Zakary Course\nConradmouth, DC 94887-9987', 'albertha.ruecker@example.net', '139-730-2543', '1989-12-03', 11, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(62, 'Miss Vella Bechtelar', '428 Howard Rue\nPort Dolly, HI 94487-0416', 'hsanford@example.net', '185-469-8742', '1980-09-27', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(63, 'Mrs. Vivien Homenick I', '5553 Willis Vista\nBlazeborough, LA 90720-8797', 'alphonso.miller@example.com', '554-751-7819', '2001-07-29', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(64, 'Prof. Alexandria Fisher DDS', '55147 Myrtice Street\nWest Abe, NV 60377-0671', 'araceli85@example.org', '255-576-1432', '1978-05-29', 9, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(65, 'Aileen Turner', '1923 Ernestina Ranch\nMaryambury, FL 12086', 'maddison85@example.com', '897-433-1487', '1988-02-02', 9, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(66, 'Ted Feest', '1903 Runolfsson Prairie Suite 971\nNitzschemouth, CT 31635', 'brenna79@example.org', '107-967-6212', '1996-04-14', 9, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(67, 'Prof. Olen Weimann V', '23956 Heathcote Crescent\nEast Barry, WA 38396-7406', 'tschimmel@example.net', '673-629-1599', '2002-04-12', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(68, 'Prof. Adonis Adams', '880 Oleta Drive Apt. 648\nKaydenview, VA 98543-2881', 'adella33@example.org', '896-729-9914', '1968-08-14', 8, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(69, 'Mrs. Leonor Wiegand DVM', '8330 D\'Amore Mission Apt. 836\nSouth Dalton, HI 30278', 'ijacobi@example.com', '784-145-1931', '2001-03-23', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(70, 'Aubree Simonis', '7725 Dora Parks\nNew Kaylie, UT 01310-5302', 'rhyatt@example.com', '326-530-6387', '2001-04-24', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(71, 'Catherine Crooks', '650 Heller Burg\nNorth Kraigburgh, IA 40893', 'medhurst.newell@example.net', '368-232-2742', '1992-05-15', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(72, 'Dr. Ari Schneider', '687 Horace Trace\nHerzogtown, AK 64119-7329', 'elva.kohler@example.net', '868-226-2141', '1974-07-16', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(73, 'Damaris Zieme', '64761 Daija Motorway Apt. 737\nNew Cory, MO 29075', 'rubye78@example.com', '204-228-7036', '1987-07-31', 14, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(74, 'Dante Batz', '83004 Tony Neck\nNorth Deion, RI 91141-1973', 'dino17@example.net', '163-511-9512', '1996-07-19', 6, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(75, 'Benjamin Walter I', '55612 Kiehn Estate Apt. 637\nTressiechester, MA 09327-6022', 'schoen.rachael@example.org', '488-832-9262', '2000-03-01', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(76, 'Abdul Metz', '43153 Howell Ferry Suite 161\nJaceberg, AR 76247', 'bennie70@example.com', '732-061-1526', '1989-09-21', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(77, 'Issac Ankunding', '935 Schinner Freeway Apt. 240\nPadbergchester, WV 46101-1749', 'shields.nelson@example.net', '276-236-8981', '2003-01-07', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(78, 'Kiley Howe', '97893 Jade Inlet Apt. 632\nAlaynaton, WV 19935-1699', 'gia.west@example.com', '302-820-2865', '1987-04-10', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(79, 'Dr. Jameson Leannon Sr.', '2009 Schumm Orchard\nEast Lou, MA 48387-8229', 'jonathan61@example.org', '740-881-7701', '1980-08-06', 7, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(80, 'Prof. Donald Mante Sr.', '72605 Bergnaum Viaduct Suite 817\nPollichside, KY 63805', 'zfriesen@example.com', '348-734-2082', '1974-04-18', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(81, 'Bella Torp', '36856 Hagenes Corner Apt. 494\nKeyonborough, OR 43957', 'diamond.roberts@example.com', '657-228-5393', '1963-08-06', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(82, 'Ross Turcotte', '46410 Noel Haven Suite 833\nProsaccoburgh, WY 92291', 'powlowski.abigale@example.net', '115-905-6818', '1958-12-09', 12, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(83, 'Jane Gleason', '113 Collins Wall\nSouth Jacksontown, CT 56069-6881', 'julius34@example.com', '231-143-3478', '1981-01-06', 6, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(84, 'Luisa Ziemann Sr.', '1522 Dawn Lodge Suite 402\nJulioville, WV 61207', 'cynthia92@example.org', '387-063-4309', '2003-05-27', 1, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(85, 'Eliseo Hansen', '328 Harber Common\nCroninborough, IL 12160-9769', 'vgoyette@example.org', '074-699-6865', '1982-04-08', 3, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(86, 'Diego Boehm DVM', '34679 Cecelia Fork\nJessehaven, OR 44778', 'xkilback@example.com', '958-856-8483', '1984-07-08', 4, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(87, 'Delmer Klocko IV', '28842 Antonette Lane Suite 580\nWebermouth, NH 72210', 'murphy.wilfredo@example.com', '160-691-4975', '1986-10-21', 9, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(88, 'Merl Satterfield', '7913 Cornelius Bridge Suite 636\nLake Cassiebury, SD 11851', 'dee.tremblay@example.org', '225-331-8938', '1959-04-02', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(89, 'Earline Hintz', '1283 Filomena Fords\nPort Irmaberg, AK 29460', 'gkoss@example.net', '191-163-8895', '1965-02-26', 13, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(90, 'Dean Cassin', '559 Krajcik Drive Apt. 478\nTreutelbury, WI 90521-4376', 'xmayer@example.org', '649-516-0364', '1969-03-03', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(91, 'Mariane Stroman V', '78591 Murray Via\nTiannabury, MO 77435-3346', 'murray.wisoky@example.com', '066-378-9567', '1966-04-22', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(92, 'Dr. Frida Hamill', '267 Perry Street Suite 227\nWest Lazaroborough, NV 61269', 'alexandro.huels@example.com', '579-633-8089', '1992-10-13', 15, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(93, 'Frederick Bode', '917 Henriette Stravenue Suite 292\nEvaberg, MN 39547-7508', 'abrekke@example.org', '181-337-0058', '1958-09-18', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(94, 'Dr. Juliet Jakubowski DVM', '5123 Kira Avenue Apt. 625\nValentineshire, NC 17733', 'wwhite@example.com', '918-280-7324', '1975-04-21', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(95, 'Domenica Cremin', '9250 Mann Field\nWhitestad, AZ 00745-8382', 'gayle88@example.net', '932-028-6940', '1974-11-10', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(96, 'Prof. Treva Kiehn Sr.', '4832 Fritsch Squares\nOndrickamouth, IN 94873', 'phyllis53@example.com', '942-356-6817', '1992-12-31', 5, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(97, 'Erich Mayer DDS', '955 Windler Radial\nRosaleeville, NE 07512-3525', 'chammes@example.org', '373-630-3688', '1969-02-19', 8, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(98, 'Alfredo Boehm', '6322 Asha Springs\nEast Vincenza, HI 90912', 'gstamm@example.net', '805-776-1550', '1988-10-16', 10, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(99, 'Dr. Jack Rohan', '643 Reva Way\nLake Jacksonbury, MA 19181-5063', 'conn.gay@example.net', '466-709-6791', '1973-08-06', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37'),
(100, 'Marcel Gislason', '398 Hermann Route Suite 446\nWest Daija, NM 05821-1685', 'yasmine.jenkins@example.com', '604-844-2488', '2002-05-31', 2, '2023-04-16 21:18:37', '2023-04-16 21:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fr',
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `content`, `language`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 'Can somebody help me?\n\n', 'Consectetur natus in sunt exercitationem et. Fuga ea aperiam ut. Qui earum facere dolorum omnis illo. Dolor voluptatem architecto molestiae et ipsum ut temporibus repellendus.', 'en', 1, '2023-04-17 01:07:03', '2023-04-17 01:07:03'),
(2, 'Please stop writting me letters!\n\n', 'Perspiciatis quos vero ipsam tempore. Rem est animi tenetur ut neque quis dolorem. Sunt consequatur consequuntur voluptatum ipsa omnis vel. Porro saepe ipsum aut.', 'en', 2, '2023-04-17 01:07:03', '2023-04-17 01:07:03'),
(4, 'La vérité fait mal', 'Aut nulla voluptatem sapiente quas. Et eos hic qui voluptatum eum. Ad commodi porro sunt nihil tempore. Eligendi reiciendis sunt ducimus est ratione repellendus.', 'fr', 3, '2023-04-17 01:07:03', '2023-04-17 01:07:03'),
(6, 'What is the name of the girl in The Avengers?', 'Facilis nam voluptas nam sit molestias natus. Ipsum veniam aliquam nobis eaque nemo rem doloribus. Molestiae sit ratione illo quaerat dicta ducimus.', 'en', 4, '2023-04-17 01:37:06', '2023-04-17 01:37:06'),
(7, 'Free lunch if you find me at the cafeteria!', 'Vel sint voluptatibus odit ea debitis excepturi ut. Qui sint quasi optio et similique voluptatibus. Facere quia officiis assumenda deleniti omnis qui amet. Est voluptates aut ex est itaque accusamus.', 'en', 7, '2023-04-17 01:37:06', '2023-04-17 01:37:06'),
(8, 'Miss', 'Est odio aspernatur enim molestias. Dignissimos cumque cum vero eveniet aut odio. Neque autem voluptatem et et distinctio. Sunt maiores ut culpa.', 'fr', 9, '2023-04-17 01:37:06', '2023-04-17 01:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2000_03_19_193400_create_villes_table', 1),
(2, '2003_03_19_193411_create_etudiants_table', 2),
(3, '2014_10_12_000000_create_users_table', 3),
(5, '2014_10_12_100000_create_password_resets_table', 4),
(6, '2019_08_19_000000_create_failed_jobs_table', 4),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(11, '2023_04_16_201901_forum', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 'Eriberto Swift', 'palma19@example.org', '$2y$10$jwPAObxp7NxRJiJTKChC3Osq246w5qnUpkOKdCqw7/Q0QxqiXxgG.', 1, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(2, 'Tianna Goldner', 'awiegand@example.net', '$2y$10$DM0vUdSApfb.UflLZYHDh.gQ.dabqzvkMk6A5jX0vJ2yVYV0BMzey', 2, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(3, 'Ulises Thiel', 'ufunk@example.com', '$2y$10$vVI761rwg.87W0TMCU90/.Vyg0bscnNEVRLHU1yYpuKveTfaLHJDi', 3, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(4, 'Ms. Elisa Crooks II', 'istokes@example.net', '$2y$10$MVWVW.ozalNvHS/.idReG.WjIeRiohqhXQ10TBiUCZpjSxIySeWaK', 4, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(5, 'Misty Yost', 'waters.vada@example.org', '$2y$10$rT21g/POC5mD2TZtkMwTFOBdzQXrKGuXAix7wxtcFpUX2FlABe2rm', 5, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(6, 'Kallie McDermott', 'elegros@example.com', '$2y$10$lq/ZvqhirjYWblDKDfKjiuioYAydwcnxut0qJe.xdKKnGrDXHrTOi', 6, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(7, 'Christop Rutherford', 'hank.lind@example.org', '$2y$10$m.9LpMY604PhWmzx2GmKL.SS1Y4qi8aYJGKEN6kMnrfPWipyX2un.', 7, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(8, 'Delores Paucek', 'andre13@example.com', '$2y$10$GgZScbNBrk.twulCW5hjaOizsrlZEI4lxbXHNyKEPC92RjY/agL3y', 8, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(9, 'Rocio O\'Kon', 'gerhard33@example.net', '$2y$10$fIjNxiyAOSTLmO5tuhjmZevzmWkOeMWmbfsEiSHLHR0VBogdY99Mi', 9, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(10, 'Alexandrine Terry', 'ankunding.rasheed@example.org', '$2y$10$zjU9uH0kUKpH882yGdePU.v1MVUYpeiRdoUlIRmLDK0p0GP7RcuEy', 10, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(11, 'Estel Beier', 'cjakubowski@example.net', '$2y$10$OWgQ1M3CDNaNbfMuLMMgvuanrpiYV1R0jYh6wkxrDqkQLqhKV5dly', 11, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(12, 'Nathanial Buckridge', 'oconnell.josue@example.com', '$2y$10$JNZ.YNczfdKQATZgXzYBCOXTtwDb2zHgJwmaGanC3EtlcmMv63.Da', 12, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(13, 'Henry Volkman', 'kiehn.gino@example.net', '$2y$10$u06Q4uDwJdNKeGyjnNuNke3TJBCW/yoWxr//C0uPsGEEtGQByatWS', 13, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(14, 'Dr. Kole Wilkinson I', 'bhammes@example.com', '$2y$10$P1M.joDZA0H5p/w.hNndB.fVe0yjRBOZaz0WcnlSWrTmL3m3Ivgpu', 14, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(15, 'Dayton Wisozk', 'pink.cormier@example.net', '$2y$10$AbTuV.XRdBSMhFtIIg5dbe4vA6WbOaJGSnz6SHpmMBf3T6Blmv0SO', 15, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(16, 'Mrs. Leslie Hagenes', 'okuneva.torrance@example.org', '$2y$10$D9Pzymk1rNWXokB8NY7g3eserWchLyjl9Sr27wqOJcs2brJkKaGy2', 16, '2023-04-16 21:19:02', '2023-04-16 21:19:02'),
(17, 'Prof. Austyn Muller', 'dawson.lubowitz@example.net', '$2y$10$YuHSe1IzqCPiz8uPo0vbw.Bft7RJ1NAy63SckqJQi8mW6EcBKW8sa', 17, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(18, 'Carter Macejkovic', 'soconner@example.net', '$2y$10$ywjfoRu1YJ6NUzwRZqEW/OJ/9t9.7dL1MeBcqDxu9t/GJrT6GVDLi', 18, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(19, 'Daniela Trantow II', 'pmayert@example.org', '$2y$10$l9moXvjAh87.tfnun6dae.vrW37blWnP0GB0Bs.WfklcYkbaGrQH.', 19, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(20, 'Mr. Harry Huel', 'torp.ruben@example.org', '$2y$10$aLUsKY6XGpIhJH/lD1HHnOu6AbN8ufX6w2l2K17OGnnjCOit61ASC', 20, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(21, 'Ettie Sporer', 'reichert.alejandra@example.org', '$2y$10$PJHCAfO8D8dmr8HKPGTMIuYOFCgaX.JuQdHhgPEfO7rXgTfOjnNMa', 21, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(22, 'Arch Green V', 'braulio.yost@example.com', '$2y$10$kSqLfDj1Cj6nS7YLkPER5OugT5rdCsRunBbfaoiRR01u9sYjcaK9e', 22, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(23, 'Virgie Jaskolski', 'bette.mccullough@example.net', '$2y$10$LEB02DewVsw.eK8aR1Dg5Ow0Es8z.XtJYiZnt9BKlvUCgHwTeOSKS', 23, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(24, 'Luther Corwin', 'conn.kobe@example.net', '$2y$10$FIJbT9lS5kqdFyFV1K0x4.3f6O4XhEGqOtxZUZVUjIjK1a/Xl/6Oq', 24, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(25, 'Jeramy Koepp', 'owen52@example.net', '$2y$10$f0e5gpg2uo1tTxoE/Xt53et6CRHJ0afvc3XW45JAj0Y705Zdqz9ne', 25, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(26, 'Esmeralda Cormier', 'omer71@example.net', '$2y$10$tsXqrQVkN6.knx8zFb0JN.Q6NUh6ZeeDLqDz5basrTdOqMtEUaaGO', 26, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(27, 'Sydni Lemke V', 'qdicki@example.org', '$2y$10$J1ftRq6S7CWT99tufJ8m/egZtOw9Rf1aY6lJyscxlf9QqYYKMtMeG', 27, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(28, 'Mr. Kadin Jacobson PhD', 'esperanza66@example.net', '$2y$10$hOpOfEgFETicEf5sgdvUgOMHAvpw5crfPqUDJnF0mhrfhKnkWCK1S', 28, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(29, 'Russ Runolfsson', 'alayna.gutmann@example.com', '$2y$10$ySxlVdjXyGGQ1yt9Sjx5N.0tNK560fV25jIjVyKdJJLcVPfyMhJUG', 29, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(30, 'Veronica Hyatt Jr.', 'nnolan@example.net', '$2y$10$vyeBPKc1cK387RTK51uurO8XXObe6al78DYWS/Oc8c3A9oorKWwsG', 30, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(31, 'Raymond McClure III', 'elisa.russel@example.org', '$2y$10$bKb1MRNBeAz2aS0TgOzkUOhP0j3hZSbMPvcTj6Xp82xzZG9jrCbwm', 31, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(32, 'Prof. Justina Mitchell', 'wshanahan@example.com', '$2y$10$QlLyJjHHlF590CYJSubLcuWIeAjxzPg5jAV7HvgBaXmYt5q.LCkYG', 32, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(33, 'Rebeca Dickens', 'robbie24@example.com', '$2y$10$6W.4l6US2kxerD1pv/ZJoOW7K/dtOycm9iERFu3GKGazTdPZjBtuy', 33, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(34, 'Angelo Bergnaum', 'fbaumbach@example.net', '$2y$10$sPSXNOYRUs9P8tLwP99fIuT.QManlUl2yXwuxIqJeuCpCr8yxlcV2', 34, '2023-04-16 21:19:03', '2023-04-16 21:19:03'),
(35, 'Madyson Conroy', 'nathen84@example.net', '$2y$10$LUYmH4aNzAmC7wQ5HDleWOu1WHswK1/MHpp5tSNx.wx2AW2EPfJ02', 35, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(36, 'Christ Stamm III', 'ohackett@example.net', '$2y$10$z606GWjEqhpYlwHYlOVbFu9kyiw3We1oO.wW1zJWUcfCP1YpelKwG', 36, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(37, 'Antonio Green', 'hmayert@example.com', '$2y$10$6By1zFTaJ17weLpcJjAkruBL/KxgRJkqwZGDaRcQKsfhLmVOtzRJu', 37, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(38, 'Mr. Gerald Lind V', 'mariana32@example.com', '$2y$10$OnQ0HqaL7HXjFfzbw.dTOeyzhQVOiCFg5IhULwXi.exRaG2Ok7RUa', 38, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(39, 'Ludie Ziemann', 'hayes.cameron@example.org', '$2y$10$bdH9Yb652n5KPz0Zzs/ET.sNHhWyBEXXwqY9qEcE4PFTGx63Y6kyK', 39, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(40, 'Alena Corwin', 'mcole@example.org', '$2y$10$2do5r3cGdV/Td1BE3tL.zuOHZZrNjABIL0Kze5jEs63ADVQDwKFqC', 40, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(41, 'Brittany Dickens', 'grant.ethelyn@example.net', '$2y$10$mpHvsq/fPqTsGFszrloZ5eYocgRoE83dLrsliCnzzyV.lKbHtlFSC', 41, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(42, 'Mr. Alfred Vandervort', 'heidenreich.michelle@example.org', '$2y$10$mNC.m66hfsXVIOAONssJo.ui8e4O/yGnzDfVtImFT9yu9SsM57dUy', 42, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(43, 'Jacinthe Baumbach', 'lavina18@example.net', '$2y$10$yAf/MONqkd6F2rRj44355.gTf2iVSv8aGicOM7dhJt8EGrivh9bCi', 43, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(44, 'Hilton Grant PhD', 'ezra.daniel@example.com', '$2y$10$3AkDaGy4x0C9fGMmv7k/f.i3biYIWgLzGuuYil8M3A2OGW3MwKmpW', 44, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(45, 'Myrtice Collier II', 'neva58@example.com', '$2y$10$Z.6X7rocInUrN4ETTnO/w.k/u35vyoEdYh1ktUBD5LKX9sHkcDsJe', 45, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(46, 'Aisha Hackett', 'lferry@example.com', '$2y$10$IhxDthf8c5nun1DCjT2cSeXeDjH78UE70.eEIxk3E6O93DcSXvvWO', 46, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(47, 'Eudora Zieme', 'satterfield.hoyt@example.net', '$2y$10$dZLISLK0KPfRRbuoS91OYOm9qnUbM03f0ml86AKjPhNWRzcY3U1t2', 47, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(48, 'Max Rath', 'haley.nils@example.com', '$2y$10$m2gXviez4GOhW.7lS.FqBe8T7Fo/f/aPXO8x2ZgR6HGeiJKQGUaHu', 48, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(49, 'Marley Waters', 'daugherty.alice@example.net', '$2y$10$e1UH6Z5zOViw7UXDx.ZRpuEuVv8H0h5rKeig.CFq3zusyXM.micMe', 49, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(50, 'Thea Dibbert', 'terry.mariam@example.net', '$2y$10$i.6kTHbPhUOjADwpq0O2y.q2CkfgCdDWEvtOemHm7L5b0D9VKRgXm', 50, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(51, 'Trinity Weimann', 'hane.morton@example.org', '$2y$10$sISYs1K1VRVkWfBDZXq2lORGf8m6.IhNH3FQqU0igug7DONVwnMGm', 51, '2023-04-16 21:19:04', '2023-04-16 21:19:04'),
(52, 'Margie Walter', 'gavin98@example.com', '$2y$10$aP/t9OMDbxPo.qtstO7EKewZzJibZOyhwz6oJpqySPGm/kW7rPSBS', 52, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(53, 'Lysanne Welch', 'emmie81@example.com', '$2y$10$rmsweoVQQXZWfWC/a2mw4OZwXWT1uf7iVpmrG3rNAOimvptezZXk6', 53, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(54, 'Saul Dare DDS', 'wwiza@example.com', '$2y$10$r8GjlWmt/B81yLkcR/gycOwRcDNzkF2QUyQ6k1zmA/K8QRQA8XJF2', 54, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(55, 'Serenity Swaniawski', 'eddie.lynch@example.org', '$2y$10$Xnui2u2JpEOZcqxqDMm7QObnlRqn3dUSxzRHdPvyOrjwaCKWaC6Ym', 55, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(56, 'Leila Denesik DVM', 'dickinson.stefan@example.org', '$2y$10$obod/BECMEY0Vl0CkURQuuqlMEcWYiWd0T1B8eLx2hNwB6MhIY7gO', 56, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(57, 'Edyth Lakin', 'louvenia.west@example.net', '$2y$10$k5nHZZM0KKFOJeVaNnv54OX981qjHorT58UJg0kTItY2FyWFHdYAy', 57, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(58, 'Prof. Joshua Nitzsche DDS', 'finn87@example.net', '$2y$10$ffzHm8r5.lIVF/95xwtnSu6QRfNI8Rz3vGx4b1ctWm0IxdoS7RRmy', 58, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(59, 'Mr. Stephan Kuhic', 'okilback@example.org', '$2y$10$Jm.DaHe6K9uItpfEorDr9Ou/rT3KxrLZ7QT5o9zvOUGpr2hgtPlPq', 59, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(60, 'Sherwood Pacocha V', 'clara.towne@example.org', '$2y$10$5.1Bkmk8ytk5PKF2Cp2pteCTeQQmUUZ4c7VaI48lCH5lRTzWzR8TW', 60, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(61, 'Prof. Chaim Zboncak', 'albertha.ruecker@example.net', '$2y$10$jXaia.CbbGki8i/mT8pumuYVS55XNGKi1OCSmIc3Z4opubSJTZDmy', 61, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(62, 'Miss Vella Bechtelar', 'hsanford@example.net', '$2y$10$xtzGyn71GzX.9SdELi6sIumtZ/lAivYoWJ5KYdB1AKtI.TfCeM42y', 62, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(63, 'Mrs. Vivien Homenick I', 'alphonso.miller@example.com', '$2y$10$Pu2DZn5JGvimlR1eK91a6.ixdKGqsKs6rYoeA13QYzqWpu11UPK0i', 63, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(64, 'Prof. Alexandria Fisher DDS', 'araceli85@example.org', '$2y$10$obbNC28/bAOaI68U3qKUde/Uxbo20DqOLcSF3ZJm4.P3HamWV0lyC', 64, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(65, 'Aileen Turner', 'maddison85@example.com', '$2y$10$D86yp4OEusKSKRr6dW9KmO.qPItvRkHdRaGnJlkIycv1eCHgyxqB.', 65, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(66, 'Ted Feest', 'brenna79@example.org', '$2y$10$BP.CPHit0jmG8aEKus5UjOleOzTVitMZqdDO1gFX4WQVGWcpA7IKe', 66, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(67, 'Prof. Olen Weimann V', 'tschimmel@example.net', '$2y$10$G0IXmsggio5oTdP5p/C4he82oh72x/KUzvoVgjbDUMQJLSeuZJnUO', 67, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(68, 'Prof. Adonis Adams', 'adella33@example.org', '$2y$10$OmaC6J5JjXzxQyeWBe5zP.H5nMImqSOf6Qnc5gns3VTMDUSpuol1i', 68, '2023-04-16 21:19:05', '2023-04-16 21:19:05'),
(69, 'Mrs. Leonor Wiegand DVM', 'ijacobi@example.com', '$2y$10$RgZJmnk4NfPucLAbNMNO..8ZuEKIBpzKj8uWrOkcoFxoRZ9bSSdWC', 69, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(70, 'Aubree Simonis', 'rhyatt@example.com', '$2y$10$qmaZbu87tvM.vQ3yRO7ACe.lg29r1V1UhiQqoraUgeEtEPudcBalC', 70, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(71, 'Catherine Crooks', 'medhurst.newell@example.net', '$2y$10$LeSZ4h2/ZKQSfOrupwCUluOjl1oUDgmKW5ap7zE8OPA/KHtcM2ax.', 71, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(72, 'Dr. Ari Schneider', 'elva.kohler@example.net', '$2y$10$yiGzdleHKxjx2sTSNY2Fk.hjQ5jom6qLb3XLJCVbKIJ9eUqTeP2ym', 72, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(73, 'Damaris Zieme', 'rubye78@example.com', '$2y$10$F9eNpA.uRa4.059LMG2NguEmExrXLCYbAdHP9beVwZ1GAi4Titvi6', 73, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(74, 'Dante Batz', 'dino17@example.net', '$2y$10$XEoyoKNufVE0O/.SbnJjuO11yWaBVd.iqUnkDsA4UZBv8AKO.IJd.', 74, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(75, 'Benjamin Walter I', 'schoen.rachael@example.org', '$2y$10$MMrxV.6sSQV1nUZsij6de.sOlBnFgAbVR2fT/2Cxk21QER3nIepRm', 75, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(76, 'Abdul Metz', 'bennie70@example.com', '$2y$10$eRnmxh7tePO.B51wLHhAXOFHvkID6yXtZkl2Q6tIOMx1QTZgCg1wu', 76, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(77, 'Issac Ankunding', 'shields.nelson@example.net', '$2y$10$g8UlNsiG7eK1xpNHCSYbx.wxIpNB.wDfwmI57Yx.kUlo5zHYPKa3a', 77, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(78, 'Kiley Howe', 'gia.west@example.com', '$2y$10$OcTFdnMEI1v9V0/7mdHYTuN1jQL.igY9r6THEGoQJaVFuN5gDzzI2', 78, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(79, 'Dr. Jameson Leannon Sr.', 'jonathan61@example.org', '$2y$10$RfUXHeLZNtxTZz3aLV59gON57G2PGU7e60wUNTbc6LGKkmMx7b73q', 79, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(80, 'Prof. Donald Mante Sr.', 'zfriesen@example.com', '$2y$10$FInWswF6xwFr8UC.Zm3fiORgWswLr9MYWb3vOVqKWAzGQmwxsyE0O', 80, '2023-04-16 21:19:06', '2023-04-16 21:19:06'),
(81, 'Bella Torp', 'diamond.roberts@example.com', '$2y$10$4NkDynqhSSDkO6JghMPaJO3inGxlVWplDH6pNSxDyYUvSnYYah1Km', 81, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(82, 'Ross Turcotte', 'powlowski.abigale@example.net', '$2y$10$tBc2XUAt4sbhPZDNKZYFEugzVc94emrj1SPfq4sJV7nm1JZQKA9yu', 82, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(83, 'Jane Gleason', 'julius34@example.com', '$2y$10$NYEhBtt6tYGxWBzQH2tuk.TZa/aU0PU9vuDTpRmyRBCPv4CTM8pTK', 83, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(84, 'Luisa Ziemann Sr.', 'cynthia92@example.org', '$2y$10$ttmHd5OaNjgMyt9TotvIu.bXYWXaZ.q.ic6AuBm/aMfgA/a6zCWES', 84, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(85, 'Eliseo Hansen', 'vgoyette@example.org', '$2y$10$GjJbDEYGLZkq5K9XlXGE5efLcw6GXkm9fBee0b8y0U5aCRZ3lSKe2', 85, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(86, 'Diego Boehm DVM', 'xkilback@example.com', '$2y$10$iC.C.HlBnHSY67jbCw0iU.3iehW/nLT1CQJwO/CrNIzxqxeHxtQxi', 86, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(87, 'Delmer Klocko IV', 'murphy.wilfredo@example.com', '$2y$10$r4TqMGnWHht.FyPk23u9FOiT1QA5tYFbeIm6Q1vsRqNtvF4Tzyl7G', 87, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(88, 'Merl Satterfield', 'dee.tremblay@example.org', '$2y$10$dBBxejA73LjzFetiH5oOz.LOiWfBnyPHPDjAE7/1J98zz4Gi.YPNy', 88, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(89, 'Earline Hintz', 'gkoss@example.net', '$2y$10$UvclqiHQ08uVDvgAm3YH1O5YOjMDMSg6MCo0aMSHd7wwc4eCXhBOa', 89, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(90, 'Dean Cassin', 'xmayer@example.org', '$2y$10$3zvclrx/sRpb5PbOFqYGiOO3ljv7hdHNJkL9kTwcjLQHwK0Hy4EfS', 90, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(91, 'Mariane Stroman V', 'murray.wisoky@example.com', '$2y$10$LVXxQ7SWWSs1uopw2PCacuSHYdAG8dklz4gvZ3qxWfe4/3d1Robea', 91, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(92, 'Dr. Frida Hamill', 'alexandro.huels@example.com', '$2y$10$m1K4WWBaELTjOW04wIWa8uNzlc/ry3JGDXkdx87QVXlbRnL0.CLsy', 92, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(93, 'Frederick Bode', 'abrekke@example.org', '$2y$10$lBKGZltvRIfVn3hPYZ3YWOg6.C7TNhb6lGR8Cx2CR6T.m6eucwqY.', 93, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(94, 'Dr. Juliet Jakubowski DVM', 'wwhite@example.com', '$2y$10$d2sqTK2hBTm3KLF4LPh6a.93I84.k3sEldJTyreH2hxgkgMYvZGjm', 94, '2023-04-16 21:19:07', '2023-04-16 21:19:07'),
(95, 'Domenica Cremin', 'gayle88@example.net', '$2y$10$SioLzhFdoLwjX/8kHddkzelLPMyWnaI3HQRS9ZegRUP3uWCpgpjQ2', 95, '2023-04-16 21:19:08', '2023-04-16 21:19:08'),
(96, 'Prof. Treva Kiehn Sr.', 'phyllis53@example.com', '$2y$10$th6GAZHvXV/mjbILuhvYne.8RfJQiG0WDbLqy/Xiaw9fawBud1Eta', 96, '2023-04-16 21:19:08', '2023-04-16 21:19:08'),
(97, 'Erich Mayer DDS', 'chammes@example.org', '$2y$10$iP9H2G.h07dFc4.d/Kv0VepKiMaxofOXR5oHbSA87txKnPAw86iwS', 97, '2023-04-16 21:19:08', '2023-04-16 21:19:08'),
(98, 'Alfredo Boehm', 'gstamm@example.net', '$2y$10$HJrmfSZGRxwpNBRVmExURuoWUVgoQaokL3T2g.GLbH6G64QZiEmfa', 98, '2023-04-16 21:19:08', '2023-04-16 21:19:08'),
(99, 'Dr. Jack Rohan', 'conn.gay@example.net', '$2y$10$1bSTjhlnHpi2Dov5y9V9NO8.x2V9pQ1LI/8OIOruhqpi.rXqMy89q', 99, '2023-04-16 21:19:08', '2023-04-16 21:19:08'),
(100, 'Marcel Gislason', 'yasmine.jenkins@example.com', '$2y$10$jjv38wolPPI.I7NvNrEFHe1sua./XgtbxZs1OdU3XbneOyJaS8Iwu', 100, '2023-04-16 21:19:08', '2023-04-16 21:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'North Simshire', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(2, 'Jeramiestad', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(3, 'Kuvalisview', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(4, 'Virginieton', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(5, 'East Lonie', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(6, 'East Joanport', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(7, 'Bruceview', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(8, 'Terenceburgh', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(9, 'East Jovanimouth', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(10, 'Port Danielle', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(11, 'South Jeremieside', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(12, 'Jaimestad', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(13, 'Pasqualebury', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(14, 'Aprilside', '2023-04-16 21:17:50', '2023-04-16 21:17:50'),
(15, 'Kurtfort', '2023-04-16 21:17:50', '2023-04-16 21:17:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_etudiant_id_foreign` (`etudiant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_etudiant_id_foreign` (`etudiant_id`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
