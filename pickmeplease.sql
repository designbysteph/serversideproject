-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 05:25 am
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pickmeplease`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE IF NOT EXISTS `animals` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` float NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fee` float NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `breed`, `gender`, `age`, `description`, `fee`, `thumb`, `photo`, `type_id`) VALUES
(1, 'George', 'Labrador', 'Male', 3, 'George is super laid back. He is cheerful, even tempered and gets along well with other pets. George is not particularly active, but he loves being at his owners side so much that he has been nicknamed Shadow. A super companion for someone who is home regularly and looking for a companion.', 160, 'georgethumb.jpg', 'george.jpg', 1),
(2, 'Flynn', 'Golden Retriever', 'Male', 5, 'Flynn is one of the most loving, affectionate dogs that we have looked after. Everyone who comes into contact with Flynn just adores him. Flynn is super loyal and loves his people. He will express his love to you when he sees you after being out. Flynn needs a loving forever home with someone willing to give him a lot of love and attention.', 160, 'flynnthumb.jpg', 'flynn.jpg', 1),
(3, 'Edmond', 'English Bulldog', 'Male', 8, 'There is no dog quite like Edmond. People call him Ed but he only responds if you use his full name unless he is in one of his ‘moods’. His tenacity means that it is difficult to change his mind once he decides to do something. Edmond is usually peaceful with other dogs although he may engage in a battle of wills with other males, so best place with a female dog. Not to be homed with cats, for their sake. Needs a firm owner experienced with this breed, wanting a seldom barking, dependable and entertaining friend. \r\n', 160, 'edthumb.jpg', 'ed.jpg', 1),
(4, 'Pea', 'Domestic Long-haired Tabby', 'Female', 1, 'Gentle girl for adoption. Pea was found wandering the streets alone and was brought to us a sick, dehydrated and starving little girl. We have nurtured and pampered her and although she is still slight in frame. she is healthy and full of life. Pea can be a little anxious due to her rough start in life, and needs a tender hand. Suited to a quiet home without children and other pets.', 99, 'peathumb.jpg', 'pea.jpg', 2),
(5, 'Lucy', 'Domestic Short-haired Tabby', 'Female', 5, 'A social and lively girl who has maintained her kitten characteristics into adulthood. Absolutely adores other animals and responds well to playful children. She is now ready for a loving home with lots of toys!', 99, 'lucythumb.jpg', 'lucy.jpg', 2),
(6, 'Clyde', ' Doberman Shephard', 'Male', 1, 'The Doberman Shephard is a large cross breed. He is a very versatile dog and Clyde has all the characteristics of the breed. He is gentle, loyal, alert, energetic, highly intelligent, obedient. The Doberman Shephard makes for a fearless guard dog. The  typical pet Doberman attacks only if it believes that it, its property, or its family are in danger. Needs an owner who will keep him stimulated, exercised and well trained.\r\n', 160, 'clydethumb.jpg', 'clyde.jpg', 1),
(7, 'Richard', 'Chinook', 'Male', 3, 'Richard has a friendly temperament. He is dedicated, faithful, diligent, alert and calm. He is not too shy or too aggressive, but definitely gentle when it comes to children. Richard loves people and suffers from separation anxiety when left alone for a longer period of time.\r\nRichard is an energetic dog, so his lucky new owner must take him for daily runs or ensure a running space for him.', 160, 'richardthumb.jpg', 'richard.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
`id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`) VALUES
(1, 'Canines'),
(2, 'Felines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `admin` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
 ADD PRIMARY KEY (`id`), ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
