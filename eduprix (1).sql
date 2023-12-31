-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 12:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduprix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`, `firstname`, `lastname`, `image`) VALUES
(1, 'keerti.sharma0201@gmail.com', 'Naukri@12345', 'admin', NULL, NULL, NULL),
(2, 'Admin@gmail.com', '12345', 'admin', NULL, NULL, NULL),
(3, 'r@gmail.com', '123', NULL, 'Roli', 'Maurya', 'https://w7.pngwing.com/pngs/831/88/png-transparent-user-profile-computer-icons-user-interface-mystique-miscellaneous-user-interface-design-smile-thumbnail.png'),
(4, 'm@gmail.com', '123456', NULL, 'U', 'Maurya', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Finance', 1),
(2, 'Development', 1),
(3, 'Investment', 1),
(4, 'Marketing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `curicullum`
--

CREATE TABLE `curicullum` (
  `id` int(11) NOT NULL,
  `curi_id` int(11) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curicullum`
--

INSERT INTO `curicullum` (`id`, `curi_id`, `question`, `answer`) VALUES
(1, 1, 'What is HTML ?', 'HTML is Stand for HYPER TEXT MARKUP LANGUAGE'),
(2, 1, 'What is HTML TAG?', 'HTML Tag is Use for Web Design !'),
(3, 2, 'Design A Web Page Using HTML ?', 'Design Complete in WEb Pageb!'),
(4, 3, 'What is Finance ?', 'Finance is Finance !'),
(5, 4, 'HTML Basic', 'This is html basic.'),
(6, 5, 'HTML Editor', 'This is html editor.'),
(7, 6, 'Finance Basic.', 'This is Finance Basic.'),
(8, 7, 'Finance Introduction', 'This is finance introduction'),
(9, 8, 'CSS Basic', 'This is CSS basic.'),
(10, 8, 'CSS Flexbox.', 'This is css flexbox.'),
(11, 10, 'PHP Function?', 'This is php function.'),
(12, 11, 'Php array', 'This is php array'),
(14, 9, 'CSS background', 'This is css background.'),
(15, 12, 'What is investment advance?', 'This is envestment advance.'),
(16, 12, 'What is investment?', 'This is investment.'),
(17, 13, 'What is investment advance 2?', 'this is investment advance 2.'),
(18, 14, 'What is advance finance 1?', 'This is advance finance.'),
(19, 15, 'What is finance advance 2?', 'This is finance advance 2.'),
(20, 16, 'What is advance marketing?', 'This is advance marketing.'),
(21, 17, 'What is marketing advance 2?', 'This is marketing advance2.'),
(22, 18, 'What is marketing1?', 'This is marketing1.'),
(23, 19, 'What is Marketing2?', 'This is Marketing2.'),
(24, 20, 'What is investment1?', 'This is investment.'),
(25, 21, 'What is investment2?', 'this is invesment2.');

-- --------------------------------------------------------

--
-- Table structure for table `curicullum_title`
--

