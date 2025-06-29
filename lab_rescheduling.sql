-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 11:45 PM
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
-- Database: `lab_rescheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`) VALUES
(81, 'Anantharajah Kaneswaran', 'kanesh@eng.jfn.ac.lk'),
(82, 'WNS Fonseka', 'sampath@eng.jfn.ac.lk'),
(83, 'BWDMSB Yatawara', 'yatawara@eng.jfn.ac.lk'),
(84, 'Lakcika Punitharasa', 'lakcika@eng.jfn.ac.lk'),
(85, 'Default_admin', 'dewmikasenarathna017@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `status` enum('Present','Absent') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `schedule_id`, `status`) VALUES
(1, 5, 1, 'Present'),
(2, 6, 1, 'Present'),
(3, 7, 1, 'Present'),
(4, 8, 1, 'Present'),
(5, 9, 1, 'Present'),
(6, 10, 1, 'Absent'),
(7, 11, 1, 'Present'),
(8, 13, 1, 'Present'),
(9, 14, 1, 'Absent'),
(10, 15, 1, 'Present'),
(11, 16, 1, 'Present'),
(12, 17, 1, 'Present'),
(13, 17, 1, 'Present'),
(14, 18, 1, 'Absent'),
(15, 19, 1, 'Present'),
(16, 20, 1, 'Present'),
(17, 21, 1, 'Present'),
(18, 22, 1, 'Present'),
(19, 22, 1, 'Present'),
(20, 23, 1, 'Present'),
(21, 24, 1, 'Present'),
(22, 25, 1, 'Absent'),
(23, 26, 1, 'Absent'),
(24, 27, 1, 'Present'),
(25, 28, 1, 'Present'),
(26, 29, 1, 'Present'),
(27, 30, 1, 'Absent'),
(28, 33, 1, 'Present'),
(29, 36, 1, 'Present'),
(30, 37, 1, 'Present'),
(31, 40, 1, 'Present'),
(32, 41, 1, 'Present'),
(33, 42, 1, 'Present'),
(34, 43, 1, 'Present'),
(35, 44, 1, 'Present'),
(36, 45, 1, 'Present'),
(37, 46, 1, 'Absent'),
(38, 47, 1, 'Present'),
(39, 48, 1, 'Present'),
(40, 49, 1, 'Present'),
(41, 50, 1, 'Present'),
(42, 50, 1, 'Present'),
(43, 51, 1, 'Present'),
(44, 52, 1, 'Present'),
(45, 53, 1, 'Present'),
(46, 54, 1, 'Present'),
(47, 54, 1, 'Present'),
(48, 87, 4, 'Present'),
(49, 86, 4, 'Present'),
(50, 87, 12, 'Present'),
(51, 87, 21, 'Present'),
(53, 87, 38, 'Absent'),
(54, 5, 41, 'Present'),
(55, 53, 41, 'Present'),
(56, 15, 41, 'Present'),
(57, 36, 41, 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`) VALUES
(1, 'Computer'),
(2, 'Electrical and Electronics'),
(3, 'Civil and Environmental'),
(4, 'Mechanical and Process'),
(5, 'Interdisciplinary Studies'),
(6, 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `lab_id` int(11) NOT NULL,
  `lab_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`lab_id`, `lab_name`, `location`, `department_id`) VALUES
(1, 'CL1', 'Com - Ground Floor', 1),
(2, 'CL2', 'Com - First Floor', 1),
(3, 'CL3', 'Com - First Floor', 1),
(4, 'CL4', 'Com - Ground Floor', 1),
(5, 'CL5', 'Com - First Floor', 1),
(6, 'CRL', 'EE - Ground Floor', 2),
(7, 'EL', 'EE - First Floor', 2),
(8, 'ML', 'EE - Second Floor', 2),
(9, 'SL', 'EE - Second Floor', 2),
(10, 'PL', 'EE - Ground Floor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lab_instructor`
--

CREATE TABLE `lab_instructor` (
  `instructor_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_instructor`
--

INSERT INTO `lab_instructor` (`instructor_id`, `name`, `email`, `department_id`) VALUES
(55, 'Sharmini Premaratnam', 'sharmini@eng.jfn.ac.lk', 1),
(57, 'Jananya Sivasubramaniyam', 'jananya@eng.jfn.ac.lk', 1),
(58, 'Nithurjini Colin Vigneswaran', 'nithurjini@eng.jfn.ac.lk', 1),
(61, 'Shankavy Utheyasanther', 'shankavy@eng.jfn.ac.lk', 1),
(62, 'Mousiya Karunakaran', 'mousiya@eng.jfn.ac.lk', 1),
(63, 'Rajana Lankanathan', 'rajana@eng.jfn.ac.lk', 1),
(64, 'Punyamoorthy Vegashkar', 'vegashkar@eng.jfn.ac.lk', 2),
(67, 'Sathiyamoorthy Pavithran', 'pavithran@eng.jfn.ac.lk', 2),
(68, 'Kuganya Mahendrarajah', 'kuganya@eng.jfn.ac.lk', 2),
(74, 'P Niroj', 'niroj@eng.jfn.ac.lk', 2),
(76, 'Sownthararasa Jathurshan', 'jathurshan@eng.jfn.ac.lk', 2),
(79, 'Default', 'dewmikasenarathna117@gmail.com', 1),
(148, 'Mohammadh Jawusi Fathima', 'aasifamjf@eng.jfn.ac.lk', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lab_schedule`
--

CREATE TABLE `lab_schedule` (
  `schedule_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` varchar(50) DEFAULT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_schedule`
--

INSERT INTO `lab_schedule` (`schedule_id`, `subject_id`, `date`, `time_slot`, `lab_id`, `instructor_id`, `semester_id`, `department_id`) VALUES
(1, 52, '2025-03-24', '8.00am - 11.00am', 9, 64, 5, 2),
(2, 48, '2025-03-25', '8.00am - 11.00am', 2, 62, 5, 1),
(3, 48, '2025-04-01', '8.00am - 11.00am', 2, 55, 5, 1),
(4, 45, '2025-04-02', '8.00am - 11.00am', 8, 67, 5, 2),
(7, 48, '2025-04-08', '9.00am - 12.00pm', 2, 63, 5, 1),
(8, 52, '2025-04-10', '9.00am - 12.00pm', 9, 76, 5, 2),
(9, 47, '2025-04-11', '8.00am - 11.00am', 2, 55, 5, 1),
(10, 48, '2025-04-22', '9.00am - 12.00pm', 2, 62, 5, 1),
(11, 49, '2025-04-24', '8.00am - 11.00am', 2, 68, 5, 1),
(12, 45, '2025-04-25', '8.00am - 11.00pm', 8, 67, 5, 2),
(13, 44, '2025-04-28', '8.00am - 11.00am', 9, 64, 5, 2),
(14, 48, '2025-04-29', '9.00am - 12.00pm', 2, 55, 5, 1),
(15, 47, '2025-05-02', '8.00am - 11.00pm', 2, 57, 5, 1),
(16, 46, '2025-05-14', '8.00am - 11.00am', 9, 76, 5, 2),
(17, 44, '2025-05-15', '8.00am - 11.00am', 9, 64, 5, 2),
(18, 48, '2025-05-20', '9.00am - 12.00pm', 2, 63, 5, 1),
(19, 47, '2025-05-23', '8.00am - 11.00am', 2, 61, 5, 1),
(20, 48, '2025-05-27', '8.00am - 11.00am', 2, 62, 5, 1),
(21, 45, '2025-05-28', '8.00am - 11.00am', 8, 67, 5, 2),
(22, 49, '2025-05-29', '8.00am - 11.00am', 2, 68, 5, 1),
(23, 44, '2025-05-30', '8.00am - 11.00am', 9, 64, 5, 2),
(24, 48, '2025-06-03', '9.00am - 12.00pm', 2, 55, 5, 1),
(25, 47, '2025-06-06', '9.00am - 12.00pm', 2, 57, 5, 1),
(26, 52, '2025-06-11', '8.00am - 11.00pm', 9, 76, 5, 2),
(27, 49, '2025-06-12', '8.00am - 11.00pm', 2, 57, 5, 1),
(28, 48, '2025-06-13', '9.00am - 12.00pm', 2, 62, 5, 1),
(30, 47, '2025-06-20', '8.00am - 11.00am', 2, 55, 5, 1),
(31, 48, '2025-06-24', '8.00am - 12.00am', 2, 62, 5, 1),
(32, 48, '2025-06-27', '8.00am - 11.00am', 2, 63, 5, 1),
(33, 47, '2025-06-20', '8.00am - 11.00am', 2, 79, 5, 1),
(34, 49, '2025-06-23', '8.00am - 11.00am', 2, 79, 5, 1),
(35, 44, '2025-06-30', '8.00am - 11.00am', 9, 64, 5, 1),
(36, 46, '2025-07-01', '8.00am - 11.00am', 9, 64, 5, 1),
(38, 45, '2025-06-16', '8.00am - 11.00am', 8, 67, NULL, NULL),
(39, 45, '2025-06-27', '8.00am - 11.00am', 8, 67, 5, 1),
(40, 44, '2025-04-07', '8.00am - 11.00am', 9, 64, NULL, NULL),
(41, 49, '2025-04-03', '8.00am - 11.00am', 2, 57, NULL, NULL),
(42, 49, '2025-06-30', '8.00am - 11.00am', 2, 57, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reschedule_request`
--

CREATE TABLE `reschedule_request` (
  `request_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `original_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('Pending','Approved by Admin','Rejected by Admin','Forwarded by Coordinator','Rejected by Coordinator','Scheduled') DEFAULT 'Pending',
  `medical_form` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reschedule_request`
--

INSERT INTO `reschedule_request` (`request_id`, `student_id`, `subject_id`, `original_date`, `reason`, `status`, `medical_form`, `created_at`) VALUES
(1, 42, 47, '2025-06-06', 'Viral Fever', 'Scheduled', 'assets/uploads/doc_684f56ab5db93_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-15 23:26:35'),
(2, 42, 48, '2025-06-08', 'Viral Fever', 'Pending', 'assets/uploads/doc_684f56f41471f_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-15 23:27:48'),
(3, 42, 49, '2025-06-12', 'Viral Fever', 'Scheduled', 'assets/uploads/doc_684f57288e514_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-15 23:28:40'),
(4, 26, 49, '2025-06-12', 'Viral Fever', 'Approved by Admin', 'assets/uploads/doc_684f578a1592c_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-15 23:30:18'),
(5, 26, 47, '2025-06-06', 'Viral Fever', 'Pending', 'assets/uploads/doc_684f579d1c1a8_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-15 23:30:37'),
(6, 42, 46, '2025-06-11', 'Viral Fever', 'Scheduled', 'assets/uploads/doc_68575c35a9bd5_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-22 01:28:21'),
(7, 86, 44, '2025-05-30', 'Medical issue', 'Rejected by Admin', 'assets/uploads/doc_685b1e0f24617_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-24 21:52:15'),
(8, 86, 44, '2025-05-30', 'Medical Issue', 'Scheduled', 'assets/uploads/doc_685b1f5c405ec_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-24 21:57:48'),
(9, 87, 45, '2025-06-16', 'Medical issue', 'Scheduled', 'assets/uploads/doc_685d9b5d1c820_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-26 19:11:25'),
(10, 146, 49, '2025-05-29', 'Medical Issue', 'Scheduled', 'assets/uploads/doc_685dba079d80e_Medical_Certificate_for_Lab_Reschedule.pdf', '2025-06-26 21:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `name`) VALUES
(1, 'Semester 01'),
(2, 'Semester 02'),
(3, 'Semester 03'),
(4, 'Semester 04'),
(5, 'Semester 05'),
(6, 'Semester 06'),
(7, 'Semester 07'),
(8, 'Semester 08');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `department_id`) VALUES
(5, 'Ahamed A.A.', '2022e006@eng.jfn.ac.lk', 1),
(6, 'Witharana A.D.S.', '2022e008@eng.jfn.ac.lk', 1),
(7, 'Thilakarathna B.M.S.E.S.', '2022e017@eng.jfn.ac.lk', 1),
(8, 'Deshapriya D.M.K.N.', '2022e027@eng.jfn.ac.lk', 1),
(9, 'Dayarathna D.D.R.N.', '2022e033@eng.jfn.ac.lk', 1),
(10, 'Naveenkumar E.', '2022e035@eng.jfn.ac.lk', 1),
(11, 'Wickramasinghe G.A.G.M.', '2022e037@eng.jfn.ac.lk', 1),
(12, 'Wimalasooriya G.H.N.P.D.', '2022e039@eng.jfn.ac.lk', 1),
(13, 'Ranasinghe G.D.P.D.', '2022e042@eng.jfn.ac.lk', 1),
(14, 'Hathurusinghe H.D.H..M.', '2022e045@eng.jfn.ac.lk', 1),
(15, 'Bandara H.G.T.D.', '2022e048@eng.jfn.ac.lk', 1),
(16, 'Premarathna H.M.K.K.', '2022e050@eng.jfn.ac.lk', 1),
(17, 'Imbulgoda I.N.D.', '2022e057@eng.jfn.ac.lk', 1),
(18, 'Gunarathna J.M.C.A.', '2022e059@eng.jfn.ac.lk', 1),
(19, 'Shapthana J.', '2022e060@eng.jfn.ac.lk', 1),
(20, 'Gowtham J.', '2022e063@eng.jfn.ac.lk', 1),
(21, 'Renujan J.', '2022e065@eng.jfn.ac.lk', 1),
(22, 'Rajapaksha K.G.M.S.', '2022e080@eng.jfn.ac.lk', 1),
(23, 'Kavishya M.G.C.', '2022e086@eng.jfn.ac.lk', 1),
(24, 'Sandeepani M.M.N.', '2022e089@eng.jfn.ac.lk', 1),
(25, 'Lawanya M.A.S.', '2022e090@eng.jfn.ac.lk', 1),
(26, 'De Costa M.S.M.', '2022e092@eng.jfn.ac.lk', 1),
(27, 'Riyasaath M.J.M.', '2022e096@eng.jfn.ac.lk', 1),
(28, 'Pugalini M.', '2022e098@eng.jfn.ac.lk', 1),
(29, 'Mohommd S.', '2022e099@eng.jfn.ac.lk', 1),
(30, 'Kisothana P.', '2022e104@eng.jfn.ac.lk', 1),
(31, 'Kilshan P.', '2022e109@eng.jfn.ac.lk', 1),
(32, 'Yogarasa P.', '2022e110@eng.jfn.ac.lk', 1),
(33, 'Subhasinghe R.M.K.S.', '2022e111@eng.jfn.ac.lk', 1),
(34, 'Hemathilaka R.H.C.', '2022e114@eng.jfn.ac.lk', 1),
(35, 'Rathini R.', '2022e115@eng.jfn.ac.lk', 1),
(36, 'Chandraweera R.A.M.G.T.', '2022e117@eng.jfn.ac.lk', 1),
(37, 'Rathnayake R.G.R.M.D.R.', '2022e122@eng.jfn.ac.lk', 1),
(38, 'Malhara R.M.Y.S.', '2022e126@eng.jfn.ac.lk', 1),
(39, 'Rathnayake R.M.K.L.', '2022e128@eng.jfn.ac.lk', 1),
(40, 'Wishmika H.W.S.P.', '2022e131@eng.jfn.ac.lk', 1),
(41, 'Vasunthar S.', '2022e139@eng.jfn.ac.lk', 1),
(42, 'Senarathna S.A.D.H.D.', '2022e141@eng.jfn.ac.lk', 1),
(43, 'Senarath S.M.D.P.', '2022e142@eng.jfn.ac.lk', 1),
(44, 'Sahithyan U.', '2022e164@eng.jfn.ac.lk', 1),
(45, 'Soorjayan V.', '2022e165@eng.jfn.ac.lk', 1),
(46, 'Uthayaraj V.', '2022e166@eng.jfn.ac.lk', 1),
(47, 'Madushanka W.N.L.', '2022e167@eng.jfn.ac.lk', 1),
(48, 'Perera W.P.C.K.', '2022e173@eng.jfn.ac.lk', 1),
(49, 'Prasanjana W.T.', '2022e180@eng.jfn.ac.lk', 1),
(50, 'Wimalasena D.M.', '2021e033@eng.jfn.ac.lk', 1),
(51, 'Munasingha M.H.A.G.D.L.', '2021e103@eng.jfn.ac.lk', 1),
(52, 'Nimesh S.P.S.', '2021e144@eng.jfn.ac.lk', 1),
(53, 'Ajanthan T.', '2021e192@eng.jfn.ac.lk', 1),
(54, 'Nafras M.N.A.', '2020e102@eng.jfn.ac.lk', 1),
(86, 'Liyanawaththage L.B.K.', '2022e083@eng.jfn.ac.lk', 2),
(87, 'Galahitiyawa G.R.M.M', '2022e036@eng.jfn.ac.lk', 2),
(88, 'Atheef A.R.M.', '2022e002@eng.jfn.ac.lk', 2),
(89, 'Tharlus A.P.A.', '2022e004@eng.jfn.ac.lk', 2),
(90, 'Umayangana A.D.I.S.', '2022e007@eng.jfn.ac.lk', 2),
(91, 'Adithya B.V.S.', '2022e018@eng.jfn.ac.lk', 2),
(92, 'Liyanage B.P.H.', '2022e019@eng.jfn.ac.lk', 2),
(93, 'Basnayake C.K.', '2022e020@eng.jfn.ac.lk', 2),
(94, 'Senevirathne D.A.D.I.', '2022e022@eng.jfn.ac.lk', 2),
(95, 'Ridmika D.A.H.', '2022e023@eng.jfn.ac.lk', 2),
(96, 'Kuhanesan D.', '2022e024@eng.jfn.ac.lk', 2),
(97, 'Karunanayaka H.K.V.S.', '2022e043@eng.jfn.ac.lk', 2),
(98, 'Priyadarshana H.G.T.P.', '2022e047@eng.jfn.ac.lk', 2),
(99, 'Herath H.M.I.U.', '2022e049@eng.jfn.ac.lk', 2),
(100, 'Jayarathna H.M.M.N.', '2022e051@eng.jfn.ac.lk', 2),
(101, 'Herath H.M.N.P.', '2022e052@eng.jfn.ac.lk', 2),
(102, 'Gunasinghe H.M.P.H.', '2022e053@eng.jfn.ac.lk', 2),
(103, 'Wijethunge H.A.N.M.', '2022e054@eng.jfn.ac.lk', 2),
(104, 'Kumari H.R.', '2022e055@eng.jfn.ac.lk', 2),
(105, 'Wijesinghe H.M.S.S.', '2022e056@eng.jfn.ac.lk', 2),
(107, 'Baasith K.A.', '2022e070@eng.jfn.ac.lk', 2),
(108, 'Gunawardana K.H.M.I.K.', '2022e072@eng.jfn.ac.lk', 2),
(109, 'Anojinth K.', '2022e076@eng.jfn.ac.lk', 2),
(110, 'Liyanage L.D.R.K.', '2022e082@eng.jfn.ac.lk', 2),
(111, 'Patabadige M.P.H.R.', '2022e084@eng.jfn.ac.lk', 2),
(112, 'Mahagamage M.V.I.', '2022e085@eng.jfn.ac.lk', 2),
(113, 'Kujilan M.', '2022e087@eng.jfn.ac.lk', 2),
(114, 'Hewathanthrige M.D.P.', '2022e088@eng.jfn.ac.lk', 2),
(115, 'Zimry S.M.I.', '2022e093@eng.jfn.ac.lk', 2),
(116, 'Salam M.S.M.A.', '2022e094@eng.jfn.ac.lk', 2),
(117, 'Usman M.T.', '2022e095@eng.jfn.ac.lk', 2),
(118, 'Narasingha N.L.H.S.', '2022e101@eng.jfn.ac.lk', 2),
(119, 'Dangshan N.', '2022e102@eng.jfn.ac.lk', 2),
(120, 'Thipushanth P.', '2022e106@eng.jfn.ac.lk', 2),
(122, 'Weerakoon R.P.G.K.S.', '2022e113@eng.jfn.ac.lk', 2),
(123, 'Rammandala R.G.P.M.', '2022e116@eng.jfn.ac.lk', 2),
(124, 'Jayaweera R.H.V.N.', '2022e120@eng.jfn.ac.lk', 2),
(125, 'Costa R.V.S.', '2022e121@eng.jfn.ac.lk', 2),
(126, 'Yogabalan R.', '2022e123@eng.jfn.ac.lk', 2),
(127, 'Saliyarathna R.M.C.N.', '2022e127@eng.jfn.ac.lk', 2),
(128, 'Kaweesha R.G.H.', '2022e129@eng.jfn.ac.lk', 2),
(129, 'Renukanth R.', '2022e130@eng.jfn.ac.lk', 2),
(130, 'Haris S.', '2022e132@eng.jfn.ac.lk', 2),
(131, 'Ketharan S.', '2022e136@eng.jfn.ac.lk', 2),
(132, 'Dinooshan S.', '2022e144@eng.jfn.ac.lk', 2),
(133, 'Fernando S.M.H.G.', '2022e145@eng.jfn.ac.lk', 2),
(134, 'Kiritharan S.', '2022e147@eng.jfn.ac.lk', 2),
(135, 'Vithushan S.', '2022e152@eng.jfn.ac.lk', 2),
(136, 'Malik T. M. M.', '2022e154@eng.jfn.ac.lk', 2),
(137, 'Thennakoon T.M.H.R.', '2022e156@eng.jfn.ac.lk', 2),
(138, 'Nilaweera T.H.V.K.', '2022e157@eng.jfn.ac.lk', 2),
(139, 'Vithyashini T.', '2022e158@eng.jfn.ac.lk', 2),
(140, 'Antonyraj T.', '2022e160@eng.jfn.ac.lk', 2),
(141, 'Wanninayaka W.M.I.M.', '2022e169@eng.jfn.ac.lk', 2),
(142, 'Lowe W.M.N.S.', '2022e171@eng.jfn.ac.lk', 2),
(143, 'Lowe W.N.D.', '2022e172@eng.jfn.ac.lk', 2),
(144, 'Dissanayaka W.A.M.S.K.', '2022e174@eng.jfn.ac.lk', 2),
(145, 'Weerasekara W.M.S.G.', '2022e175@eng.jfn.ac.lk', 2),
(146, 'Sandaruwan W.P.P.C.', '2022e177@eng.jfn.ac.lk', 2),
(147, 'Supunthaka W.H.S.S.', '2022e179@eng.jfn.ac.lk', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`, `course_code`, `coordinator_id`, `department_id`, `semester_id`) VALUES
(1, 'English Language Enhancement', 'MC1010', NULL, 5, 1),
(2, 'Mathematics', 'MC1020', NULL, 5, 1),
(3, 'Engineering Drawing', 'ID1010', NULL, 5, 1),
(4, 'Computing', 'EC1011', NULL, 1, 1),
(5, 'Applied Electricity', 'EC1020', NULL, 2, 1),
(6, 'Engineering Metrology', 'ID1021', NULL, 5, 1),
(7, 'Environmental Pollution and Control', 'ID2010', NULL, 5, 2),
(8, 'Materials Science for Engineering', 'ID2020', NULL, 5, 2),
(9, 'Linear Algebra', 'MC2020', NULL, 5, 2),
(10, 'Computer Programming', 'EC2010', NULL, 1, 2),
(11, 'Engineering Mechanics', 'CE2021', NULL, 3, 2),
(12, 'Thermodynamics', 'MP2010', NULL, 5, 2),
(13, 'Kinematics and Dynamics', 'MP3010', NULL, 5, 3),
(14, 'Differential Equations and Numerical Methods', 'MC3010', NULL, 5, 3),
(15, 'Mechanics of Materials', 'CE3010', NULL, 3, 3),
(16, 'Design and Prototyping', 'ID3020', 78, 5, 3),
(17, 'Introduction to Electronics and Instrumentation', 'EC3011', NULL, 2, 3),
(18, 'Probability and Statistics', 'MC3020', NULL, 5, 3),
(19, 'Digital Design', 'EC4010', 59, 1, 4),
(20, 'Signals and Systems', 'EC4040', 65, 1, 4),
(21, 'Electronic Circuits and Devices', 'EC4050', 66, 1, 4),
(22, 'Computer and Data Networks', 'EC4060', 69, 1, 4),
(23, 'Data Structures and Algorithms', 'EC4070', 60, 1, 4),
(24, 'Discrete Mathematics', 'MC4010', 78, 1, 4),
(25, 'Digital Design', 'EC4010', 59, 2, 4),
(26, 'Signals and Systems', 'EC4040', 65, 2, 4),
(27, 'Electronic Circuits and Devices', 'EC4050', 66, 2, 4),
(28, 'Computer and Data Networks', 'EC4060', 69, 2, 4),
(29, 'Electromagnetic Engineering', 'EC4021', 73, 2, 4),
(30, 'Electric Power', 'EC4030', NULL, 2, 4),
(31, 'Surveying and Fieldwork', 'CE4010', NULL, 3, 4),
(32, 'Civil Engineering Construction', 'CE4020', NULL, 3, 4),
(33, 'Engineering Hydrology', 'CE4030', NULL, 3, 4),
(34, 'Fluid Mechanics', 'CE4050', NULL, 3, 4),
(35, 'Structural Analysis–I', 'CE4060', NULL, 3, 4),
(36, 'Concrete Technology', 'CE4070', NULL, 3, 4),
(37, 'Geology for Civil Engineering', 'CE4080', NULL, 3, 4),
(38, 'Solid Mechanics', 'MP4050', NULL, 4, 4),
(39, 'Applied Thermodynamics', 'MP4010', NULL, 4, 4),
(40, 'Machine Drawing', 'MP4020', NULL, 4, 4),
(41, 'Mechanics of Machines', 'MP4030', NULL, 4, 4),
(42, 'Fluid Mechanics for Mechanical Engineers', 'ID4031', NULL, 4, 4),
(43, 'Materials Engineering and Manufacturing Technology', 'MP4040', NULL, 4, 4),
(44, 'Digital Signal Processing', 'EC5010', 66, 1, 5),
(45, 'Analogue and Digital Communication', 'EC5020', 73, 1, 5),
(46, 'Control Systems', 'EC5030', 72, 1, 5),
(47, 'Database Systems', 'EC5070', 59, 1, 5),
(48, 'Software Construction', 'EC5080', 60, 1, 5),
(49, 'Computer Architecture and Organization', 'EC5110', 69, 1, 5),
(50, 'Digital Signal Processing', 'EC5010', 66, 2, 5),
(51, 'Analogue and Digital Communication', 'EC5020', 73, 2, 5),
(52, 'Control Systems', 'EC5030', 72, 2, 5),
(53, 'Computer Architecture and Organization', 'EC5110', 69, 2, 5),
(54, 'Electric Machines', 'EC5040', NULL, 2, 5),
(55, 'Power Electronics and Design', 'EC5050', NULL, 2, 5),
(56, 'Geomechanics', 'CE5021', NULL, 3, 5),
(57, 'Water and Waste water Engineering', 'CE5031', NULL, 3, 5),
(58, 'Hydraulic Engineering and Design', 'CE5040', NULL, 3, 5),
(59, 'Contaminated Land and Ground water Remediation', 'CE5060', NULL, 3, 5),
(60, 'Transportation Engineering', 'CE5070', NULL, 3, 5),
(61, 'Design of Concrete Structures', 'CE5080', NULL, 3, 5),
(62, 'Thermal Power Generation', 'MP5010', NULL, 4, 5),
(63, 'Dynamics of Mechanical Systems and Control', 'MP5020', NULL, 4, 5),
(64, 'Fluid Machinery', 'MP5030', NULL, 4, 5),
(65, 'Process Engineering', 'MP5040', NULL, 4, 5),
(66, 'Machine Design', 'MP5050', NULL, 4, 5),
(67, 'Advanced Mechanics of Machines', 'MP5060', NULL, 4, 5),
(68, 'Embedded Systems Design', 'EC6020', NULL, 1, 6),
(69, 'Software Engineering', 'EC6060', NULL, 1, 6),
(70, 'Computer Engineering Research Project–I', 'EC6070', NULL, 1, 6),
(71, 'Robotics and Automation', 'EC6090', NULL, 1, 6),
(72, 'Operating Systems', 'EC6110', NULL, 1, 6),
(73, 'Embedded Systems Design', 'EC6020', NULL, 2, 6),
(74, 'Robotics and Automation', 'EC6090', NULL, 2, 6),
(75, 'Power Systems', 'EC6030', NULL, 2, 6),
(76, 'Electrical and Electronic Engineering Research Project– I', 'EC6080', NULL, 2, 6),
(77, 'Wireless and Mobile Communications', 'EC6100', NULL, 2, 6),
(78, 'Geotechnical Engineering and Design', 'CE6010', NULL, 3, 6),
(79, 'Solid Waste Management', 'CE6030', NULL, 3, 6),
(80, 'Civil Engineering Research Project–I', 'CE6050', NULL, 3, 6),
(81, 'Continuum Mechanics', 'CE6070', NULL, 3, 6),
(82, 'Design of Steel Structures', 'CE6080', NULL, 3, 6),
(83, 'Structural Analysis–II', 'CE6090', NULL, 3, 6),
(84, 'Elements of Heatand Mass Transfer and Principles of Refrigeration', 'MP6011', NULL, 4, 6),
(85, 'Advanced Machine Design', 'MP6020', NULL, 4, 6),
(86, 'Mechatronics', 'MP6030', NULL, 4, 6),
(87, 'Advanced Vibration Analysis', 'MP6040', NULL, 4, 6),
(88, 'Mechanical Engineering Research Project–I', 'MP6050', NULL, 4, 6),
(89, 'Project Management and Engineering Industry', 'ID7010', NULL, 1, 7),
(90, 'Computer and Network Security', 'EC7020', NULL, 1, 7),
(91, 'Computer Engineering Research Project–II', 'EC7070', NULL, 1, 7),
(92, 'Industrial Training', 'MC7020', NULL, 1, 7),
(93, 'Project Management and Engineering Industry', '', NULL, 2, 7),
(94, 'Electrical and Electronic Engineering Research Project– II', '', NULL, 2, 7),
(95, 'Communication Network Design', '', NULL, 2, 7),
(96, 'Industrial Training', 'MC7020', NULL, 2, 7),
(97, 'Project Management and Engineering Industry', 'ID7010', NULL, 3, 7),
(98, 'Computational Methods in Civil Engineering', 'CE7020', NULL, 3, 7),
(99, 'Civil Engineering Fieldwork', 'CE7030', NULL, 3, 7),
(100, 'Civil Engineering Research Project–II', 'CE7050', NULL, 3, 7),
(101, 'Industrial Training', 'MC7020', NULL, 3, 7),
(102, 'Project Management and Engineering Industry', 'ID7010', NULL, 4, 7),
(103, 'Production Engineering', 'MP7010', NULL, 4, 7),
(104, 'Mechanical Engineering Research Project–II', 'MP7050', NULL, 4, 7),
(105, 'Industrial Training', 'MC7020', NULL, 4, 7),
(106, 'Computer Engineering Design Proficiency', 'EC8020', NULL, 1, 8),
(107, 'Computer Engineering Research Project–III', 'EC8070', NULL, 1, 8),
(108, 'Electrical and Electronic Engineering Design Proficiency', 'EC8010', NULL, 2, 8),
(109, 'Electrical and Electronic Engineering Research Project– III', 'EC8080', NULL, 2, 8),
(110, 'Multi Disciplinary Design Project', 'CE8010', NULL, 3, 8),
(111, 'Civil Engineering Research Project–III', 'CE8050', NULL, 3, 8),
(112, 'Advanced Tribology', 'MP8010', NULL, 4, 8),
(113, 'Mechanical Engineering Research Project—III', 'MP8050', NULL, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `subject_coordinator`
--

CREATE TABLE `subject_coordinator` (
  `coordinator_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_coordinator`
--

INSERT INTO `subject_coordinator` (`coordinator_id`, `name`, `email`, `department_id`) VALUES
(56, 'Diluxshana Rasenthiran', 'diluxshana@eng.jfn.ac.lk', 1),
(59, 'Jananie Segar', 'jananie@eng.jfn.ac.lk', 1),
(60, 'Sujanthika Morgan', 'sujanthika@eng.jfn.ac.lk', 1),
(65, 'Tharmarajah Thiruvaran', 'thiruvaran@eng.jfn.ac.lk', 2),
(66, 'Ravivarman Paramanan', 'ravivarman@eng.jfn.ac.lk', 2),
(69, 'Pirunthapan Yogathasan', 'pirunthapany@eng.jfn.ac.lk', 1),
(70, 'Pravina Mylvaganam', 'pravina@eng.jfn.ac.lk', 2),
(71, 'Mukunthan Tharmakulasingam', 'mukunthan@eng.jfn.ac.lk', 2),
(72, 'Manthiramoorthy Barathraj', 'barathraj@eng.jfn.ac.lk', 2),
(73, 'Ragupathyraj Valluvan', 'valluvan.r@eng.jfn.ac.lk', 2),
(75, 'Jalini Sivarajah', 'jalini@eng.jfn.ac.lk', 2),
(78, 'Default', 'dewmikasenarathna2022@gmail.com', 1),
(149, 'Pratheeba Jeyananthan', 'pratheeba@eng.jfn.ac.lk', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('student','coordinator','instructor','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `role`) VALUES
(5, 'Ahamed A.A.', '2022e006@eng.jfn.ac.lk', '$2y$10$i1Dm/oMBjj/k3Bp3q4LLpulVZNknJA4JrlufgfZ0EqLmeDGZtDW02', 'student'),
(6, 'Witharana A.D.S.', '2022e008@eng.jfn.ac.lk', '$2y$10$pCvIuD1VPvrxsMVgbqcFS.0hpWgznLq4Ogu1vcJv6p0n9IGjv/I8m', 'student'),
(7, 'Thilakarathna B.M.S.E.S.', '2022e017@eng.jfn.ac.lk', '$2y$10$cpZ5Q1Ck5bF30Uzoch8ZI.FveRGnIIuQdh8LKLEu.uc/WBzRgFtsq', 'student'),
(8, 'Deshapriya D.M.K.N.', '2022e027@eng.jfn.ac.lk', '$2y$10$gtIo.xr1TG3NvBlkdbQLbOd5mhEZ4Hs20l.MRHAdefkQQE7PaZhHW', 'student'),
(9, 'Dayarathna D.D.R.N.', '2022e033@eng.jfn.ac.lk', '$2y$10$.LRyfRTMXosnPVVUcJXrJuzIMj8qRDN/SnakSZJFSRf2lWAX5gUkS', 'student'),
(10, 'Naveenkumar E.', '2022e035@eng.jfn.ac.lk', '$2y$10$WdmiF/BDEVsvXo1tzF37ye0PqB66z/xIMZ4AuKeuNQyuZRGUqmY/q', 'student'),
(11, 'Wickramasinghe G.A.G.M.', '2022e037@eng.jfn.ac.lk', '$2y$10$oRGa2A1L7JJHe7B31wQ3tOYKTaohGRSYqdXVSHsaleWslvxBArIW2', 'student'),
(12, 'Wimalasooriya G.H.N.P.D.', '2022e039@eng.jfn.ac.lk', '$2y$10$Zb.M4RfkGXjvJze4Onh7MuT17pZhNEGjq./itT5Jel3PSUq/jmUyy', 'student'),
(13, 'Ranasinghe G.D.P.D.', '2022e042@eng.jfn.ac.lk', '$2y$10$cijHXfUH0mkKh9xz3QuEQOxMa/2my6QOXHipq6DlAeSXlIN7hErzG', 'student'),
(14, 'Hathurusinghe H.D.H..M.', '2022e045@eng.jfn.ac.lk', '$2y$10$RoX5a5OYOEoe7z0G9Zw.gOiN.S5GkBG/a3yz9kxI5oYLQsqAHvUi2', 'student'),
(15, 'Bandara H.G.T.D.', '2022e048@eng.jfn.ac.lk', '$2y$10$5ZsLAoDfWTUgyIiQEcq9.eGmLJ.ukIDquMXTFpsZ1nl/sIVIhTSgy', 'student'),
(16, 'Premarathna H.M.K.K.', '2022e050@eng.jfn.ac.lk', '$2y$10$atOb.Y49ck64uzn0O1NBNuMzahYQ4cqaoeYuBe3Ja54jwE7XvyHWS', 'student'),
(17, 'Imbulgoda I.N.D.', '2022e057@eng.jfn.ac.lk', '$2y$10$hghZZtFeJ1hm6eMNsUO.m.d4m9REYvurS9OzslsQfXgtrZgMyhym6', 'student'),
(18, 'Gunarathna J.M.C.A.', '2022e059@eng.jfn.ac.lk', '$2y$10$bAGWtcyimc/sMOJPj.uFXemm0vvgaQ0gmXi3kp3AwASKeyP7Z0tei', 'student'),
(19, 'Shapthana J.', '2022e060@eng.jfn.ac.lk', '$2y$10$aW1G4nqkvvap5c7dgXi3QeHeEuzZYuwg4tYJEs3Fm/Ugiw//VgA9O', 'student'),
(20, 'Gowtham J.', '2022e063@eng.jfn.ac.lk', '$2y$10$p8tRX7xhJZkYUUjxqcgLFu2LEAuK3J7dou0fW/ModiD0CPtQK8QDi', 'student'),
(21, 'Renujan J.', '2022e065@eng.jfn.ac.lk', '$2y$10$SWvYFfyl/DuIs3ozgzk2s.dAuWv2SmGO8IqSILgx7DFZlv95Zx4A.', 'student'),
(22, 'Rajapaksha K.G.M.S.', '2022e080@eng.jfn.ac.lk', '$2y$10$lroq0I2TElx6Oz3nerQcQeAxHVVGjT/pd0CCI1hSeeK57bcru67G.', 'student'),
(23, 'Kavishya M.G.C.', '2022e086@eng.jfn.ac.lk', '$2y$10$ZeJPFBJfhRL.5EOWuzHD6uDo1UqKIQwOAjXG.z5ARfYrRJu0JXbg.', 'student'),
(24, 'Sandeepani M.M.N.', '2022e089@eng.jfn.ac.lk', '$2y$10$ktEqVA0Cwg6laPn4YIQOyuXrdxZ0rxEcWx.amcQ80oABvn6T9mtd.', 'student'),
(25, 'Lawanya M.A.S.', '2022e090@eng.jfn.ac.lk', '$2y$10$vqtWJZlpetiEiQo/PMIz2ulpd.LMkc5nzpvdkc6xfDgKN2uUe34vC', 'student'),
(26, 'De Costa M.S.M.', '2022e092@eng.jfn.ac.lk', '$2y$10$5sbBT6fAD1UfNENuyU6IweDBf1oJRQ/tyUbKcfEFQ7G/FBb2PdJwe', 'student'),
(27, 'Riyasaath M.J.M.', '2022e096@eng.jfn.ac.lk', '$2y$10$aSn9WqUtOq87cqK3ut2SJ.mzmmv3OccqVTVdcqJepfkGiEtETqbtK', 'student'),
(28, 'Pugalini M.', '2022e098@eng.jfn.ac.lk', '$2y$10$xHlO1RExu/QitIW2aQXtAeA6vD0VqZi8ZNzW6L1kjDyAD9ZH/8ChO', 'student'),
(29, 'Mohommd S.', '2022e099@eng.jfn.ac.lk', '$2y$10$dkZXsZZx1nog32bNn09HLeDYnDi/188lskHQy4aSv41zDqp94zvyu', 'student'),
(30, 'Kisothana P.', '2022e104@eng.jfn.ac.lk', '$2y$10$JXA8RcssizswqucXiySXsOnC1owhM.A738icjBll/R3mWcpdY.Zea', 'student'),
(31, 'Kilshan P.', '2022e109@eng.jfn.ac.lk', '$2y$10$xv2cgx4xoaesEy21peqQZ.doJEp7qKD0D33eHhK2EQHiMLECQH2xS', 'student'),
(32, 'Yogarasa P.', '2022e110@eng.jfn.ac.lk', '$2y$10$8qS0UobemZKvutIogKL7PuSJdlSFV1DiyCPf0QPL.nSW/A3fg.xza', 'student'),
(33, 'Subhasinghe R.M.K.S.', '2022e111@eng.jfn.ac.lk', '$2y$10$Zhzxv/Q9ph0oxY2dTPwG6.Oj3mSG5vmV2fxSiQoG4SF7auPFQ9BMO', 'student'),
(34, 'Hemathilaka R.H.C.', '2022e114@eng.jfn.ac.lk', '$2y$10$soJyJXOil8SsbsarzB076OplfIhl5mOW27qucSLmGedSpbIAkf8wS', 'student'),
(35, 'Rathini R.', '2022e115@eng.jfn.ac.lk', '$2y$10$UCInRMaVKzH253VRRwFxxeBeXlK6s6.UTjvfJWh.HsZp8Hbo2/WGK', 'student'),
(36, 'Chandraweera R.A.M.G.T.', '2022e117@eng.jfn.ac.lk', '$2y$10$jMqMBpD4bfTjnZH9UibksOjMGFJX.eWL3HljxhHM5yfv33QkWzl9O', 'student'),
(37, 'Rathnayake R.G.R.M.D.R.', '2022e122@eng.jfn.ac.lk', '$2y$10$VgzVkQcPddOdVxn1ujghj.euO9MY3qx6iEzbuiobbZsILLoVnlqIu', 'student'),
(38, 'Malhara R.M.Y.S.', '2022e126@eng.jfn.ac.lk', '$2y$10$sZImqbj7qMhR.xn/8aqX..hDSAY.z0frCtWDh9i7oCEVpKXxj56ge', 'student'),
(39, 'Rathnayake R.M.K.L.', '2022e128@eng.jfn.ac.lk', '$2y$10$5Cr4XPTkbJ1qD/lBF2nvh.JCAsRYme.jpNRw1SPDS18Z15pVQxXUa', 'student'),
(40, 'Wishmika H.W.S.P.', '2022e131@eng.jfn.ac.lk', '$2y$10$CBCoy7A49CRPggqdfYty4Obv/aJIrzDgb7OIZArQ9IDdxtL8em8Bu', 'student'),
(41, 'Vasunthar S.', '2022e139@eng.jfn.ac.lk', '$2y$10$l1ouYPQNXKFYBS6099ywyuL1JrpUBQXIbldkURhVhwyV217FumnfC', 'student'),
(42, 'Senarathna S.A.D.H.D.', '2022e141@eng.jfn.ac.lk', '$2y$10$G1XX8edRTNfHs76l808U4uVzSLYaAqIzuiAExvGgW4gi/W/lll3Lq', 'student'),
(43, 'Senarath S.M.D.P.', '2022e142@eng.jfn.ac.lk', '$2y$10$u8GaibTTfSaSIufz/2tK7uF8A9aUVqx0H14K8rqhxG0yuUJIlcXUm', 'student'),
(44, 'Sahithyan U.', '2022e164@eng.jfn.ac.lk', '$2y$10$OzuN1bE2TN60dFCMzXswaelQiwGeaqGyLhq5Ox2eNVWnUXUrlXHV2', 'student'),
(45, 'Soorjayan V.', '2022e165@eng.jfn.ac.lk', '$2y$10$aTIOUKIiGXKnuQD7wGh/tOe3nT0gYgTvCQsUMyNAzydXgmdzV72sS', 'student'),
(46, 'Uthayaraj V.', '2022e166@eng.jfn.ac.lk', '$2y$10$hEwYFbPOZtU9r2Xpw9aqVOXW4CU2qYJJvSprKPwneI7UnrfH57nhK', 'student'),
(47, 'Madushanka W.N.L.', '2022e167@eng.jfn.ac.lk', '$2y$10$zWWCCQrN0/KvmeiwdEBkfe9j8BoaRRGG4lGh1GnE5Ir9QCG4N3aqW', 'student'),
(48, 'Perera W.P.C.K.', '2022e173@eng.jfn.ac.lk', '$2y$10$1N6Ew7nhlgrZvSrnpSwybuH/v/plK7AzBMRht0.dpezCkx24duxnS', 'student'),
(49, 'Prasanjana W.T.', '2022e180@eng.jfn.ac.lk', '$2y$10$z.Qeq93zpg47sxWdVLPMBORoQDE9f/heqFaRseULtpmR8bKawGyUO', 'student'),
(50, 'Wimalasena D.M.', '2021e033@eng.jfn.ac.lk', '$2y$10$DMavxfJgPGkIh2fcu1ag3OsiTPdkREHXMs2YTi/koWBinw327mSPW', 'student'),
(51, 'Munasingha M.H.A.G.D.L.', '2021e103@eng.jfn.ac.lk', '$2y$10$0qQa5vRdeWxBI.IMDg8Kge5GKFqeRlrP4vO6fYKvQfnHW3HfX08Tq', 'student'),
(52, 'Nimesh S.P.S.', '2021e144@eng.jfn.ac.lk', '$2y$10$Myf9wqZkjW87izmJ/CENXOyEnslbQOcighbvf2ajPj74hYXntnULm', 'student'),
(53, 'Ajanthan T.', '2021e192@eng.jfn.ac.lk', '$2y$10$itDBncLwbQrKuIADoIuTF.l6M.tP7EvrThU/pZM9MIKc.Y9OYtqju', 'student'),
(54, 'Nafras M.N.A.', '2020e102@eng.jfn.ac.lk', '$2y$10$GCb42XzQKOrEhfi3ulW.6.r8YtfWz.QprQ2sLVP8aV77lT5mp9O1a', 'student'),
(55, 'Sharmini Premaratnam', 'sharmini@eng.jfn.ac.lk', '$2y$10$2oZesbTKaayIZK8tVCsSLuHzRaWrCJp/XLyOt2D0wiX5imceP37oq', 'instructor'),
(56, 'Diluxshana Rasenthiran', 'diluxshana@eng.jfn.ac.lk', '$2y$10$.ZXWCNCJxwh5a/36s7JOHOhS7gCENuht8A8ZBqTDiIQnQd8xQ9Vxy', 'coordinator'),
(57, 'Jananya Sivasubramaniyam', 'jananya@eng.jfn.ac.lk', '$2y$10$jNnnRTqib6mb9oNt6lVfquGuku2T99T7dMpITcsMfXyCoI8gsIseu', 'instructor'),
(58, 'Nithurjini Colin Vigneswaran', 'nithurjini@eng.jfn.ac.lk', '$2y$10$KrWcldUKuugVnQDZhdn5JO4V3TrJnwL0UCIy1dIjl52sAY6tPLjUO', 'instructor'),
(59, 'Jananie Segar', 'jananie@eng.jfn.ac.lk', '$2y$10$NL7S5Ruztnc4VXkr6etUxuoTnUJYIAeKmGr2a3fSNpX8TCDQAtCDG', 'coordinator'),
(60, 'Sujanthika Morgan', 'sujanthika@eng.jfn.ac.lk', '$2y$10$D21tr6CTszZdb5yoLK6KiexSJ5SjrPAZ1OPbW8kilZstaHWLeaUN6', 'coordinator'),
(61, 'Shankavy Utheyasanther', 'shankavy@eng.jfn.ac.lk', '$2y$10$pn9avaFvdSrK/jwKfV9LQOIoGOpcJlWPmUSiQAGqfLd19DDmMAtwm', 'instructor'),
(62, 'Mousiya Karunakaran', 'mousiya@eng.jfn.ac.lk', '$2y$10$TZJMQ9G1XC9XsmkZ1blIyuO3K0m4xlkk.sW.tLu4bkruxMS06XQ.m', 'instructor'),
(63, 'Rajana Lankanathan', 'rajana@eng.jfn.ac.lk', '$2y$10$XtcaVLmpKGngOODxoPvT7OShSOb/6i4l2q9pq.5KWwmRDaPqa1EmS', 'instructor'),
(64, 'Punyamoorthy Vegashkar', 'vegashkar@eng.jfn.ac.lk', '$2y$10$/sBoqIKSnDvcJcB1dVFQ9ujMEIxX4KhGDT1rr8453eYssTJvQHjLi', 'instructor'),
(65, 'Tharmarajah Thiruvaran', 'thiruvaran@eng.jfn.ac.lk', '$2y$10$r.RrrhjUZTPEEhH9lH3FdOPtGzHS9s8iS38bQcubA4YzkQ2bmxOyW', 'coordinator'),
(66, 'Ravivarman Paramanan', 'ravivarman@eng.jfn.ac.lk', '$2y$10$ihuXBtPqZOP8p/f9hEXjXeCaghAB.d4RT3dHprJO1diG6Dfv2E8ti', 'coordinator'),
(67, 'Sathiyamoorthy Pavithran', 'pavithran@eng.jfn.ac.lk', '$2y$10$mBj9GpdHj9x0bsh4Wt13s.J7buIp9ASMsBT5VWDMYTIy4g9z/NneC', 'instructor'),
(68, 'Kuganya Mahendrarajah', 'kuganya@eng.jfn.ac.lk', '$2y$10$zcmSMFwp1Q/Xhm2KvdaC5ea0GO7ELjUxXzDEc6GqXlkBS7Yg.V1ce', 'instructor'),
(69, 'Pirunthapan Yogathasan', 'pirunthapany@eng.jfn.ac.lk', '$2y$10$XwvpPMZ6wrgCPRvs70kAU.U3y09wRc2radNkMUtq4Y98qtIjk4GYq', 'coordinator'),
(70, 'Pravina Mylvaganam', 'pravina@eng.jfn.ac.lk', '$2y$10$bTZtNezUnZw/7T6ScwEtnOavyuQZBGSoly1xQsJb5.MKLmwPR0UZ2', 'coordinator'),
(71, 'Mukunthan Tharmakulasingam', 'mukunthan@eng.jfn.ac.lk', '$2y$10$67U5hf5YIRTJot/1toYoXuywydaX4YlGnvlEnvdWdLfA6DDlpftMa', 'coordinator'),
(72, 'Manthiramoorthy Barathraj', 'barathraj@eng.jfn.ac.lk', '$2y$10$waR4bQxUQCoK9ZsX/oMABecuebvPYgsGp6cqxKs3BO/F7WIMzxpIq', 'coordinator'),
(73, 'Ragupathyraj Valluvan', 'valluvan.r@eng.jfn.ac.lk', '$2y$10$V9muMelpnG9Fr5/lj7w01evbRYW7aQweC3AJpfmUFD.fo7GzBJm2e', 'coordinator'),
(74, 'P Niroj', 'niroj@eng.jfn.ac.lk', '$2y$10$lDF.4W4y5qDR42BqXkG29e0MmMliTfXddL6yYG1PwdAkZgiWJuTnq', 'instructor'),
(75, 'Jalini Sivarajah', 'jalini@eng.jfn.ac.lk', '$2y$10$TAkwCj9vnNiP/O2AdtskAOKLSyaiZ2gw.Zl5lWoedArE9yhcVCZbq', 'coordinator'),
(76, 'Sownthararasa Jathurshan', 'jathurshan@eng.jfn.ac.lk', '$2y$10$wiFCk7CE8DxvmxNDH5RStuHotQr6K7ZgUyzq1Bm0g/fp5maa9gjGe', 'instructor'),
(78, 'Default_coordinator', 'dewmikasenarathna2022@gmail.com', '$2y$10$XH8ORVKZlLiB/OIxwF6ageQ7IJLuCthnAh9qBcukCVAstiPJfy1iq', 'coordinator'),
(79, 'Default_instructor', 'dewmikasenarathna117@gmail.com', '$2y$10$Y/62P0hI.9lqOpGgDgzn1.p.CJkNG943/vb24FsfXxSs.YHgt42kO', 'instructor'),
(81, 'Anantharajah Kaneswaran', 'kanesh@eng.jfn.ac.lk', '$2y$10$Q0KEAh4QKsQG/IgKl59re.rqp4FTK/ZKHgMywINrXaAVLuoOmJcYC', 'admin'),
(82, 'WNS Fonseka', 'sampath@eng.jfn.ac.lk', '$2y$10$ztBlouYuVFSCnoQ3YSkfy.qoRtLu7iF9CaFkasiQ7/WkMCJib61g.', 'admin'),
(83, 'BWDMSB Yatawara', 'yatawara@eng.jfn.ac.lk', '$2y$10$b/hZv8kjjESTTlv1BPXDmu4R4YpmA6FFrsaEnHXCrSJYD1gpITIoi', 'admin'),
(84, 'Lakcika Punitharasa', 'lakcika@eng.jfn.ac.lk', '$2y$10$i6fjdtzX7XmkqMeh.QWbtuoVNz8QEiXZQQIF/XWY2Uzr/S.6Xvt.a', 'admin'),
(85, 'Default_admin', 'dewmikasenarathna017@gmail.com', '$2y$10$8yS4Rvaskph5E06AjVMdoO6TUfpo6E32KuC8jWR/o74.PPMhT.4Fq', 'admin'),
(86, 'Liyanawaththage L.B.K.', '2022e083@eng.jfn.ac.lk', '$2y$10$ga5OoSHsDcOm5tcfw6ViS.t8gsGSMU8N1LGc0/8y06eAd7QiyRKJ.', 'student'),
(87, 'Galahitiyawa G.R.M.M', '2022e036@eng.jfn.ac.lk', '$2y$10$lZqxEpLXHZ5G2Rw1qFPwkOT/XaEfo..ty28BYmVprwZMjSIty4wii', 'student'),
(88, 'Atheef A.R.M.', '2022e002@eng.jfn.ac.lk', '$2y$10$wX7C8uM9OmWVO1kMerj/T.KQ.4B7gI9IMkBuxyWlb6jsiSR5ludju', 'student'),
(89, 'Tharlus A.P.A.', '2022e004@eng.jfn.ac.lk', '$2y$10$UsNiukCNNAweuqxAkVppse7B7IkvFoSwQtYcfQ7orxqsg7iINWci6', 'student'),
(90, 'Umayangana A.D.I.S.', '2022e007@eng.jfn.ac.lk', '$2y$10$bes/7L6/IhDcM/sNcrpz4uEgn5uIxo4Sx55Oa3mts7pTpviQVEwVq', 'student'),
(91, 'Adithya B.V.S.', '2022e018@eng.jfn.ac.lk', '$2y$10$MQoPxqES09GoPWbm4olGkOsObR0DSDS/PlSh22S9JwMwVeCLD8XcG', 'student'),
(92, 'Liyanage B.P.H.', '2022e019@eng.jfn.ac.lk', '$2y$10$kDmTNUhoZWmkrnEjoYcgAe8mrnYUKfrNaNAUvx6fnXM46kbwcansG', 'student'),
(93, 'Basnayake C.K.', '2022e020@eng.jfn.ac.lk', '$2y$10$9V1PJvJSpy8FkIXClgOYVecS/yVsRjgjqHwlqe9YeLp.eCNKatzJa', 'student'),
(94, 'Senevirathne D.A.D.I.', '2022e022@eng.jfn.ac.lk', '$2y$10$tR2cAw7Nk.QLAD3Qa2ImV.uIjnj/iRQ2CPO1.sHYPAHBgycvPWNoG', 'student'),
(95, 'Ridmika D.A.H.', '2022e023@eng.jfn.ac.lk', '$2y$10$7lYALowPgFEvz7BkCE18.e14rbBdCFwyM3gFT9RBGeBSKXg6tmgiW', 'student'),
(96, 'Kuhanesan D.', '2022e024@eng.jfn.ac.lk', '$2y$10$0ZME/Jinf74i0/2tqpPr6e4kDiZByQCaJzZPJOYtgbtgMoQo1k3ra', 'student'),
(97, 'Karunanayaka H.K.V.S.', '2022e043@eng.jfn.ac.lk', '$2y$10$5Sfb8kpdBvg/DXuCr07DC.1I5rI6GQTS.4ub8t1s5zAkc5xd/wBxC', 'student'),
(98, 'Priyadarshana H.G.T.P.', '2022e047@eng.jfn.ac.lk', '$2y$10$u92gMutsm8hux7LSfL79b.x8eJT07ryO0OkBEXO08iedUbN7zQNY2', 'student'),
(99, 'Herath H.M.I.U.', '2022e049@eng.jfn.ac.lk', '$2y$10$HFU7/PvEWaLV0wjqpxKoZuWXMJkHI1JcebPVAlW/9XypWi1bpOPmS', 'student'),
(100, 'Jayarathna H.M.M.N.', '2022e051@eng.jfn.ac.lk', '$2y$10$2kMg2uiMC8n0CPJUc5z/ueqPlpQqP9PgvMGZr1Q6a7ukH93hKuyHC', 'student'),
(101, 'Herath H.M.N.P.', '2022e052@eng.jfn.ac.lk', '$2y$10$tylkzqQmFBXkUoRbHFpwZOMoSx/MlEFp0/88iZC5keAjVFhNkIiaG', 'student'),
(102, 'Gunasinghe H.M.P.H.', '2022e053@eng.jfn.ac.lk', '$2y$10$WDEgqI0jRh61Ixabh/xUQuP88Nld9Y2/tTXd83pn22rycwHxe17Zq', 'student'),
(103, 'Wijethunge H.A.N.M.', '2022e054@eng.jfn.ac.lk', '$2y$10$BgHFripDmYDRzHuR6tblkuEyRAGnJGjVcBSvjVyiLJMu/wrKomcoa', 'student'),
(104, 'Kumari H.R.', '2022e055@eng.jfn.ac.lk', '$2y$10$koMI52lhih.igz21wId3zOcXqsOljSVWHP5QPNjPubN314ZbI8qJC', 'student'),
(105, 'Wijesinghe H.M.S.S.', '2022e056@eng.jfn.ac.lk', '$2y$10$OFa27ssvqWYt.iUjvCjAyek/591MtuE2ae8SnFYBaTdJITxTZHslm', 'student'),
(107, 'Baasith K.A.', '2022e070@eng.jfn.ac.lk', '$2y$10$rOdMrNgsI/jFNPJfpyV9pueyfaEEf0ABtMYHewfW9/AlYv/Z9yqwa', 'student'),
(108, 'Gunawardana K.H.M.I.K.', '2022e072@eng.jfn.ac.lk', '$2y$10$WD5Cunyz3aw4dM6Dc8oGPuSwnYYXPWbaS6U.ZVR9PB7Cyv8VY71RS', 'student'),
(109, 'Anojinth K.', '2022e076@eng.jfn.ac.lk', '$2y$10$1BdsLrVDgMXbxgZborxI/exT0D2Zzunvatc9JGbLU4W6H682azjpq', 'student'),
(110, 'Liyanage L.D.R.K.', '2022e082@eng.jfn.ac.lk', '$2y$10$RliRm4L5fyWSyzufpwTVV.3d/BXB9JY2bcEhVcPPEngQt7Xt9Q05S', 'student'),
(111, 'Patabadige M.P.H.R.', '2022e084@eng.jfn.ac.lk', '$2y$10$5LsxgR0.qhV1GZVNuXtYM.A1yQrbMm4G6Z87PAPcNEgYC8yvRVRAW', 'student'),
(112, 'Mahagamage M.V.I.', '2022e085@eng.jfn.ac.lk', '$2y$10$g37DFVYaAO13r1wZKT2gJ.AoWBj2aJr6Tt0E0wLtgKtLLRF7ADEzG', 'student'),
(113, 'Kujilan M.', '2022e087@eng.jfn.ac.lk', '$2y$10$bBeBUKLiC8wlnesWfS1iX.GbRy0/zCUkzq4zb3/hj7VUCJrLnhu86', 'student'),
(114, 'Hewathanthrige M.D.P.', '2022e088@eng.jfn.ac.lk', '$2y$10$lcyinC8elooZRt.fPLoHoOacTKqmxuHfDi1co2Z7H8o4vgCKdbR9W', 'student'),
(115, 'Zimry S.M.I.', '2022e093@eng.jfn.ac.lk', '$2y$10$cl3yCW7hfX/XROXtw7FQXevEWc/Nt1RnV6eCzpEcvUTaH44ctOyJC', 'student'),
(116, 'Salam M.S.M.A.', '2022e094@eng.jfn.ac.lk', '$2y$10$vU2zkOQQ/zXusagcG24PweHUKdlLi4beyTd7Hh9zAx4fRDqFDxUl2', 'student'),
(117, 'Usman M.T.', '2022e095@eng.jfn.ac.lk', '$2y$10$YnVpVV0Goi7cxtB8tQv0u.HEIqR.pM2OknlUjfU1Zt/kp/7SJt/hy', 'student'),
(118, 'Narasingha N.L.H.S.', '2022e101@eng.jfn.ac.lk', '$2y$10$OjX8Z/Q1qlfyWeoVFt0I2uEXFwKmb4/nVMNzLkOjxz8pQefw3gEje', 'student'),
(119, 'Dangshan N.', '2022e102@eng.jfn.ac.lk', '$2y$10$Fa/vkciTN3Peld06.2x5h.ofcCytjV7WA/6dYHYsVj00YbMGDl8LG', 'student'),
(120, 'Thipushanth P.', '2022e106@eng.jfn.ac.lk', '$2y$10$2Ou9uTdzdddkrG1sey0QF.pgUGuTSm2C0n.0ZzVp2XyviBt4F4b9G', 'student'),
(122, 'Weerakoon R.P.G.K.S.', '2022e113@eng.jfn.ac.lk', '$2y$10$1MmydtdsnJ6mj5eyDkiuBu1h/hkg77tOA2yQ/x.lLTMfxisQnZIXy', 'student'),
(123, 'Rammandala R.G.P.M.', '2022e116@eng.jfn.ac.lk', '$2y$10$LcTJVZKtI2jlq5V.bun0Y.EiT5Yi1FDfJzKBOWQJGIx9dl.pUNKxW', 'student'),
(124, 'Jayaweera R.H.V.N.', '2022e120@eng.jfn.ac.lk', '$2y$10$1cqsfFU92jp04GAybm7i1eya00fdTSQq5dPvdormLzu7MuCw2WHFO', 'student'),
(125, 'Costa R.V.S.', '2022e121@eng.jfn.ac.lk', '$2y$10$gHLE/mDsv0B7/LuJWNM9fOoVRnPYSUgkkQPLsSvJyhUb4xKond.Vu', 'student'),
(126, 'Yogabalan R.', '2022e123@eng.jfn.ac.lk', '$2y$10$EyxD8..mOiv.vNrd5U7yIO.seDRrVE4YXusADpgGVvTX3uw62IsBC', 'student'),
(127, 'Saliyarathna R.M.C.N.', '2022e127@eng.jfn.ac.lk', '$2y$10$.evNM/ZFgrFy7CdK/hgwqucS3j4Y2wYrSzcaEyqgQ6hRHzd2Te5Um', 'student'),
(128, 'Kaweesha R.G.H.', '2022e129@eng.jfn.ac.lk', '$2y$10$TKsrw4dCJfdw27Hem6fVQOMkukiqsexMExfwMmz8UWu7fVoAiBCwe', 'student'),
(129, 'Renukanth R.', '2022e130@eng.jfn.ac.lk', '$2y$10$puH1piS.DGI9MGsrARgiYujNlIPEqjw9q2yDQl/Jcn2tG9VHH7vKW', 'student'),
(130, 'Haris S.', '2022e132@eng.jfn.ac.lk', '$2y$10$H94jR0r3yHti8tmQfIa4.OJq2S8tqAbnvuWufYrY6jqZy4H33uaXm', 'student'),
(131, 'Ketharan S.', '2022e136@eng.jfn.ac.lk', '$2y$10$Yu4cEUG1hnajdrHMRSJwheLtXo5bwr2tuaCKZbOhu1VhLglC.dswu', 'student'),
(132, 'Dinooshan S.', '2022e144@eng.jfn.ac.lk', '$2y$10$xFnGbkb69n2C.3xyiPwOGuJF93CGckNp7TO9KakHgH5UVs.qBL/qS', 'student'),
(133, 'Fernando S.M.H.G.', '2022e145@eng.jfn.ac.lk', '$2y$10$DjULEGCrAQv5AYHTPKyDZuOlY3NNu5eTf1C1dp0zQmrU5qDETYtk2', 'student'),
(134, 'Kiritharan S.', '2022e147@eng.jfn.ac.lk', '$2y$10$qhQ52wdu9uZTBbL7z62OJ.BHjI28YHpgySZIyc6hLrqw3wZwMz.zG', 'student'),
(135, 'Vithushan S.', '2022e152@eng.jfn.ac.lk', '$2y$10$pRoPh4arkTsIKDSjp90TI.DBXra1/HC70GwccNVraFn1MjYNd8pLK', 'student'),
(136, 'Malik T. M. M.', '2022e154@eng.jfn.ac.lk', '$2y$10$D.MUJcQDkUcLm754HbatquMjg5q1GYIe6DKDDELoYcDBZJkg1bPyK', 'student'),
(137, 'Thennakoon T.M.H.R.', '2022e156@eng.jfn.ac.lk', '$2y$10$HxOuLC0sUSTQ0csgEzVFB.mhRORUNT27DJeV2fe0WT90P9vhICIkm', 'student'),
(138, 'Nilaweera T.H.V.K.', '2022e157@eng.jfn.ac.lk', '$2y$10$vFEu9uTOkiClJ8ryOR9Br.cR8vgraIKSYL5OralDxIg4IouFsKtzS', 'student'),
(139, 'Vithyashini T.', '2022e158@eng.jfn.ac.lk', '$2y$10$ylfvPX2JXAeisVIeD4YP7et2bS7k3R0ypB.3vh8derFdPDGgJoJA.', 'student'),
(140, 'Antonyraj T.', '2022e160@eng.jfn.ac.lk', '$2y$10$O0Y/82.kV2B//hArh.arkuE5ifddvmBPbh1.g3d6c2TpJyLm4NDou', 'student'),
(141, 'Wanninayaka W.M.I.M.', '2022e169@eng.jfn.ac.lk', '$2y$10$aaqjUlpjzp8iDqpL1yphf.RPnCMfuYYUPIdxTjwccdEAdI9L1K6MO', 'student'),
(142, 'Lowe W.M.N.S.', '2022e171@eng.jfn.ac.lk', '$2y$10$On0FXq81gLvKh3GEakNtRex0LVeSP4mCklL8lN5MjYURDCF6lUKKe', 'student'),
(143, 'Lowe W.N.D.', '2022e172@eng.jfn.ac.lk', '$2y$10$D0cKl8/eZFMpCRuzjes2M.Xvjngzu6/6oM.qHUpRWyDRb5O053MlG', 'student'),
(144, 'Dissanayaka W.A.M.S.K.', '2022e174@eng.jfn.ac.lk', '$2y$10$qG6JK6lsl3G3H.hY30MuXuuGvpP.2WbBldcYObanKQtt4986JVC9u', 'student'),
(145, 'Weerasekara W.M.S.G.', '2022e175@eng.jfn.ac.lk', '$2y$10$zb1B8JYqzGC5Jgqh2VKDbOGDZAJHy6bH2UWrPIuHQKNRSk5.MAiGC', 'student'),
(146, 'Sandaruwan W.P.P.C.', '2022e177@eng.jfn.ac.lk', '$2y$10$i/p0lYg1.wh8igvanUpuFul5dPQg7mBnPOLVP5n79yVQBB/At3mlW', 'student'),
(147, 'Supunthaka W.H.S.S.', '2022e179@eng.jfn.ac.lk', '$2y$10$jHcLpcI8hMpSIVCV/g2zXu2nvtxoIvLJO/NgPRqeECbS5BN2m61QW', 'student'),
(148, 'Mohammadh Jawusi Fathima', 'aasifamjf@eng.jfn.ac.lk', '$2y$10$rLEtxgGg0RNZGWUcPxra1uwXXSYs5tU5Wu8G1Y/oPnzIWrVa0VNFG', 'instructor'),
(149, 'Pratheeba Jeyananthan', 'pratheeba@eng.jfn.ac.lk', '$2y$10$4CCAFOx5FziQrHz3aZr1jeVaPfpDsAIgl6f35CZ7wApYzr4kCM.Oy', 'coordinator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`,`student_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `lab_instructor`
--
ALTER TABLE `lab_instructor`
  ADD PRIMARY KEY (`instructor_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lab_id` (`lab_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `reschedule_request`
--
ALTER TABLE `reschedule_request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `coordinator_id` (`coordinator_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `subject_coordinator`
--
ALTER TABLE `subject_coordinator`
  ADD PRIMARY KEY (`coordinator_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `reschedule_request`
--
ALTER TABLE `reschedule_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `lab_schedule` (`schedule_id`);

--
-- Constraints for table `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `lab_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `lab_instructor`
--
ALTER TABLE `lab_instructor`
  ADD CONSTRAINT `lab_instructor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD CONSTRAINT `lab_schedule_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `lab_schedule_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`lab_id`),
  ADD CONSTRAINT `lab_schedule_ibfk_3` FOREIGN KEY (`instructor_id`) REFERENCES `lab_instructor` (`instructor_id`),
  ADD CONSTRAINT `lab_schedule_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  ADD CONSTRAINT `lab_schedule_ibfk_5` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `reschedule_request`
--
ALTER TABLE `reschedule_request`
  ADD CONSTRAINT `reschedule_request_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `reschedule_request_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`coordinator_id`) REFERENCES `subject_coordinator` (`coordinator_id`),
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `subjects_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`);

--
-- Constraints for table `subject_coordinator`
--
ALTER TABLE `subject_coordinator`
  ADD CONSTRAINT `subject_coordinator_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
