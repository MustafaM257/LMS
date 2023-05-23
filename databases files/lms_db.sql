-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 09:47 PM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'admin', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_duration` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
('ART6561', 'Artificial Intelligence And Machine Learning', 'Discover The Concepts And Techniques Of Ai And Ml And How To Implement Them In Python.', 'Jill Doe', 'artificial_intelligence_and_machine_learning_art6561.png', '16 Weeks', 200, 300),
('DAT3145', 'Data Science With R', 'Learn How To Use R Programming Language To Clean, Analyze And Visualize Data.', 'Jack Smith', 'data_science_with_r_dat3145.png', '12 Weeks', 200, 250),
('FUL6177', 'Full Stack Web Development', 'Learn How To Build Complete Web Applications Using Html, Css, Javascript, And Web Frameworks Like React And Node.js.', 'Jessica Doe', 'full_stack_web_development_ful6177.png', '24 Weeks', 350, 400),
('INT1456', 'Introduction To Data Structures And Algorithms', 'Learn About Various Data Structures And Algorithms And How To Implement Them In Python.', 'James Smit', 'introduction_to_data_structures_and_algorithms_int1456.png', '10 Weeks', 175, 200),
('INT6651', 'Intro To Python Programming', 'This Course Will Teach You The Basics Of Python Programming And Prepare You For More Advanced Programming Concepts.', 'John Smith', 'intro_to_python_programming_int6651.png', '10 Weeks', 150, 200),
('JAV5287', 'Javascript For Beginners', 'Learn The Fundamentals Of Javascript And How To Use It In Web Development.', 'Jane Doe', 'javascript_for_beginners_jav5287.png', '8 Weeks', 120, 150);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `amount`, `order_date`) VALUES
(3, 'ORDS27252327', 'johndoe123@example.com', 'JAV5287', 120, '2023-01-23 00:00:00'),
(4, 'ORDS67433938', 'emilyd@example.com', 'FUL6177', 350, '2023-01-23 00:00:00'),
(5, 'ORDS49006058', 'emilyd@example.com', 'DAT3145', 200, '2023-01-23 00:00:00'),
(6, 'ORDS84075025', 'matthewr@example.com', 'FUL6177', 350, '2023-01-23 00:00:00'),
(9, 'ORDS31618915', 'matthewr@example.com', 'INT6651', 150, '2023-01-23 00:00:00'),
(10, 'ORDS84608852', 'matthewr@example.com', 'ART6561', 200, '2023-01-23 00:00:00'),
(11, 'ORDS47181878', 'ashleyt@example.com', 'JAV5287', 120, '2023-01-23 00:00:00'),
(12, 'ORDS98516504', 'ashleyt@example.com', 'INT1456', 175, '2023-01-23 00:00:00'),
(16, 'ORDS25488679', 'ashleyt@example.com', 'INT6651', 150, '2023-01-23 00:00:00'),
(17, 'ORDS63339449', 'ashleyt@example.com', 'FUL6177', 350, '2023-01-23 00:00:00'),
(18, 'ORDS99870084', 'ashleyt@example.com', 'DAT3145', 200, '2023-01-23 00:00:00'),
(19, 'ORDS11494905', 'janesmith456@example.com', 'ART6561', 200, '2023-01-23 00:00:00'),
(20, 'ORDS11223916', 'janesmith456@example.com', 'JAV5287', 120, '2023-01-23 00:00:00'),
(21, 'ORDS97592031', 'janesmith456@example.com', 'FUL6177', 350, '2023-01-23 00:00:00'),
(22, 'ORDS42318133', 'michaelj@example.com', 'JAV5287', 120, '2023-01-23 00:00:00'),
(23, 'ORDS4581978', 'michaelj@example.com', 'FUL6177', 350, '2023-01-23 00:00:00'),
(24, 'ORDS90349150', 'michaelj@example.com', 'INT6651', 150, '2023-01-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'Intro to Python Programming - I had some previous experience with Python, but this course helped me solidify my understanding of the language.', 1),
(2, 'Data science with R - The course was a bit overwhelming at times, but I appreciated the practical applications of R to real-world data science problems.', 5),
(3, 'Artificial intelligence and machine learning -  I found the course to be very engaging and the instructor was very knowledgeable about Ai and ML.', 4),
(4, 'Introduction to data structures and algorithms - The course was a bit too fast-paced for me and I struggled to keep up with the material.', 3),
(5, 'Full stack web development - The course was a bit too broad and I would have preferred more specialized focus on a particular aspect of web development.', 6),
(6, 'Javascript for beginners - This course was the perfect introduction to JavaScript for me. The instructor\'s explanations were clear and easy to understand.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lesson_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lesson_link` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Introduction to Python', 'In this lesson, we will learn about the history of Python, its features, and how to set up a development environment.', 'introduction_to_python_int6651.png', 'INT6651', 'Intro To Python Programming'),
(2, 'Python Variables and Data Types', 'In this lesson, we will learn about different data types in Python and how to use variables to store and manipulate data.', 'python_variables_and_data_types_int6651.png', 'INT6651', 'Intro To Python Programming'),
(3, 'Control Flow and Loops', 'In this lesson, we will learn how to control the flow of our program using conditional statements and loops in Python.', 'control_flow_and_loops_int6651.png', 'INT6651', 'Intro To Python Programming'),
(4, 'Introduction to AI and ML', 'In this lesson, we will learn about the history of AI and ML, its features and how to set up a development environment.', 'introduction_to_ai_and_ml_art4144.png', 'ART4144', 'Artificial Intelligence And Machine Learning'),
(5, 'Supervised and Unsupervised Learning', 'In this lesson, we will learn about the different types of AI and ML models and when to use them.', 'supervised_and_unsupervised_learning_art4144.png', 'ART4144', 'Artificial Intelligence And Machine Learning'),
(6, 'Deep Learning', 'In this lesson, we will learn about deep learning and how to implement deep learning models using Python.', 'deep_learning_art4144.png', 'ART4144', 'Artificial Intelligence And Machine Learning'),
(7, 'Introduction to R', 'In this lesson, we will learn about the history of R, its features, and how to set up a development environment.', 'introduction_to_r_dat3145.png', 'DAT3145', 'Data Science With R'),
(8, 'Data Cleaning and Exploration', 'In this lesson, we will learn how to clean and explore data using R programming language.', 'data_cleaning_and_exploration_dat3145.png', 'DAT3145', 'Data Science With R'),
(9, 'Data Visualization', 'In this lesson, we will learn how to create various data visualizations in R to better understand and communicate data insights.', 'data_visualization_dat3145.png', 'DAT3145', 'Data Science With R'),
(10, 'Introduction to JavaScript', 'In this lesson, we will learn about the history of JavaScript, its features, and how to set up a development environment.', 'introduction_to_javascript_jav5287.png', 'JAV5287', 'Javascript For Beginners'),
(11, 'JavaScript Variables and Data Types', 'In this lesson, we will learn about different data types in JavaScript and how to use variables to store and manipulate data.', 'javascript_variables_and_data_types_jav5287.png', 'JAV5287', 'Javascript For Beginners'),
(12, 'Control Flow and Loops', 'In this lesson, we will learn how to control the flow of our program using conditional statements and loops in JavaScript.', 'control_flow_and_loops_jav5287.jpeg', 'JAV5287', 'Javascript For Beginners'),
(13, 'Introduction to Data Structures', 'In this lesson, we will learn about the different types of data structures and when to use them.', 'introduction_to_data_structures_int1456.png', 'INT1456', 'Introduction To Data Structures And Algorithms'),
(14, 'Sorting Algorithms', 'In this lesson, we will learn about various sorting algorithms and how to implement them in Python.', 'sorting_algorithms_int1456.png', 'INT1456', 'Introduction To Data Structures And Algorithms'),
(15, 'Searching Algorithms', 'In this lesson, we will learn about different searching algorithms and how to implement them in Python.', 'searching_algorithms_int1456.png', 'INT1456', 'Introduction To Data Structures And Algorithms'),
(16, 'Introduction to HTML, CSS and JavaScript', 'In this lesson, we will learn the basics of HTML, CSS, and JavaScript and how to use them to create web pages.', 'introduction_to_html_css_and_javascript_ful6177.png', 'FUL6177', 'Full Stack Web Development'),
(17, 'React and Node.js', 'In this lesson, we will learn about React, a JavaScript library for building user interfaces and Node.js, a JavaScript runtime for building server-side applications.', 'react_and_nodejs_ful6177.png', 'FUL6177', 'Full Stack Web Development'),
(18, 'Full Stack Web Development Project', 'In this lesson, we will put all of the concepts learned throughout the course into practice by building a complete full stack web application using HTML, CSS, JavaScript, React, and Node.js.', 'full_stack_web_development_project_ful6177.png', 'FUL6177', 'Full Stack Web Development'),
(19, 'Introduction to AI and ML', 'In this lesson, we will learn about the history of AI and ML, its features and how to set up a development environment.', 'introduction_to_ai_and_ml_art6561.png', 'ART6561', 'Artificial Intelligence And Machine Learning'),
(20, 'Supervised and Unsupervised Learning', 'In this lesson, we will learn about the different types of AI and ML models and when to use them.', 'supervised_and_unsupervised_learning_art6561.png', 'ART6561', 'Artificial Intelligence And Machine Learning'),
(21, 'Deep Learning', 'In this lesson, we will learn about deep learning and how to implement deep learning models using Python.', 'deep_learning_art6561.png', 'ART6561', 'Artificial Intelligence And Machine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `stu_occu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `password_hash`, `stu_occu`, `stu_img`) VALUES
(0, 'Mustafa', 'mustafa@mustafa.com', 'mustafa', '$2y$12$vrsjtdKePadliYV3nNmAnOSkq9NDopTafyoSGWHy76B72N0ow9ZhW', '', 'mustafa_0.png'),
(1, 'John Doe', 'johndoe123@example.com', 'g7#uF2Kl', '$2y$12$Vhg1vPc4MS.sSH4d9JkE8eox6noq/8IG28SFrPDhwQ3BTzpa4unWu', 'Developer - Acme Inc', 'john_doe_1.png'),
(2, 'Jane Smith', 'janesmith456@example.com', 'b9@tF4Lm', '$2y$12$izb.9tbl9j/b0BSkDLUTRO5UTKr4GTnJMQ00i0klM4q8IoS6N0Qai', 'Designer - Beta Corp', 'jane_smith_2.png'),
(3, 'Michael Johnson', 'michaelj@example.com', 'j3#kL7Nb', '$2y$12$qvxQe01nMy6/dG8Y1B/wperYm.3wowZj1HYqJkYcKW3oZFD63ALyy', 'Data Scientist - Gamma Industries', 'michael_johnson_3.png'),
(4, 'Emily Davis', 'emilyd@example.com', 'd6@fG9Hj', '$2y$12$DwGCnN3FQdkmU24i7cvjrOC1tdAr2N5Lt0QXnxp6vMjYoJS2nFsSW', 'Project Manager - Delta Solutions', 'emily_davis_4.png'),
(5, 'Matthew Rodriguez', 'matthewr@example.com', 'r8#tJ6Mb', '$2y$12$y7aZDOBKK15GHZSBUesqYuQV3qeSkuMHwI.3T4n19RCPMyJ5Z8hbS', 'Software Engineer - Epsilon Technologies', 'matthew_rodriguez_5.png'),
(6, 'Ashley Thompson', 'ashleyt@example.com', 't5@pN7Lk', '$2y$12$Ts.AeOVyzvchzttHMkyAAuDriUk22GIba0HmfKQXx1KqMRuleD8XC', 'Product Manager - Zeta Systems', 'ashley_thompson_6.png');

COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;