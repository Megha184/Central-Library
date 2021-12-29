-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 08:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `central_library_jsr`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Name`, `Email`, `Message`) VALUES
('', '', ''),
('Abhilasha Pathak', 'abhilashapathak999@gmail.com', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gid`, `name`, `pic`) VALUES
(12, 'image', '1219520.jpg'),
(13, 'image', '886427.jpg'),
(14, 'image', '118654.jpg'),
(15, 'image', '2601812.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `libraryteam`
--

CREATE TABLE `libraryteam` (
  `memberid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `teamtype` varchar(50) NOT NULL,
  `teampost` varchar(50) NOT NULL,
  `pic` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libraryteam`
--

INSERT INTO `libraryteam` (`memberid`, `name`, `teamtype`, `teampost`, `pic`) VALUES
(5, 'Prof. R.N. Mohanty', 'Library Committee', 'Convener', '19059profile_mm.jpg'),
(4, 'Prof. A.M. Tigga', 'Library Committee', 'P/I Library,Chairman', '32567profile_mm.jpg'),
(6, 'Sri. N.K. Sethy', 'Library Committee', 'Convener', '7332profile_mm.jpg'),
(7, 'Prof. D.K. Yadav', 'Library Committee', 'Member', '27952profile_mm.jpg'),
(8, 'Dr. Akhliesh Kumar', 'Library Committee', 'Member', '23053profile_mm.jpg'),
(9, 'Dr. Dilip Kumar', 'Library Committee', 'Member', '19881profile_mm.jpg'),
(10, 'Sri. S.K. Prasad', 'Library Committee', 'Member', '32194profile_mm.jpg'),
(11, 'Dr. Neeta Bharti', 'Library Staffs', 'Assistant Librarian', '16174profile_f.jpg'),
(12, 'Mr. N.K. Sethy', 'Library Staffs', 'Assistant Librarian', '22483profile_mm.jpg'),
(13, 'Mr. Umesh Kumar', 'Library Staffs', 'Assistant Librarian', '6863profile_mm.jpg'),
(14, 'Mr. Ganesh Shrestha', 'Library Staffs', 'Typist Clerk', '24336profile_mm.jpg'),
(15, 'Mr. Ravi Mahato', 'Library Staffs', 'Typist Clerk', '11356profile_mm.jpg'),
(16, 'Mr. Saurabh Saini', 'Library Staffs', 'Typist Clerk', '2569profile_mm.jpg'),
(17, 'Mr. Rakesh Kumar', 'Library Staffs', 'Typist Clerk', '7013profile_mm.jpg'),
(19, 'Mrs. Sunaina Devi', 'Library Staffs', 'Typist Clerk', '1384832440profile_f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `librarytime`
--

CREATE TABLE `librarytime` (
  `timeid` int(10) NOT NULL,
  `daytime` varchar(100) NOT NULL,
  `holidaytime` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `deleted` varchar(30) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarytime`
--

INSERT INTO `librarytime` (`timeid`, `daytime`, `holidaytime`, `date`, `deleted`, `user`) VALUES
(2, '08:00 AM - 10:00 PM', 'Closed due to COVID-19 Lockdown', '17-Jul-2021', '', 'kapil.kr909@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `date` varchar(15) NOT NULL,
  `mto` varchar(5) NOT NULL,
  `mcount` varchar(5) NOT NULL,
  `deleted` varchar(20) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `message`, `date`, `mto`, `mcount`, `deleted`, `user_type`) VALUES
(14, 'nkzj jasgdhk gasdkh b', '26-Feb-2018', 'YES', '7', '', ''),
(15, 'akjh kjqgebjk wejhnbq', '26-Feb-2018', 'All', '68', '', ''),
(16, 'This is test mail.', '09-Mar-2018', 'YES', '26', '', ''),
(17, 'This is test mail.', '09-Mar-2018', 'NO', '40', '', ''),
(18, 'alsdhkjhaskdjh kajsgd hgasdkf gasd', '03-Sep-2018', 'YES', '35', 'Delete', ''),
(19, 'kasjdh kagsdlkjasdhk fjah skdj', '03-Sep-2018', 'YES', '35', '', 'admin'),
(20, 'this is test mail', '12-Sep-2021', 'All', '6', '', 'kapil.kr909@gmail.com'),
(21, 'this is kaspil', '12-Sep-2021', 'YES', '6', '', 'kapil.kr909@gmail.com'),
(22, 'this is mail for testing', '12-Sep-2021', 'All', '6', '', 'kapil.kr909@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `nid` int(11) NOT NULL,
  `news` varchar(200) NOT NULL,
  `nto` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL,
  `news_file` varchar(250) NOT NULL,
  `deleted` varchar(10) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`nid`, `news`, `nto`, `date`, `news_file`, `deleted`, `user_type`) VALUES
(17, 'New batch for PHP(Website Development) is now started from 2 June 2018 at 10:30AM(Daily). So for joining contact us soon.', 'YES', '01-Jun-2018', '31', 'Delete', ''),
(18, 'New batch(for engineering students) for Language C is started from 2nd June 18(Daily). So interested students can contact us for classes.', 'YES', '01-Jun-2018', '31', 'Delete', ''),
(19, 'New Batch(for Engineering students who are coming in summer vacation) for Java is started from 2nd June-18(Daily).Interested students can contact me.', 'YES', '01-Jun-2018', '31', 'Delete', ''),
(22, 'This Site was hacked for a will by some some. Plz ignore last mail. For any further info. contact to institute directly. Sorry for inconvenience.\r\n\r\nRegards\r\nBPC\r\n ', 'YES', '02-Sep-2018', '35', 'Delete', ''),
(23, 'hello this is mail', 'YES', '03-Sep-2018', '35', 'Delete', ''),
(24, '1dfghjkjbvbnm,mnbv', 'NO', '28-Jun-2021', '', 'Delete', 'kapil.kr09@gmail.com'),
(25, 'this is test news by kapil', 'YES', '28-Jun-2021', '0', 'Delete', 'kapil.kr09@gmail.com'),
(26, 'This is latest update', 'YES', '03-Jul-2021', '', 'Delete', 'admin'),
(27, 'This is latest update', 'YES', '03-Jul-2021', '', 'Delete', 'admin'),
(28, 'this is new for testing', 'YES', '03-Jul-2021', '', 'Delete', 'admin'),
(29, 'dfghjklnb  jhgfdxhj', 'YES', '03-Jul-2021', '', 'Delete', 'admin'),
(30, '5678 dfghjkl', 'YES', '03-Jul-2021', '0', 'Delete', 'admin'),
(31, 'this is kaspil news', 'NO', '27-Aug-2021', '1', 'Delete', 'kapil.kr909@gmail.com'),
(32, 'this is nit jsr ', 'YES', '27-Aug-2021', '1', 'Delete', 'kapil.kr909@gmail.com'),
(33, 'this is nit jsr ', 'YES', '27-Aug-2021', '1', 'Delete', 'kapil.kr909@gmail.com'),
(34, 'this is central library nit jsr', 'YES', '28-Aug-2021', '1', 'Delete', 'temp909@gmail.com'),
(35, 'The \"Head First Java\" Book is available now', 'YES', '01-Oct-2021', '1', '', 'meghaagrwal.18@gmail.com'),
(36, '\"Data Structures and Algorithms Made Easy in Java\" by Narishma Karumachi\r\nis available now', 'YES', '01-Oct-2021', '1', '', 'meghaagrwal.18@gmail.com'),
(37, '\"Operating System Concepts\" by Avi Silberschatz and Peter Galvin is available now', 'YES', '01-Oct-2021', '1', '', 'meghaagrwal.18@gmail.com'),
(38, 'Please submit the book on time otherwise you will be charged the price of the book', 'YES', '01-Oct-2021', '1', '', 'meghaagrwal.18@gmail.com'),
(39, 'Please submit the book on time otherwise you will be charged the price of the book', 'YES', '01-Oct-2021', '1', '', 'meghaagrwal.18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `newsmagazines`
--

CREATE TABLE `newsmagazines` (
  `Id` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `pic` varchar(400) NOT NULL,
  `link` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsmagazines`
--

INSERT INTO `newsmagazines` (`Id`, `Type`, `Name`, `pic`, `link`) VALUES
(7, 'Magazines', 'Business Today', '1344874588businessToday.jfif', 'https://www.businesstoday.in/emagazine'),
(8, 'Newspaper', 'Dainik Jagran', '522709693dainikJagran.jpg', 'https://www.jagran.com/'),
(9, 'Newspaper', 'Hindustan', '1233683544hindustan.png', 'https://epaper.livehindustan.com/'),
(10, 'Magazines', 'Electronics For You', '1636493560elctronicsforyou.jpg', 'https://www.electronicsforu.com/'),
(11, 'Magazines', 'India Today', '1108078579indiaToday.png', 'https://www.indiatoday.in/'),
(12, 'Magazines', 'Frontline', '667087049Frontline2.jpg', 'https://frontline.thehindu.com/'),
(13, 'Magazines', 'Outlook', '2020711202Outlook.jpg', 'https://www.outlookindia.com/'),
(14, 'Magazines', 'Pratiyogita Darpan', '192882429pratyogitadarpan.jpg', 'https://www.pdgroup.in/'),
(15, 'Newspaper', 'Economic Times', '1356752265economic times.png', 'https://epapers.timesgroup.com/home.html?From=https%3a%2f%2fepaper.timesgroup.com%2fOlive%2fODN%2fTheEconomicTimes%2fAfterLogin.ashx%3forigin%3d%25252fOlive%25252fODN%25252fTheEconomicTimes%25252f'),
(16, 'Newspaper', 'Telegraph', '74693875telegraph.png', 'https://epaper.telegraphindia.com/'),
(17, 'Newspaper', 'Times of India', '405418685times of india.png', 'https://epaper.timesgroup.com/TOI/TimesOfIndia/index.html?a=c#'),
(20, 'Newspaper', 'Hindustan Times', '624892856HindustanTimes.png', 'https://epaper.livehindustan.com/'),
(21, 'Newspaper', 'Phrabhat Khabar', '790223595prabhat.png', 'https://epaper.prabhatkhabar.com/');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `otp` int(11) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publication_id` int(10) NOT NULL,
  `thesis_title` varchar(250) NOT NULL,
  `reg_no` varchar(12) NOT NULL,
  `authors` varchar(50) NOT NULL,
  `departments` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `supervisors` varchar(50) NOT NULL,
  `description` varchar(755) NOT NULL,
  `thesis_types` varchar(30) NOT NULL,
  `file_uploaded` varchar(255) NOT NULL,
  `year` varchar(10) NOT NULL,
  `date_upload` varchar(15) NOT NULL,
  `date_modify` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `thesis_title`, `reg_no`, `authors`, `departments`, `branch`, `subject`, `supervisors`, `description`, `thesis_types`, `file_uploaded`, `year`, `date_upload`, `date_modify`) VALUES
(1, '', '2019PGCACA51', 'KAPIL KUMAR', 'Department of Computer Science Engineering', 'Chemistry', 'AI', 'Azad sir', 'wertyuiop', 'Basic', 'wertyui', '2019', '29-Aug-2021', '29-Aug-2021'),
(2, '', '2019PGCACA51', 'KAPIL KUMAR', 'Department of Civil Engineering', 'Electronics and Communication Engineering', 'Networking', 'Azad sir', 'this thesis on networking', 'basic', 'wertyui', '2021', '29-Aug-2021', '29-Aug-2021'),
(3, '', '2019PGCACA51', 'KAPIL KUMAR', 'Department of Electrical Engineering', 'Computer Applications', 'Networking', 'Azad sir', 'The admission to the under graduate programmes is made on the performance in the class 12/equivalent qualifying examination and in the JEE (Main). The Joint Seat Allocation Authority (JoSAA) / Central Seat Allocation Board (CSAB) allocates the seats for Under Graduate Programmes through Common Counseling process.For general guidelines of B.Tech Admissions and documents required,', 'basic', '', '2021', '29-Aug-2021', '29-Aug-2021'),
(4, '', '2019PGCACA51', 'KAPIL KUMAR', 'Department of Electronics and Communication Engineering', 'Chemistry', 'Networking', 'Azad sir', 'this is thesis', 'basic', '10794HR Interview Questions by InterviewBit.pdf', '2021', '29-Aug-2021', '29-Aug-2021'),
(5, '', '2019PGCACA51', 'Shivam Gupta', 'Department of Mechanical Engineering', 'Electrical Engineering', 'AI', 'Azad sir', 'No Research scholar shall be permitted to accept or hold any appointment, paid or otherwise or receive any emoluments, salary, stipend or any other scholarship during the tenure. However, Sponsored Scholar (SS) will not get any Research Scholarship.', 'basic', '28699HR Interview Questions by InterviewBit.pdf', '2021', '29-Aug-2021', '29-Aug-2021'),
(6, '', '2019PGCACA51', 'KAPIL KUMAR', 'Department of Metallurgical and Materials Engineering', 'Metallurgical and Materials Engineering', 'Networking', 'Azad sir', 'h', 'basic', '23850369501N.pdf', '2022', '29-Aug-2021', '29-Aug-2021'),
(7, '', '2020PGCACA05', 'Shabbir Alam', 'Department of Production and Industrial Engineering', '', 'Enhance Quality', 'Alekha Sir', 'I think computer viruses should count as life ... I think it says something about human nature that the only form of life we have created so far is purely destructive. We\'ve created life in our own image.', 'Medium', 'Something.pdf', '2020', '26-Dec-2021', '27-Dec-2021'),
(8, '', '2020PGCACA05', 'Shabbir Alam', 'Department of Chemistry', '', 'Quantum Number', 'Pradhan Sir', 'I know there\'s a proverb which that says \'To err is human,\' but a human error is nothing to what a computer can do if it tries.', 'Advance', 'quantum.pdf', '2021', '26-Dec-2021', '27-Dec-2021'),
(9, '', '2020PGCACA05', 'Shabbir Alam', 'Department of Mathematics', '', 'Hyper Parabola', 'Kundu Sir', 'I am not the only person who uses his computer mainly for the purpose of diddling with his computer.', 'Advance', 'Hyper.pdf', '2021', '26-Dec-2021', '27-Dec-2021'),
(10, '', '2020PGCACA05', 'Shabbir Alam', 'Department of Physics', '', 'Time Series Analysis', 'Rafi Sir', 'No one messes around with a nerd’s computer and escapes unscathed.', 'Advance', 'Analysis.pdf', '2021', '26-Dec-2021', '27-Dec-2021'),
(11, '', '2020PGCACA05', 'Shabbir Alam', 'Department of Humanities and Social Sciences', '', 'Social Activity', 'Shaw Sir', 'For most people, home we represented by four walls and a roof. Not for Noa. She preferred a motherboard to a mother, a keyboard to house keys. Nothing was more comforting than the hum of a spinning hard drive.', 'Basic', 'Activity.pdf', '2021', '26-Dec-2021', '27-Dec-2021');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `UserId` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MobileNo` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirmpassword` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Branch` varchar(255) NOT NULL,
  `Regno` varchar(20) DEFAULT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`UserId`, `Name`, `Email`, `MobileNo`, `Gender`, `Password`, `Confirmpassword`, `Type`, `Branch`, `Regno`, `image`) VALUES
(28, 'KAPIL KUMAR', 'kapil.kr909@gmail.com', '8507107839', 'M', '$2y$10$wzaTIzcxwJndF7MybnQJnOx1N23UeHqTjpgJzZ9KRwRFgxhgNGYNC', '$2y$10$.FXOHek5chP8UhX1xnX3WuGtsvkHY/WecOMK45uZ1fsOyrFWMeYGS', 'Admin', 'MCA', '2019PGCACA51', ''),
(31, 'KAPIL KUMAR', '2019PGCACA51@nitjsr.ac.in', '8507107839', 'M', '$2y$10$ZvQxAnMnYe1G9QiR0xDZl.Rf4Ao1w66hrSnKn4io9N8wQt/1jSvqa', '$2y$10$kguvJEUSB2/ylX5/AESwguXtOsF1f/y8z6cDs8C9XIybpMEoFdcT2', 'Student', 'Computer Applications', '2019PGCACA51', '2287712.jpg'),
(33, 'kaspil', 'kaspil.kr909@gmail.com', '8507107839', '', '$2y$10$6FAx.dZJUPoudM22xnFqDuDlulBa/3ecPMMPihig/bpwpcirlAzNC', '$2y$10$YCxlqj162/epPFsSx9Rehe8ZoAeq.8L1SuE.kczX9KKQEPlFDPRsq', 'Admin', '', '', ''),
(36, 'Abhilasha pathak', '2019pgcaca02@nitjsr.ac.in', '', '', '$2y$10$idNJHcYl8FkgQyj8FoZvO.lbGzCeBrMijolt7PH6Dk3L5iBwT2kPq', '$2y$10$idNJHcYl8FkgQyj8FoZvO.lbGzCeBrMijolt7PH6Dk3L5iBwT2kPq', 'student', 'Computer Applications', '2019pgcaca02', ''),
(39, 'Megha Agarwal', 'meghaagrwal.18@gmail.com', '9875389001', '', '$2y$10$03EPy6HPk3Df9BYkUaCsS.xtxFJP1qQfxm2VW4C8tCP7Fl1xrBis.', '$2y$10$964ZQTvZe/K.2XcfpomFIuKLsonEbIEDQlnKAJVk6xB8T3oF2DoA2', 'Admin', '', '', ''),
(40, 'Abhilasha pathak', 'abhilashapathak999@gmail.com', '8979879867', '', '$2y$10$E10mZLakhyEasWb.Ph2QG.xpKkG1byjInmUmvHUa5kkxhtaa6n0MK', '$2y$10$QPFtbRpHKhS5.7hLoKobk.FVmB3jATLZLQaNyaCc/JbuO1Bc9hGk2', 'Admin', '', '', ''),
(41, 'Megha Agarwal', '2019pgcaca54@nitjsr.ac.in', '9875389001', 'F', '$2y$10$eaNFzkSuvvAAYazU97W8c.9ALHpNWUP2X8XDOw6ytboUf6.9LPMwO', '$2y$10$eaNFzkSuvvAAYazU97W8c.9ALHpNWUP2X8XDOw6ytboUf6.9LPMwO', 'student', 'Computer Applications', '2019pgcaca54', '');

-- --------------------------------------------------------

--
-- Table structure for table `visiter`
--

CREATE TABLE `visiter` (
  `vid` varchar(10) NOT NULL,
  `vcount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visiter`
--

INSERT INTO `visiter` (`vid`, `vcount`) VALUES
('1', 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `libraryteam`
--
ALTER TABLE `libraryteam`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `librarytime`
--
ALTER TABLE `librarytime`
  ADD PRIMARY KEY (`timeid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `newsmagazines`
--
ALTER TABLE `newsmagazines`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `departments` (`departments`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `visiter`
--
ALTER TABLE `visiter`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `libraryteam`
--
ALTER TABLE `libraryteam`
  MODIFY `memberid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `librarytime`
--
ALTER TABLE `librarytime`
  MODIFY `timeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `newsmagazines`
--
ALTER TABLE `newsmagazines`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `publication_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `UserId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
