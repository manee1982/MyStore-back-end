-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2020 at 11:58 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `discription` varchar(256) NOT NULL,
  `image` varchar(32) NOT NULL,
  `colors` varchar(512) NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `discription`, `image`, `colors`) VALUES
(1, 'رمادري غامق', 'وصل حديثا للمخازن خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-1.png', '[{\"r\":103,\"g\":22,\"b\":99},{\"r\":223,\"g\":105,\"b\":90},{\"r\":245,\"g\":100,\"b\":36}]'),
(2, 'احمر فاقع', 'متوفر بمقاسات مختلفة خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-2.png', '[{\"r\":18,\"g\":22,\"b\":99},{\"r\":55,\"g\":105,\"b\":201},{\"r\":245,\"g\":13,\"b\":136}]'),
(3, 'بني جميل', 'متوفر الان بمالمعارض للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-3.png', '[{\"r\":103,\"g\":22,\"b\":99},{\"r\":223,\"g\":11,\"b\":90},{\"r\":245,\"g\":22,\"b\":36}]'),
(4, 'اخضر رنان', 'وصل حديثا للمعارض خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-4.png', '[{\"r\":103,\"g\":22,\"b\":99},{\"r\":223,\"g\":105,\"b\":90},{\"r\":245,\"g\":100,\"b\":36}]'),
(5, 'اسود فاتح', 'متوفر الان بالمعارض خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-5.png', '[{\"r\":9,\"g\":22,\"b\":99},{\"r\":223,\"g\":15,\"b\":90},{\"r\":123,\"g\":100,\"b\":36}]'),
(6, 'بنكي نسائي', 'متوفر الان بالمعارض خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد', 'images/clothes/cell-6.png', '[{\"r\":45,\"g\":22,\"b\":99},{\"r\":223,\"g\":11,\"b\":205},{\"r\":59,\"g\":205,\"b\":111}]');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `discription` varchar(1024) NOT NULL,
  `item_image` varchar(256) NOT NULL,
  `category` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `discription`, `item_image`, `category`) VALUES
(1, 'افضل الاسعار خصم يصل الى 30%', 'لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من ', 'images/main/top-photos-1.png', 'ملابس'),
(2, 'ساعات فاخرة فقط قم بالتسوق واختر الاجمل', 'القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في ', 'images/main/top-photos-2.png', 'ساعات'),
(3, 'مريحة', 'منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه', 'images/main/coll-1.png', 'جاكت'),
(4, 'جاكت', 'هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل', 'images/main/coll-2.png', 'فانلات'),
(5, 'احذية', 'لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح', 'images/main/coll-3.png', 'احذية'),
(6, 'شنط', 'انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني.', 'images/main/coll-4.png', 'شنط'),
(7, 'نظارات', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل', 'images/main/coll-5.png', 'جينز'),
(8, 'جينز', 'ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص.', 'images/main/coll-6.png', 'نظارات');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `account_type`) VALUES
(1, 'Mohamed Ali Mansur', 'mohamed', '$2y$10$sDXrl7CQGB/qJFS/lveCC.b04fHwudK3a4EtodkZ8nLtB6DpV1nmq', 2),
(2, 'administrator', 'admin', '$2y$10$c.sZwPhZ.zYhyOdOajGPIu.YYXFcbu3aLcVaxCh92AY34N8JJqChq', 1),
(3, 'Osman Omer bin hamad', 'osman', '$2y$10$jvWeVJCLkZXP5UpQVBHl/e2UIY5.sEnyg8Xc/5bL7lXhme/.ry8m2', 2),
(4, 'Test user', '301', '$2y$10$z6jcMb/oXyaVonrxTIUXze9Hzbklspd7O6Siei3Qvxckf3mU6VR2m', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
