SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(4) NOT NULL AUTO_INCREMENT,
  `a_unm` varchar(30) NOT NULL,
  `a_pwd` varchar(30) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



INSERT INTO `admin` (`a_id`, `a_unm`, `a_pwd`) VALUES
(1, 'admin', 'admin');



CREATE TABLE IF NOT EXISTS `book` (
  `b_id` int(10) NOT NULL AUTO_INCREMENT,
  `b_nm` varchar(50) NOT NULL,
  `b_cat` int(6) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_price` int(4) NOT NULL,
  `b_img` varchar(50) NOT NULL,
  `b_time` int(20) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;



INSERT INTO `book` (`b_id`,`b_nm`, `b_cat`, `b_desc`, `b_price`, `b_img`, `b_time`) VALUES 
(15, 'Unchartered 2 PS3', 15, 'Continue Nathan Drakes globetrotting quest for hidden relics and ancient mysteries.', 250, 'images\Game Images\unchartered2.jpeg', 1554088592),
(16, 'Uncharted', 16, 'Follow Nathan Drakes adventures in a series of action-packed treasure hunts.', 400, 'images\Game Images\unchartered.jpeg', 1554088592),
(17, 'Titanfall', 20, 'Pilot agile mechs and engage in high-speed warfare in a futuristic setting.                  ', 500, 'images\Game Images\titanfall.jpeg', 1554088592),
(18, 'Star Wars 2', 20, ' Immerse yourself in the Star Wars universe with iconic characters and epic space battles.    ', 600, 'images\Game Images\starwars.jpeg', 1554088592),
(19, 'Rainbow Six Siege', 16, 'Engage in tactical, team-based counter-terrorism operations in intense multiplayer battles.               ', 500, 'images\Game Images\rainbow.jpeg', 1554088592),
(20, 'Need for Speed', 16, 'Unleash high-octane racing action with a focus on fast cars and adrenaline-pumping chases.', 499, 'images\Game Images\nfs.jpeg', 1554088592),
(21, 'Money King', 18, 'Build a financial empire in this strategy game and become the ultimate tycoon.       ', 1500, 'images\Game Images\money.jpeg', 1554088592),
(22, 'Mafia 2', 19, 'Dive into the criminal underworld of the 1940s and 50s in an action-packed narrative.        ', 499, 'images\Game Images\mafia2.jpeg', 1554088592),
(23, 'God of War', 14, 'Embark on an epic journey as Kratos, a former god seeking redemption in Norse mythology.     ', 399, 'images\Game Images\gow.jpeg', 1554088592),
(24, 'Forza Horizon', 20, 'Experience the thrill of open-world racing and explore beautiful landscapes.           ', 599, 'images\Game Images\forza.jpeg', 1554088592),
(25, 'Days Gone', 16, 'Survive in a post-apocalyptic world overrun by zombie-like creatures.                 ', 699, 'images\Game Images\daysgone.jpeg', 1554088592);



CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_nm` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;



INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(13, 'PS 1'),
(14, 'PS 2'),
(15, 'PS 3'),
(16, 'PS 4'),
(17, 'PS 5'),
(18, 'Xbox 360'),
(19, 'Xbox One'),
(20, 'PC');



CREATE TABLE IF NOT EXISTS `contact` (
  `c_id` int(4) NOT NULL AUTO_INCREMENT,
  `c_fnm` varchar(100) NOT NULL,
  `c_mno` int(10) NOT NULL,
  `c_email` varchar(60) NOT NULL,
  `c_msg` longtext NOT NULL,
  `c_time` varchar(20) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;



INSERT INTO `contact` (`c_id`, `c_fnm`, `c_mno`, `c_email`, `c_msg`, `c_time`) VALUES
(5, 'Kumar Baraiya', 2147483647, 'kumar@gmail.com', 'Awesome Books.', '1554092678'),
(10, 'Dhaval Makwana', 2147483647, 'dhavalmak77@gmail.com', 'Best Books', '1554201509'),
(12, 'Dhaval', 123654789, 'dhaval@gmail.com', 'Looking For New Books', '1554219813');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_name` varchar(30) NOT NULL,
  `o_address` varchar(200) NOT NULL,
  `o_pincode` int(20) NOT NULL,
  `o_city` varchar(30) NOT NULL,
  `o_state` varchar(30) NOT NULL,
  `o_mobile` int(20) NOT NULL,
  `o_rid` int(8) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `o_name`, `o_address`, `o_pincode`, `o_city`, `o_state`, `o_mobile`, `o_rid`) VALUES
(39, 'Dhaval Makwana', 'Mahuva', 125478, 'nuihu', 'Gujarat', 123456789, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `r_id` int(8) NOT NULL AUTO_INCREMENT,
  `r_fnm` varchar(100) NOT NULL,
  `r_unm` varchar(50) NOT NULL,
  `r_pwd` varchar(30) NOT NULL,
  `r_cno` varchar(10) NOT NULL,
  `r_email` varchar(60) NOT NULL,
  `r_question` varchar(100) NOT NULL,
  `r_answer` varchar(50) NOT NULL,
  `r_time` varchar(20) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_fnm`, `r_unm`, `r_pwd`, `r_cno`, `r_email`, `r_question`, `r_answer`, `r_time`) VALUES
(1, 'Dhaval Makwana', 'dhaval', 'dhaval123', '9876543210', 'dhavalmak77@gmail.com', 'Which is your Favourite Movie ?', 'shawshank redemption', '1554092678'),
(2, 'Kumar Baraiya', 'kumar', 'kumar123', '1234567890', 'kbaraiya@gmail.com', 'Which is your Favourite Movie ?', '123', '1554201585'),
(3, 'Hiren Makwana', 'hirenmakwana', 'hirenmakwana', '7894561230', 'hiren@gmail.com', 'Which is your Favourite Movie ?', 'prometheus', '1555655074');
