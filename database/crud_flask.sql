SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_mgt`
--

CREATE TABLE IF NOT EXISTS `user_mgt` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_mgt`
--

INSERT INTO `user_mgt` (`id`, `name`, `age`) VALUES
(16, 'Clara', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_mgt`
--
ALTER TABLE `user_mgt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_mgt`
--
ALTER TABLE `user_mgt`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
