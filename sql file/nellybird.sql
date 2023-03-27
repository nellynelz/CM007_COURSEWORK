-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 11:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nellybird`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2021-11-10 18:28:11', NULL),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2021-11-10 18:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Tourism', 'World tourism sites', '2021-06-05 18:30:00', '2023-03-27 09:39:37', 1),
(5, 'Museums', 'World Antiquity Centres', '2021-06-13 18:30:00', '2023-03-27 09:40:11', 1),
(6, 'World Ancient Leader', 'World Ancient Leader', '2021-06-21 18:30:00', '2023-03-27 09:40:58', 1),
(7, 'Children Stories', 'Bedtime stories for children', '2021-06-21 18:30:00', '2023-03-27 09:41:34', 1),
(8, 'Best Cuisine in UK', 'Where to Eat', '2021-11-07 18:17:28', '2023-03-27 09:42:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2021-11-20 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2021-06-29 18:30:00', '2021-11-06 18:30:00'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2021-06-29 18:30:00', '2021-11-06 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Pyramid of giza', 3, 4, 'The Pyramid of Giza\r\nThe Giza Pyramids, built to endure an eternity, have done just that. The monumental tombs are relics of Egypt\'s Old Kingdom era and were constructed some 4,500 years ago.\r\n\r\nEgypt\'s pharaohs expected to become gods in the afterlife. To prepare for the next world they erected temples to the gods and massive pyramid tombs for themselves—filled with all the things each ruler would need to guide and sustain himself in the next world.\r\n\r\nPharaoh Khufu began the first Giza pyramid project, circa 2550 B.C. His Great \r\nPyramid is the largest in Giza and towers some 481 feet (147 meters) above the plateau. Its estimated 2.3 million stone blocks each weigh an average of 2.5 to 15 tons.\r\n\r\nKhufu\'s son, Pharaoh Khafre, built the second pyramid at Giza, circa 2520 B.C. His necropolis also included the Sphinx, a mysterious limestone monument with the body of a lion and a pharaoh\'s head. The Sphinx may stand sentinel for the pharaoh\'s entire tomb complex.\r\n\r\nThe third of the Giza Pyramids is considerably smaller than the first two. Built by Pharaoh Menkaure circa 2490 B.C., it featured a much more complex mortuary temple.\r\n\r\nEach massive pyramid is but one part of a larger complex, including a palace, temples, solar boat pits, and other features.\r\n\r\nBuilding Boom\r\nThe ancient engineering feats at Giza were so impressive that even today scientists can\'t be sure how the pyramids were built. Yet they have learned much about the people who built them and the political power necessary to make it happen.\r\n\r\nThe builders were skilled, well-fed Egyptian workers who lived in a nearby temporary city. Archaeological digs on the fascinating site have revealed a highly organized community, rich with resources, that must have been backed by strong central authority.\r\n\r\nIt\'s likely that communities across Egypt contributed workers, as well as food and other essentials, for what became in some ways a national project to display the wealth and control of the ancient pharaohs.', '2021-07-07 18:30:00', '2023-03-27 20:47:18', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', 'f9587a0e93f623aae8e4f1595794d19c.jpg', 25, 'admin', NULL),
(10, 'Cinderella', 7, 9, 'ONCE UPON A TIME a girl named Cinderella lived with her stepmother and two stepsisters.  Poor Cinderella had to work hard all day long so the others could rest. It was she who had to wake up each morning when it was still dark and cold to start the fire.  It was she who cooked the meals. It was she who kept the fire going. The poor girl could not stay clean, from all the ashes and cinders by the fire.\r\n\r\nWhat a mess!” her two stepsisters laughed.  And that is why they called her “Cinderella.”\r\n\r\nOne day, big news came to town.  The King and Queen were going to have a ball!  It was time for the Prince to find a bride. All of the young ladies in the land were invited to come.  They were wild with joy! They would wear their most beautiful gown and fix their hair extra nice. Maybe the prince would like them!\r\n\r\nAt Cinderella’s house, she now had extra work to do.  She had to make two brand-new gowns for her step-sisters.  \r\n\r\n“Faster!” shouted one step-sister.\r\n\r\n“You call that a dress?” screamed the other.  \r\n\r\n“Oh, dear!” said Cinderella.  “When can I–“\r\n\r\nThe stepmother marched into the room.  “When can you WHAT?”\r\n\r\n“Well,” said the girl, “when will I have time to make my own dress for the ball?”\r\n\r\n“You?” yelled the stepmother.  “Who said YOU were going to the ball?”\r\n\r\n“What a laugh!” said one step-sister.\r\n\r\n“Such a mess!” They pointed at Cinderella.  All of them laughed.\r\n\r\nCinderella said to herself, “When they look at me, maybe they see a mess.  But I am not that way.  And if I could, I WOULD go to the ball.”\r\n\r\nSoon the time came for the stepmother and step-sisters to leave for the big party.', '2021-06-30 18:30:00', '2023-03-27 21:22:24', 1, 'Cinderella', '73c415e57e873254ebebf0a7c8cbc74c.jpg', 1, 'admin', NULL),
(11, 'Queen Elizabeth', 6, 8, 'Queen Elizabeth\r\nQueen Elizabeth II, the UK\'s longest-serving monarch, has died at Balmoral aged 96, after reigning for 70 years.\r\n\r\nShe died peacefully on Thursday afternoon at her Scottish estate, where she had spent much of the summer.\r\n\r\nThe Queen came to the throne in 1952 and witnessed enormous social change.\r\n\r\nHer son King Charles III said the death of his beloved mother was a \"moment of great sadness\" for him and his family and that her loss would be \"deeply felt\" around the world.\r\n\r\nHe said: \"We mourn profoundly the passing of a cherished sovereign and a much-loved mother.\r\n\r\n\"I know her loss will be deeply felt throughout the country, the realms and the Commonwealth, and by countless people around the world.\"\r\n\r\nDuring the coming period of mourning, he said he and his family would be \"comforted and sustained by our knowledge of the respect and deep affection in which the Queen was so widely held\".\r\n\r\nThe King and his wife, Camilla, now Queen Consort, will return to London on Friday, Buckingham Palace said. He is expected to address the nation.\r\n\r\nSenior royals had gathered at Balmoral after the Queen\'s doctors became concerned about her health earlier in the day.\r\n\r\nAll the Queen\'s children travelled to Balmoral, near Aberdeen, after doctors placed the Queen under medical supervision.\r\n\r\nHer grandson and now heir to the throne, Prince William, and his brother, Prince Harry, also gathered there.', '2021-06-30 18:30:00', '2023-03-27 21:07:57', 1, 'Queen Elizabeth', '54d11c74219c4b5a26712ab77ba513da.jpg', 34, 'admin', NULL),
(12, 'Alexander the Great', 6, 7, 'Alexander The Great\r\nAlexander III of Macedon, better known as Alexander the Great, single-handedly changed the nature of the ancient world in little more than a decade.\r\n\r\nAlexander was born in Pella, the ancient capital of Macedonia in July 356 BC. His parents were Philip II of Macedon and his wife Olympias. Alexander was educated by the philosopher Aristotle. Philip was assassinated in 336 BC and Alexander inherited a powerful yet volatile kingdom. He quickly dealt with his enemies at home and reasserted Macedonian power within Greece. He then set out to conquer the massive Persian Empire.\r\n\r\nAgainst overwhelming odds, he led his army to victories across the Persian territories of Asia Minor, Syria and Egypt without suffering a single defeat. His greatest victory was at the Battle of Gaugamela, in what is now northern Iraq, in 331 BC. The young king of Macedonia, leader of the Greeks, overlord of Asia Minor and pharaoh of Egypt became \'great king\' of Persia at the age of 25.\r\n\r\nOver the next eight years, in his capacity as king, commander, politician, scholar and explorer, Alexander led his army a further 11,000 miles, founding over 70 cities and creating an empire that stretched across three continents and covered around two million square miles. The entire area from Greece in the west, north to the Danube, south into Egypt and as far to the east as the Indian Punjab, was linked together in a vast international network of trade and commerce. This was united by a common Greek language and culture, while the king himself adopted foreign customs in order to rule his millions of ethnically diverse subjects.\r\n\r\nAlexander was acknowledged as a military genius who always led by example, although his belief in his own indestructibility meant he was often reckless with his own life and those of his soldiers. The fact that his army only refused to follow him once in 13 years of a reign during which there was constant fighting, indicates the loyalty he inspired.\r\n\r\nHe died of a fever in Babylon in June 323 BC.', '2021-06-30 18:30:00', '2023-03-27 20:57:01', 1, 'Alexander', 'd8c4a24cb4f9dfb1fd202c4ddfdb5dd7.jpg', 22, 'admin', NULL),
(13, 'Shaolin Temple', 3, 4, 'Shaolin Temple\r\nUsually we start every kind of communication with a respectful bow, because this one little gesture keeps reminding us that that the person we are dealing with at this moment is currently the most important person for us. Staying in the presence and being aware of what is Here and Now: In the moment where life happens and where changes can take place.\r\n\r\nThe Shaolin Temple Europe is eager to share the wisdom, which has been developed since more then 1519 years to help the people in this modern society. Many approaches, training and teaching methods have direct effect on the 3 treasures of Shaolin: Mind, Heart and Body. The holistic approach is based upon daily observation and development of the monks and masters of the Shaolin Temple.\r\n\r\nWe would be happy if we could inspire you to explore this uncommon journey with us and to learn more about this ancient culture and way of livi', '2021-11-10 18:50:09', '2023-03-27 21:33:02', 1, 'Shaolin Temple', 'a09f76a3bfb63de75defc36c5d379d6e.jpg', 8, 'admin', 'subadmin');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2021-06-21 18:30:00', '2021-11-07 17:59:57', 1),
(4, 3, 'World Best Location', 'places to visit\r\n\r\n', '2021-06-29 18:30:00', '2023-03-27 09:43:42', 1),
(5, 3, 'Beautiful Historical places', 'Beautiful Historical places', '2021-06-29 18:30:00', '2023-03-27 10:00:33', 1),
(6, 5, 'World antique preservation ', 'World antique preservation ', '2021-06-30 18:30:00', '2023-03-27 10:02:12', 1),
(7, 6, 'Leaders', 'About great men', '2021-06-30 18:30:00', '2023-03-27 10:05:34', 1),
(8, 6, 'Warriors', 'Warriors', '2021-06-30 18:30:00', '2023-03-27 10:06:20', 1),
(9, 7, 'Bedtime', 'Children Bedtime', '2021-06-30 18:30:00', '2023-03-27 10:06:48', 1),
(10, 8, 'Vaccination', 'Vaccination', '2021-11-07 18:18:25', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