CREATE TABLE `curicullum_title` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curicullum_title`
--

INSERT INTO `curicullum_title` (`id`, `post_id`, `title`) VALUES
(4, 1, 'HTML FIRST DAY '),
(5, 1, 'HTML SECOUND DAY'),
(6, 2, 'FINANCE FIRST DAY'),
(7, 2, 'FINANCE SECOUND DAY'),
(8, 3, 'CSS FIRST DAY'),
(9, 3, 'CSS SECOUND DAY'),
(10, 4, 'PHP FIRST DAY'),
(11, 4, 'PHP SECOUND DAY'),
(12, 12, 'INVESTadvace1'),
(13, 12, 'INVESTMENT advance2'),
(14, 11, 'FIENANCEADVANCE1'),
(15, 11, 'FINANCE advance2'),
(16, 10, 'MARKETINGADVANCE1'),
(17, 10, 'MARKETING ADVANCE2'),
(18, 8, 'MARKETING1'),
(19, 8, 'MARKETING2'),
(20, 7, 'INVESTMENT1'),
(21, 7, 'INVESTMENT2');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `lebal` varchar(200) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `post_date` varchar(15) DEFAULT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `lebal`, `tags`, `desc`, `image`, `post_date`, `category`) VALUES
(1, 1, 'HTML', 'Biggner', 'Table,Span, Division,List Item, Ordered List, Unordered List, Image,Anchor,Paragraph,Heading', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It pp><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.', 'commercial.jpg', '07 Jul 2023', 'development'),
(2, 2, 'Finance', 'Begginner', 'Financial Decisions,Financial Analysis,Investments,Budgeting,Risk Management,Personal Finance', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It pp><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.', 'commercial.jpg', NULL, 'finance'),
(3, 3, 'CSS', 'Advanced', 'fedwfde', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It pp><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.', 'commercial.jpg', '07 Jul 2023', 'development'),
(4, 4, 'PHP', 'Biggner', 'Stock Market,Diversification,Return on Investment (ROI),Asset Allocation,Portfolio Management,Invest', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It pp><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.', 'commercial.jpg', '07 Jul 2023', 'development'),
(7, 3, 'Investment', 'Biggner', 'Table,Span, Division,List Item, Ordered List, Unordered List, Image,Anchor,Paragraph,Heading', '<p>The question ‘what is investment’ is mostly followed by understanding your investment objectives and identifying where to invest. Keeping aside investments in real estate and assets like jewellery and all, when it comes to different instruments, another aspect of understanding ‘what is investment meaning’ is to know about different types of investments. The first refers to equity investments, and the second category includes debt instruments. If your investment objectives match, equity investments can offer greater returns and carry relatively higher risk. While debt instruments are less risky, but offer relatively low returns.</p><p>Further, what is investment meaning can also be understood from the perspective of how they are acquired.</p><p>Following are different types of investments in India:</p><h3><span style=\"color:var(--color-text-primary);\">1. Stocks</span></h3><p><span style=\"color:var(--color-text-primary);\">This includes shares of ownership of any company and helps you earn dividends in return.</span></p><h3><span style=\"color:var(--color-text-primary);\">2. Bonds</span></h3><p><span style=\"color:var(--color-text-primary);\">Wondering what is investment meaning in terms of bonds? It means lending your money to an institution or government, for which you receive fixed interest at regular intervals and also the face value upon maturity.</span></p>', '360_F_152341497_kpDnYTNUFg6Tk2zeaQG9gsnBBbLbQgl0.jpg', '20 Jul 2023', 'investment'),
(8, 4, 'Marketing', 'Biggner', 'Stock Market,Diversification,Return on Investment (ROI),Asset Allocation,Portfolio Management,Invest', '<p>This is Marketing.</p>', 'Scope-of-Marketing.png', '20 Jul 2023', 'Marketing'),
(10, 4, 'Marketing Advance', 'Biggner', 'Stock Market,Diversification,Return on Investment (ROI),Asset Allocation,Portfolio Management,Invest', '<p>This is advance marketing.</p>', 'Scope-of-Marketing.png', '20 Jul 2023', 'marketing'),
(11, 1, 'FinanceAdvance', 'Biggner', 'Financial Decisions,Financial Advice,Financial Advice,Financial Analysis,Retirement Planning,Saving,', '<p>This is a Finance.</p>', '360_F_152341497_kpDnYTNUFg6Tk2zeaQG9gsnBBbLbQgl0.jpg', '20 Jul 2023', 'finance'),
(12, 3, 'Investment Advance', 'Biggner', 'Financial Decisions,Financial Advice,Financial Advice,Financial Analysis,Retirement Planning,Saving,', '<p>This is investment Advance</p>', '360_F_152341497_kpDnYTNUFg6Tk2zeaQG9gsnBBbLbQgl0.jpg', '20 Jul 2023', 'investment'),
(13, 2, 'Javascript', 'Biggner', 'Financial Decisions,Financial Advice,Financial Advice,Financial Analysis,Retirement Planning,Saving,', '<p>this is Javascript.</p><p>&nbsp;</p>', 'html.jpg', '21 Jul 2023', 'development');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `quiz` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `quizid`, `quiz`) VALUES
(1, 1, 'Quiz 11'),
(2, 2, 'Quiz 21'),
(3, 3, 'Quiz31'),
(4, 4, 'Quiz41'),
(5, 2, 'Quiz22'),
(6, 1, 'Quiz12'),
(7, 3, 'Quiz32'),
(8, 4, 'Quiz42');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(200) DEFAULT NULL,
  `is_correct` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`option_id`, `question_id`, `option_text`, `is_correct`) VALUES
(1, 1, 'Hypertext Markup language', 1),
(2, 1, 'h', 0),
(3, 1, 't', 0),
(4, 1, 'm', 0),
(5, 2, 'Cascading Style Sheet ', 1),
(6, 2, 'c', 0),
(7, 2, 's', 0),
(8, 2, 's', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`question_id`, `question_text`) VALUES
(1, 'What is HTML?'),
(2, 'What is CSS?'),
(3, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(11, 'Urmila', 'Maurya', 'a@gmail.com', '1'),
(12, 'u', 'm', 'm@gmail.com', '2'),
(13, 's', 'm', 'sm@g.c', '3');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `code`) VALUES
(1, 'Jammu and Kashmir', '1'),
(2, 'Himachal Pradesh', '2'),
(3, 'Punjab', '3'),
(4, 'Chandigarh', '4'),
(5, 'Uttarakhand', '5'),
(6, 'Haryana', '6'),
(7, 'Delhi', '7'),
(8, 'Rajasthan', '8'),
(9, 'Uttar Pradesh', '9'),
(10, 'Bihar', '10'),
(11, 'Sikkim', '11'),
(12, 'Arunachal Pradesh', '12'),
(13, 'Nagaland', '13'),
(14, 'Manipur', '14'),
(15, 'Mizoram', '15'),
(16, 'Tripura', '16'),
(17, 'Meghalaya', '17'),
(18, 'Assam', '18'),
(19, 'West Bengal', '19'),
(20, 'Jharkhand', '20'),
(21, 'Odisha', '21'),
(22, 'Chattisgarh', '22'),
(23, 'Madhya Pradesh', '23'),
(24, 'Gujarat', '24'),
(25, 'Daman and Diu', '25'),
(26, 'Dadra and Nagar Haveli', '26'),
(27, 'Maharashtra', '27'),
(28, 'Karnataka', '29'),
(29, 'Goa', '30'),
(30, 'Lakshadweep Islands', '31'),
(31, 'Kerala', '32'),
(32, 'Tamil Nadu', '33'),
(33, 'Pondicherry', '34'),
(34, 'Andaman and Nicobar Islands', '35'),
(35, 'Telangana', '36'),
(36, 'Andhra Pradesh', '37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curicullum`
--
ALTER TABLE `curicullum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curicullum_title`
--
ALTER TABLE `curicullum_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `curicullum`
--
ALTER TABLE `curicullum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `curicullum_title`
--
ALTER TABLE `curicullum_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
