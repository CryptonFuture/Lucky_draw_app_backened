-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 12:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucky_draw`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmployeesName` varchar(255) DEFAULT NULL,
  `Division` varchar(255) DEFAULT NULL,
  `Module` varchar(255) DEFAULT NULL,
  `is_lucky_draw` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `EmployeesName`, `Division`, `Module`, `is_lucky_draw`, `created_at`) VALUES
(2091, 'Naila Ijaz ', 'SAP', 'PS/ REFX', 0, '2025-05-23 10:39:53'),
(2092, 'Muhammad Asif', 'SAP', 'HCM', 0, '2025-05-23 10:39:53'),
(2093, 'Tarek Ahmed Kazem', 'SAP', 'REFX', 0, '2025-05-23 10:39:53'),
(2094, 'SYED SAJJAD RAZA RIZVI', 'SAP', 'SAC- ABAP', 0, '2025-05-23 10:39:53'),
(2095, 'Nawaf Mansour ', 'Admin', 'Admin', 0, '2025-05-23 10:39:53'),
(2096, 'Khaled Mansour ', 'Admin', 'Admin', 0, '2025-05-23 10:39:53'),
(2097, 'Ahmed Mohamed Mohamed Elsayed Elwakeel', 'Design', 'UI/UX', 0, '2025-05-23 10:39:53'),
(2098, 'AWADH ALTAHER ELMAHDI SALEH', 'Enterprise and WEB & APP', 'Infrastructure', 0, '2025-05-23 10:39:53'),
(2099, 'KAMRAN EJAZ', 'Oracle', 'APEX', 0, '2025-05-23 10:39:54'),
(2100, 'Mohammed Huzaifa', 'Data Analytics', 'Power BI', 0, '2025-05-23 10:39:54'),
(2101, 'Muhammad Kamran Riaz', 'Oracle', 'APEX', 0, '2025-05-23 10:39:54'),
(2102, 'Muhammad Salahuddin Manzoor', 'Oracle', 'Database', 0, '2025-05-23 10:39:54'),
(2103, 'Raghid Khalid', 'Marketing & Sales', 'Marketing', 0, '2025-05-23 10:39:54'),
(2104, 'Saleem Altaf', 'Project Management', 'PM', 0, '2025-05-23 10:39:54'),
(2105, 'Tariq Usman', 'Oracle', 'APEX', 0, '2025-05-23 10:39:54'),
(2106, 'Mohamed Babiker Arbab Ali', 'IT', 'Infrastructue CCTV', 0, '2025-05-23 10:39:54'),
(2107, 'Hatem Ahmed El Sayed El Shorbagy', 'IT', 'IT', 0, '2025-05-23 10:39:54'),
(2108, 'Abdul Azeem Butt', 'SAP', 'HCM', 0, '2025-05-23 10:39:54'),
(2109, 'Abdul Samad', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2110, 'Dawood Ismail', 'SAP', 'PP', 0, '2025-05-23 10:39:54'),
(2111, 'Fahad Khalid', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2112, 'Hamda Shahid', 'Project Management', 'PM', 0, '2025-05-23 10:39:54'),
(2113, 'lama sultan alrajeh', 'SAP', 'HCM, Successfactor', 0, '2025-05-23 10:39:54'),
(2114, 'Muhammad Ali', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2115, 'Muhammad Zohaib', 'SAP', 'SD/CX', 0, '2025-05-23 10:39:54'),
(2116, 'Saem/Saim Aftab Ahmed', 'SAP', 'SD-CX', 0, '2025-05-23 10:39:54'),
(2117, 'Shaden Abdullah', 'SAP', 'Project manager', 0, '2025-05-23 10:39:54'),
(2118, 'Shahad abdullah alzahrani', 'SAP', 'Project manager', 0, '2025-05-23 10:39:54'),
(2119, 'Sheraz Jawed', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2120, 'Syed Shoaib Hussain', 'SAP', 'BI/ BW', 0, '2025-05-23 10:39:54'),
(2121, 'Madonna Awad Tawfik', 'SAP', 'CX', 0, '2025-05-23 10:39:54'),
(2122, 'Usman Nadeem', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2123, 'Muhammad Osama Siddiqui', 'Project Management', 'SAP MM, SAP WMS, SAP LE, SAP PM, SAP QM, SAP PP', 0, '2025-05-23 10:39:54'),
(2124, 'Mohammed Imran', 'SAP', 'SAP ARIBA', 0, '2025-05-23 10:39:54'),
(2125, 'Bilal Janjua', 'SAP', 'Ariba', 0, '2025-05-23 10:39:54'),
(2126, 'Hifza Moin', 'SAP', 'SAC', 0, '2025-05-23 10:39:54'),
(2127, 'Hajar Saleh Muhammad Al-Daraa', 'Human Resources', 'HR Management', 0, '2025-05-23 10:39:54'),
(2128, 'Abbas Dossa', 'Enterprise and WEB & APP', 'SQA', 0, '2025-05-23 10:39:54'),
(2129, 'Abdul Ghaffar', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2130, 'Abdul Moiz Siddiqui', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2131, 'Abdul Qadir', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2132, 'Abdullah aftab', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2133, 'Abdullah Muneer', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2134, 'Ahsan Saeed', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2135, 'Aiman Bashir', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2136, 'Aleena Jawaid Shamsi', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2137, 'Ali Riaz', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2138, 'Ammad Zafar', 'Enterprise and WEB & APP', 'PHP', 0, '2025-05-23 10:39:54'),
(2139, 'Annus Rafique', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2140, 'Anousha Anwar(Rabiya Anwar)', 'Marketing & Sales', 'Graphics Designing', 0, '2025-05-23 10:39:54'),
(2141, 'Anum Saba', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2142, 'Arsal Amir', 'SAP', 'SD ', 0, '2025-05-23 10:39:54'),
(2143, 'Asad Bashir', 'SAP', 'PM/ EAM/CS', 0, '2025-05-23 10:39:54'),
(2144, 'Asma Siddique Kukda', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2145, 'Asra Quddusi', 'Enterprise and WEB & APP', 'Overall', 0, '2025-05-23 10:39:54'),
(2146, 'Bilal Ur Rehman', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2147, 'Bilal zafar', 'Project Management', 'PM', 0, '2025-05-23 10:39:54'),
(2148, 'Enza Azhar', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2149, 'Faizan Ahmed', 'Enterprise and WEB & APP', 'AI', 0, '2025-05-23 10:39:54'),
(2150, 'Farhan', 'Admin', 'Admin', 0, '2025-05-23 10:39:54'),
(2151, 'Gopi Chand', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2152, 'Habib UR Rehman', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2153, 'Hafeez Uddin', 'Marketing & Sales', 'Brand', 0, '2025-05-23 10:39:54'),
(2154, 'Hafiz Muhammad Naeem', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2155, 'Hammad Alam', 'SAP', 'HCM', 0, '2025-05-23 10:39:54'),
(2156, 'Hammad Haroon', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2157, 'Haris Shahid', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2158, 'Hiba Siddqiui', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2159, 'Hinna Bozdar', 'Project Management', 'CFO', 0, '2025-05-23 10:39:54'),
(2160, 'Hirar Ali Qureshi', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2161, 'Imran Arshad', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2162, 'Iqra Alam Gir Khan', 'Human Resources', 'HR', 0, '2025-05-23 10:39:54'),
(2163, 'Irfan Ahmed', 'Enterprise and WEB & APP', 'Angular ', 0, '2025-05-23 10:39:54'),
(2164, 'Jahanzaib', 'Enterprise and WEB & APP', 'AI  ', 0, '2025-05-23 10:39:54'),
(2165, 'Jawad Ali', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2166, 'Jawad Pothiawala', 'SAP', 'MM/SD', 0, '2025-05-23 10:39:54'),
(2167, 'Kanwar Muzammil Rohail', 'Enterprise and WEB & APP', 'NODEJS', 0, '2025-05-23 10:39:54'),
(2168, 'Kashif Imran', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2169, 'Kashmala Imran', 'SAP', 'PS', 0, '2025-05-23 10:39:54'),
(2170, 'Maarib Ul Haq Siddiqui', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2171, 'Maria Mehmood', 'SAP', 'PS', 0, '2025-05-23 10:39:54'),
(2172, 'Marya Hayee', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2173, 'Mirza Uzair Ahmed Baig', 'Enterprise and WEB & APP', 'DevOps', 0, '2025-05-23 10:39:54'),
(2174, 'Muhammad Ammar', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2175, 'Moiz Ahmed', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2176, 'Moiz Ahmed', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2177, 'Muhammad Adil', 'Enterprise and WEB & APP', 'AI  ', 0, '2025-05-23 10:39:54'),
(2178, 'Muhammad Adil', 'SAP', 'BASIS/ IT', 0, '2025-05-23 10:39:54'),
(2179, 'Muhammad Afzal', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2180, 'Muhammad Ahsan Jawaid Khan', 'Enterprise and WEB & APP', 'B1/ ERP', 0, '2025-05-23 10:39:54'),
(2181, 'Muhammad Ali', 'Data Analytics', 'Power BI', 0, '2025-05-23 10:39:54'),
(2182, 'Muhammad Anas Muneer', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2183, 'Muhammad Anas Siddiqui', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2184, 'Muhammad Asad Ali Akbar', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2185, 'Muhammad Ayaz', 'SAP', 'PP/QM', 0, '2025-05-23 10:39:54'),
(2186, 'Muhammad Basit', 'Enterprise and WEB & APP', 'SQA', 0, '2025-05-23 10:39:54'),
(2187, 'Muhammad Bilal Sabir', 'Enterprise and WEB & APP', 'PM/ Documentation', 0, '2025-05-23 10:39:54'),
(2188, 'Muhammad Fahad', 'IT', 'IT', 0, '2025-05-23 10:39:54'),
(2189, 'Muhammad Farrukh Aslam', 'SAP', 'Analytics', 0, '2025-05-23 10:39:54'),
(2190, 'Muhammad Hammad Khalid', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2191, 'Muhammad Husnain', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2192, 'Muhammad Komail', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2193, 'Muhammad Moiz Ullah', 'SAP', 'MM ', 0, '2025-05-23 10:39:54'),
(2194, 'Muhammad Mustafa', 'Accounts & Finance', 'ADMIN', 0, '2025-05-23 10:39:54'),
(2195, 'Muhammad Naveed Murtaza Lakhani', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2196, 'Muhammad Rafique', 'SAP', 'PM/ QM/ EAM/CS', 0, '2025-05-23 10:39:54'),
(2197, 'Muhammad Raheel', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2198, 'Muhammad Rameez', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2199, 'Muhammad Shayan Khan Sherwani', 'Enterprise and WEB & APP', 'SAP SMEs', 0, '2025-05-23 10:39:54'),
(2200, 'Muhammad Shoeb', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2201, 'Muhammad Tahir', 'Enterprise and WEB & APP', 'NODEJS', 0, '2025-05-23 10:39:54'),
(2202, 'Muhammad Talha', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2203, 'Muhammad Talha Barlas', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2204, 'Muhammad Ubaid', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2205, 'Muhammad Umar Usman', 'Oracle', 'APEX', 0, '2025-05-23 10:39:54'),
(2206, 'Muhammad Umer', 'Enterprise and WEB & APP', 'B1', 0, '2025-05-23 10:39:54'),
(2207, 'Muhammad Waqas Zahid', 'SAP', 'PM/MII/CS', 0, '2025-05-23 10:39:54'),
(2208, 'Muhammad Waqass Aslam', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2209, 'Muhammad Zamran', 'Enterprise and WEB & APP', 'Full stack', 0, '2025-05-23 10:39:54'),
(2210, 'Muneeb Tahir', 'SAP', 'PS/PPM/CO/FM', 0, '2025-05-23 10:39:54'),
(2211, 'Musaddiq Ali Sadiq', 'Enterprise and WEB & APP', 'SQA', 0, '2025-05-23 10:39:54'),
(2212, 'Mussawar Ali', 'Marketing & Sales', 'Sales', 0, '2025-05-23 10:39:54'),
(2213, 'Muzaina Mateen', 'Human Resources', 'Business Consultancy/ HR', 0, '2025-05-23 10:39:54'),
(2214, 'Nabeela Rehman Wazir', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2215, 'Nasar Ahmed', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2216, 'Noman Ali', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2217, 'Noor Muhammad', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2218, 'Obaid Naeem Chishti', 'Admin', 'General Operation', 0, '2025-05-23 10:39:54'),
(2219, 'OBAID ULLAH SHAHAB GHOURI', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2220, 'Owais Ali Khan', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2221, 'Qurrat Ul Ain', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2222, 'RAFIA AHSAN', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2223, 'Rehmat Ali', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2224, 'Saqib Saleem', 'Enterprise and WEB & APP', 'android', 0, '2025-05-23 10:39:54'),
(2225, 'Shah Zaib', 'Admin', 'ADMIN', 0, '2025-05-23 10:39:54'),
(2226, 'Shahzada Muhammad Ahmed', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2227, 'Shahzaib Hassan', 'SAP', 'PP', 0, '2025-05-23 10:39:54'),
(2228, 'shahzaib khowaja', 'Enterprise and WEB & APP', 'Devops', 0, '2025-05-23 10:39:54'),
(2229, 'Shahzil', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2230, 'Sheeraz Akram Shaikh', 'Enterprise and WEB & APP', 'RFID', 0, '2025-05-23 10:39:54'),
(2231, 'Sheroz Jawed', 'Design', 'Graphics designer', 0, '2025-05-23 10:39:54'),
(2232, 'Shiza Imtiaz', 'Enterprise and WEB & APP', 'React Native', 0, '2025-05-23 10:39:54'),
(2233, 'Shoaib', 'Enterprise and WEB & APP', 'PHP', 0, '2025-05-23 10:39:54'),
(2234, 'Sohaib Ahmed', 'Enterprise and WEB & APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2235, 'Sufiyan Ahmed Khan', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2236, 'Sumaiya Aftab', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2237, 'Syed Aizaz Hussain', 'Design', 'UI/UX', 0, '2025-05-23 10:39:54'),
(2238, 'Syed Ali Yasir', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2239, 'Syed Anwarullah Masood', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2240, 'Syed Meesam Ali Naqvi', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2241, 'Syed Muhammad Ahsan', 'SAP', 'PP', 0, '2025-05-23 10:39:54'),
(2242, 'Syed Osama Hussain', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2243, 'Syed rabees ali', 'SAP', 'FICO', 0, '2025-05-23 10:39:54'),
(2244, 'Syed Roshan Ali Shah', 'SAP', 'BASIS', 0, '2025-05-23 10:39:54'),
(2245, 'Syed Subhan Uddin', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2246, 'Taimoor Khawaja ', 'SAP', 'overall', 0, '2025-05-23 10:39:54'),
(2247, 'Taimoor yar khan', 'SAP', 'ABAP', 0, '2025-05-23 10:39:54'),
(2248, 'Talal Alam Khan', 'SAP', 'MM ', 0, '2025-05-23 10:39:54'),
(2249, 'Tayyaba Ahmed faruqui', 'SAP', 'HCM', 0, '2025-05-23 10:39:54'),
(2250, 'Usaid Bin Rehan', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2251, 'Vinay kumar', 'Enterprise and WEB & APP', 'Ui/UX', 0, '2025-05-23 10:39:54'),
(2252, 'Vinod', 'Admin', 'Admin', 0, '2025-05-23 10:39:54'),
(2253, 'Waleed', 'SAP', 'SD ', 0, '2025-05-23 10:39:54'),
(2254, 'Zahid Mehmood', 'SAP', 'PP', 0, '2025-05-23 10:39:54'),
(2255, 'Zainab', 'Enterprise and WEB & APP', 'Mern ', 0, '2025-05-23 10:39:54'),
(2256, 'Zaman Riaz', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2257, 'ZAYAN', 'Enterprise and WEB & APP', 'NODEJS', 0, '2025-05-23 10:39:54'),
(2258, 'Zeeshan', 'Enterprise and WEB & APP', 'RFID', 0, '2025-05-23 10:39:54'),
(2259, 'Zeeshan Ali', 'Enterprise and WEB & APP', 'Data Analyst', 0, '2025-05-23 10:39:54'),
(2260, 'Khawar Rehman Khan', 'SAP', 'SCM', 0, '2025-05-23 10:39:54'),
(2261, 'Muhammad Kashaf', 'Enterprise and WEB & APP', 'DevOps', 0, '2025-05-23 10:39:54'),
(2262, 'Muzamil', 'Enterprise and WEB & APP', '.NET', 0, '2025-05-23 10:39:54'),
(2263, 'Taha Alam Khan', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2264, 'Faheem Ahmed', 'Enterprise and WEB & APP', 'SQA', 0, '2025-05-23 10:39:54'),
(2265, 'Sandeela Shameen', 'Enterprise and WEB & APP', 'SQA', 0, '2025-05-23 10:39:54'),
(2266, 'Syed Talha Ahmed Kazmi', 'Enterprise and WEB & APP', 'Software Development (.Net)', 0, '2025-05-23 10:39:54'),
(2267, 'Mustafa Ali', 'Design', 'Figma', 0, '2025-05-23 10:39:54'),
(2268, 'Rameel Qureshi', 'Enterprise and WEB & APP', 'Research & Development', 0, '2025-05-23 10:39:54'),
(2269, 'Syed Muhammad Hanzala Hashmi', 'Data Analytics', 'Module', 0, '2025-05-23 10:39:54'),
(2270, 'Zeeshan', 'Enterprise and WEB & APP', 'Selenium, JAVA, JEST', 0, '2025-05-23 10:39:54'),
(2271, 'Muhammad Sameer', 'Enterprise and WEB & APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2272, 'Abdul faizan', 'Enterprise & WEBs n APP', 'MERN', 0, '2025-05-23 10:39:54'),
(2273, 'Syed Tanees Ahmed', 'Enterprise & WEBs n APP', 'Associate Angular Developer', 0, '2025-05-23 10:39:54'),
(2274, 'Mehar Khan Niazi', 'Enterprise & WEBs n APP', 'Artificial Intelligence', 1, '2025-05-23 10:39:54'),
(2275, 'Aneel', 'Enterprise & WEBs n APP', 'Back end (DotNet)', 0, '2025-05-23 10:39:54'),
(2276, 'Kashif Ali', 'Enterprise & WEBs n APP', '.Net Developer', 0, '2025-05-23 10:39:54'),
(2277, 'Muhammad Saad Ali Khan', 'Enterprise & WEBs n APP', 'MEAN MERN', 0, '2025-05-23 10:39:54'),
(2278, 'Abdul Rub', 'Enterprise & WEBs n APP', 'Backend', 0, '2025-05-23 10:39:54'),
(2279, 'Maisam Hussain', 'Enterprise & WEBs n APP', 'Devops, cloud', 0, '2025-05-23 10:39:54'),
(2280, 'Muhammad Salman', 'SAP', 'Material Management', 0, '2025-05-23 10:39:54'),
(2281, 'Syeda Fatima Ashraf', 'Enterprise & WEBs n APP', 'DevOps', 0, '2025-05-23 10:39:54'),
(2282, 'Qadir Baksh', 'N/A', 'N/A', 0, '2025-05-23 10:39:54'),
(2283, 'Naseer', 'N/A', 'N/A', 0, '2025-05-23 10:39:54'),
(2284, 'Ali Ahmed Shaikh', 'Enterprise & WEBs n APP', 'Azure/GCP Data Engineering', 0, '2025-05-23 10:39:54'),
(2285, 'Syed Muhammad Arsalan', 'Enterprise & WEBs n APP', 'ERP', 0, '2025-05-23 10:39:54'),
(2286, 'Haris Bashir ', 'Enterprise & WEBs n APP', 'Flutter ', 0, '2025-05-23 10:39:54'),
(2287, 'Muhammad Osama', 'SAP', 'SD', 0, '2025-05-23 10:39:54'),
(2288, 'Muhammad Hamza Altaf', 'Enterprise & WEBs n APP', '.NET', 0, '2025-05-23 10:39:54'),
(2289, 'Amna Faisal', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2290, 'Kashaf Kainat Younas', 'Enterprise & WEBs n APP', '.Net ', 0, '2025-05-23 10:39:54'),
(2291, 'Muhammad Bilal Hammad', 'SAP', 'MM', 0, '2025-05-23 10:39:54'),
(2292, 'Syed Muhammad Taha Hassan', 'Enterprise & WEBs n APP', 'Python', 0, '2025-05-23 10:39:54'),
(2293, 'Muhammad Fahad Idrees', 'SAP', 'HCM', 0, '2025-05-23 10:39:54'),
(2294, 'Syed Muhammad Zia Ul Hassan', 'SAP', 'SAC,SAP Datashere', 0, '2025-05-23 10:39:54'),
(2295, 'Faraz Ahmed Quddusi', 'Enterprise and WEB & APP', 'Chief ', 0, '2025-05-23 10:39:54'),
(2296, 'Hafiz Yahya Bin Saeed', 'SAP', 'SAP ABAP', 0, '2025-05-23 10:39:54'),
(2297, 'Salman Ali Abbas', 'SAP', 'SAP FICO', 0, '2025-05-23 10:39:54'),
(2298, 'Syed Akhlas Hussain Zaidi', 'SAP', 'SAP MM', 0, '2025-05-23 10:39:54'),
(2299, 'Syed Muhammad Majid Shah', 'SAP', 'SAP MM', 0, '2025-05-23 10:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '20240417081926_sales_for_comments.js', 1, '2025-05-23 07:53:10'),
(2, '20250311040947_uploaded_files.js', 1, '2025-05-23 07:53:10'),
(3, '20250523074825_employees.js', 1, '2025-05-23 07:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations_lock`
--

CREATE TABLE `migrations_lock` (
  `index` int(10) UNSIGNED NOT NULL,
  `is_locked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations_lock`
--

INSERT INTO `migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_for_comments`
--

CREATE TABLE `sales_for_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `Transactionid` varchar(255) DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `Store` varchar(255) DEFAULT NULL,
  `POS` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `BusinessDate` date DEFAULT NULL,
  `Total` float(8,2) DEFAULT NULL,
  `is_lucky_draw` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `file_name`, `uploaded_at`) VALUES
(11, 'Employee.xlsx', '2025-05-23 10:39:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations_lock`
--
ALTER TABLE `migrations_lock`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `sales_for_comments`
--
ALTER TABLE `sales_for_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploaded_files _file_name_unique` (`file_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2300;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations_lock`
--
ALTER TABLE `migrations_lock`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_for_comments`
--
ALTER TABLE `sales_for_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
