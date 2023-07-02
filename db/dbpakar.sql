-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2023 at 10:43 PM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `satu9351_diagnosis_ispa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(3) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(11) NOT NULL,
  `kdgejala` varchar(3) DEFAULT NULL,
  `gejala` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kdgejala`, `gejala`) VALUES
(1, 'G1', 'Bersin Bersin'),
(2, 'G2', 'Batuk'),
(3, 'G3', 'Pilek'),
(4, 'G4', 'Berkurangnya Indra Penciuman'),
(5, 'G5', 'Suara Serak'),
(6, 'G6', 'Tenggorokan Gatal'),
(7, 'G7', 'Pusing/Sakit Kepala'),
(8, 'G8', 'Demam'),
(9, 'G9', 'Sakit Tenggorokan'),
(10, 'G10', 'Sulit Menelan'),
(11, 'G11', 'Badan Terasa Lemas'),
(12, 'G12', 'Nafsu Makan Berkurang'),
(13, 'G13', 'Mual dan Muntah'),
(14, 'G14', 'Nyeri Saat Menelan'),
(15, 'G15', 'Sesak Nafas/Kesulitan Bernafas'),
(22, 'G16', 'Batuk Berdahak'),
(23, 'G17', 'Hidung Mampet/Tersumbat'),
(24, 'G18', 'Sakit/Rasa Tidak Nyaman Pada Dada'),
(25, 'G19', 'Nyeri Wajah Saat Menunduk'),
(26, 'G20', 'Lendir Kental Kuning Dari Hidung'),
(27, 'G21', 'Frekuensi Nafas Cepat'),
(28, 'G22', 'Tekanan Pada Telinga'),
(29, 'G23', 'Mengeluarkan Bunyi Saat Bernafas'),
(30, 'G24', 'Sianosis/Tubuh Menjadi Sedikit Membiru'),
(31, 'G25', 'Selalu Dehidrasi'),
(32, 'G26', 'Batuk Berdahak Disertai Darah'),
(33, 'G27', 'Linglung/Terjadi Penurunan Kesadaran'),
(34, 'G28', 'Diare'),
(35, 'G29', 'Drooling/Air Liur Keluar Berlebihan'),
(36, 'G30', 'Nyeri Sendi dan Otot'),
(37, 'G31', 'Nyeri Bahu dan Punggung'),
(38, 'G32', 'Bau Nafas Tidak Sedap'),
(39, 'G33', 'Suara Terkadang Hilang'),
(40, 'G34', 'Muntah Akibat Rejan Parah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(11) NOT NULL,
  `kdpenyakit` varchar(3) DEFAULT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `definisi` text DEFAULT NULL,
  `solusi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `kdpenyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
(1, 'P1', 'Common Cold (Batuk Pilek)', 'Common Cold, atau lebih dikenal dengan Batuk Pilek dalam Bahasa Indonesia, adalah salah satu jenis penyakit yang sangat umum ditemui. Penyakit ini disebabkan oleh berbagai jenis virus, dengan yang paling umum adalah Rhinovirus. Common Cold biasanya berdampak pada sistem pernapasan bagian atas tubuh manusia.', '1. Minum air<br>\r\n2. Baca'),
(2, 'P2', 'Faringitis', 'suatu kondisi yang ditandai dengan peradangan atau pembengkakan pada faring, bagian belakang tenggorokan yang berada di antara amandel dan laring. Faringitis bisa disebabkan oleh infeksi virus, bakteri, atau faktor lain seperti merokok, mulut kering, dan alergi.', ''),
(3, 'P3', 'Laringitis', 'Laringitis adalah suatu kondisi yang ditandai dengan peradangan atau pembengkakan pada laring, bagian dari tenggorokan yang berfungsi sebagai jalur udara menuju paru-paru dan juga tempat vokal pita berada. Peradangan ini biasanya menyebabkan suara serak atau hilangnya suara.', ''),
(4, 'P4', 'Bronkitis', 'Bronkitis adalah suatu kondisi medis yang ditandai dengan peradangan atau pembengkakan pada bronkus, saluran utama yang membawa udara ke dalam dan keluar dari paru-paru. Bronkitis bisa disebabkan oleh infeksi virus, bakteri, atau oleh iritasi seperti asap rokok.', ''),
(30, 'P6', 'Pertusis', 'Pertusis, atau yang lebih dikenal sebagai batuk rejan (whooping cough), adalah infeksi saluran pernapasan yang sangat menular yang disebabkan oleh bakteri Bordetella pertussis. Infeksi ini menyebabkan batuk kering yang parah dan tak terkendali, yang seringkali diikuti oleh suara tarikan napas tinggi yang terdengar seperti \"whoop\".', ''),
(31, 'P7', 'Bronkiolitis', 'Bronkiolitis adalah infeksi saluran pernapasan yang mempengaruhi bronkiolus, saluran pernapasan kecil yang menuju ke paru-paru. Penyakit ini paling sering mempengaruhi bayi dan anak-anak di bawah usia dua tahun, dan biasanya disebabkan oleh virus, terutama virus sincisial pernapasan (RSV).', ''),
(32, 'P8', 'Pneumonia', 'Pneumonia adalah kondisi yang menyebabkan peradangan pada jaringan paru-paru, biasanya disebabkan oleh infeksi. Ini terjadi ketika alveoli, kantung udara kecil di paru-paru, terisi dengan cairan atau nanah. Pneumonia dapat mengakibatkan kesulitan bernapas dan mempengaruhi oksigen yang mencapai aliran darah.', ''),
(33, 'P9', 'Epiglotitis', 'Epiglotitis adalah suatu kondisi serius yang disebabkan oleh pembengkakan pada epiglotis, suatu lembaran kecil jaringan kartilago di belakang lidah yang melapisi lubang laring (pangkal tenggorokan). Pembengkakan ini dapat menutup saluran napas, menyebabkan kesulitan bernapas dan berpotensi mengancam nyawa.', ''),
(34, 'P10', 'Pleuritis', 'leuritis, juga dikenal sebagai radang selaput dada, adalah kondisi yang ditandai dengan peradangan atau pembengkakan pada pleura, yang merupakan lapisan tipis dua lembaran yang melapisi rongga dada dan paru-paru. Pleuritis biasanya menyebabkan rasa sakit dada yang tajam saat bernapas atau batuk.', ''),
(29, 'P5', 'Sinusitis', 'Sinusitis adalah kondisi medis yang ditandai dengan peradangan atau pembengkakan pada jaringan yang melapisi sinus. Pada umumnya, sinus seharusnya terisi udara, namun saat sinus tersumbat dan diisi oleh cairan, kuman dapat tumbuh dan menyebabkan infeksi.', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rules`
--

CREATE TABLE `tb_rules` (
  `id_rules` int(11) NOT NULL,
  `id_gejala` int(11) DEFAULT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `belief` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_rules`
--

INSERT INTO `tb_rules` (`id_rules`, `id_gejala`, `id_penyakit`, `belief`) VALUES
(1, 1, 3, 0.6),
(2, 2, 4, 0.7),
(3, 3, 2, 0.5),
(4, 4, 3, 0.4),
(5, 5, 3, 0.5),
(6, 6, 3, 0.5),
(7, 7, 1, 0.4),
(8, 8, 1, 0.7),
(9, 9, 1, 0.6),
(10, 10, 1, 0.3),
(11, 11, 1, 0.6),
(12, 12, 2, 0.6),
(13, 13, 2, 0.3),
(14, 14, 2, 0.7),
(15, 15, 4, 0.8),
(17, 8, 32, 1),
(18, 9, 32, 1),
(19, 38, 1, 0),
(20, 40, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rules`
--
ALTER TABLE `tb_rules`
  ADD PRIMARY KEY (`id_rules`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_rules`
--
ALTER TABLE `tb_rules`
  MODIFY `id_rules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
