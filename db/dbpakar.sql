-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2023 at 12:00 AM
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
(1, 'P1', 'Common Cold (Batuk Pilek)', 'Common Cold, atau lebih dikenal dengan Batuk Pilek dalam Bahasa Indonesia, adalah salah satu jenis penyakit yang sangat umum ditemui. Penyakit ini disebabkan oleh berbagai jenis virus, dengan yang paling umum adalah Rhinovirus. Common Cold biasanya berdampak pada sistem pernapasan bagian atas tubuh manusia.', '1. <b>Istirahat yang cukup.</b> Tubuh memerlukan banyak energi untuk melawan virus, jadi pastikan untuk mendapatkan banyak istirahat. <br>\r\n2. <b>Minum banyak air.</b> Air dapat membantu mencairkan lendir dan meringankan gejala seperti tenggorokan yang kering dan sakit.<br>\r\n3. <b>Makanan bergizi.</b> Konsumsi makanan yang kaya akan Vitamin C dan Vitamin E yang dapat membantu memperkuat sistem kekebalan tubuh.<br>\r\n4. <b>Penggunaan obat-obatan.</b> Ada banyak obat bebas tanpa resep yang dapat membantu meredakan gejala, seperti dekongestan untuk hidung, obat batuk, dan obat penghilang rasa sakit.<br>\r\n5. <b>Jaga kebersihan.</b> Cuci tangan Anda secara teratur dan hindari kontak dengan orang yang sedang menderita batuk dan pilek untuk mencegah penyebaran penyakit ini.<br>'),
(2, 'P2', 'Faringitis', 'suatu kondisi yang ditandai dengan peradangan atau pembengkakan pada faring, bagian belakang tenggorokan yang berada di antara amandel dan laring. Faringitis bisa disebabkan oleh infeksi virus, bakteri, atau faktor lain seperti merokok, mulut kering, dan alergi.', '1. <b>Minum Banyak Cairan.</b> Air hangat atau teh bisa membantu meredakan sakit tenggorokan. Hindari kafein dan alkohol yang bisa membuat tenggorokan kering.<br>\r\n\r\n2. <b>Konsumsi Makanan Lunak.</b> Soup, bubur, atau makanan yang mudah ditelan dapat memberikan kenyamanan.<br>\r\n\r\n3. <b>Gunakan Pelembab Udara.</b> Jika udara di rumah terlalu kering, ini bisa memperberat kondisi tenggorokan. Menggunakan humidifier bisa membantu meringankan gejala.<br>\r\n\r\n4. <b>Istirahat yang Cukup.</b> Istirahat membantu tubuh memulihkan diri dan melawan infeksi.<br>\r\n\r\n5. <b>Jangan Merokok.</b> Asap rokok bisa memperburuk iritasi pada tenggorokan.<br>'),
(3, 'P3', 'Laringitis', 'Laringitis adalah suatu kondisi yang ditandai dengan peradangan atau pembengkakan pada laring, bagian dari tenggorokan yang berfungsi sebagai jalur udara menuju paru-paru dan juga tempat vokal pita berada. Peradangan ini biasanya menyebabkan suara serak atau hilangnya suara.', '1. <b>Istirahat Suara.</b> Hindari berbicara atau berteriak lebih dari yang perlu untuk memberikan istirahat pada vokal pita.<br>\r\n\r\n2. <b>Minum Banyak Cairan.</b> Air hangat atau teh bisa membantu meredakan sakit tenggorokan dan menjaga hidrasi.<br>\r\n\r\n3. <b>Menghindari Asap Rokok.</b> Asap rokok bisa memperparah laringitis dan menghambat penyembuhan.<br>\r\n\r\n4. <b>Gunakan Penghalau Udara.</b> Jika udara di rumah Anda terlalu kering, hal ini bisa membuat gejala laringitis memburuk. Pertimbangkan penggunaan humidifier.<br>\r\n\r\n5. <b>Konsumsi Makanan Lunak.</b> Makanan yang mudah ditelan, seperti jus atau bubur, dapat meredakan sakit tenggorokan.<br>'),
(4, 'P4', 'Bronkitis', 'Bronkitis adalah suatu kondisi medis yang ditandai dengan peradangan atau pembengkakan pada bronkus, saluran utama yang membawa udara ke dalam dan keluar dari paru-paru. Bronkitis bisa disebabkan oleh infeksi virus, bakteri, atau oleh iritasi seperti asap rokok.', '1. <b>Berhenti Merokok.</b> Asap rokok memperburuk bronkitis dan menghambat penyembuhan.<br>\r\n\r\n2. <b>Hidrasi.</b> Minum banyak air bisa membantu melembutkan lendir dan membuat batuk lebih efektif.<br>\r\n\r\n3. <b>Udara yang Segar.</b> Udara yang sejuk dan segar dapat membantu mengurangi iritasi pada paru-paru.<br>\r\n\r\n4. <b>Istirahat yang cukup.</b> Istirahat membantu tubuh dalam melawan infeksi dan mempercepat proses pemulihan.<br>\r\n\r\n5. <b>Penggunaan Humidifier.</b> Alat ini dapat membantu menjaga kelembapan udara di rumah dan mengurangi iritasi pada bronkus.<br>'),
(30, 'P6', 'Pertusis', 'Pertusis, atau yang lebih dikenal sebagai batuk rejan (whooping cough), adalah infeksi saluran pernapasan yang sangat menular yang disebabkan oleh bakteri Bordetella pertussis. Infeksi ini menyebabkan batuk kering yang parah dan tak terkendali, yang seringkali diikuti oleh suara tarikan napas tinggi yang terdengar seperti \"whoop\".', '1. <b>Hubungi Dokter.</b> Segera konsultasikan gejala dengan dokter, karena kondisi ini memerlukan pengobatan antibiotik.<br>\r\n\r\n2. <b>Istirahat yang Cukup.</b> Istirahat membantu tubuh dalam melawan infeksi dan mempercepat proses penyembuhan.<br>\r\n\r\n3. <b>Minum Banyak Cairan.</b> Cairan membantu menjaga hidrasi dan meringankan gejala batuk.<br>\r\n\r\n4. <b>Gunakan Humidifier.</b> Humidifier dapat membantu menjaga kelembapan di ruangan dan meringankan gejala batuk.<br>\r\n\r\n5. <b>Hindari Kontak dengan Orang Lain.</b> Karena pertusis sangat menular, hindari kontak dengan orang lain, terutama dengan bayi dan mereka yang belum divaksin.<br>\r\n\r\n6. <b>Imunisasi.</b> Pastikan Anda dan anggota keluarga telah menerima vaksin DPT (Difteri, Pertusis, dan Tetanus) sesuai jadwal yang direkomendasikan.<br>'),
(31, 'P7', 'Bronkiolitis', 'Bronkiolitis adalah infeksi saluran pernapasan yang mempengaruhi bronkiolus, saluran pernapasan kecil yang menuju ke paru-paru. Penyakit ini paling sering mempengaruhi bayi dan anak-anak di bawah usia dua tahun, dan biasanya disebabkan oleh virus, terutama virus sincisial pernapasan (RSV).', '1. <b>Minum Banyak Cairan.</b> Memastikan anak meminum banyak cairan dapat mencegah dehidrasi dan membantu melembutkan lendir.<br>\r\n\r\n2. <b>Istirahat yang Cukup.</b> Istirahat sangat penting untuk membantu proses pemulihan anak.<br>\r\n\r\n3. <b>Posisi Tidur Tegak.</b> Jika memungkinkan, posisi tidur tegak bisa membantu anak bernapas lebih nyaman.<br>\r\n\r\n4. <b>Hindari Asap Rokok.</b> Asap rokok dapat memperburuk gejala bronkiolitis, jadi penting untuk memastikan bahwa anak tidak terpapar asap rokok.<br>\r\n\r\n5. <b>Pantau Gejala.</b >Pantau gejala anak dengan cermat. Jika gejala tidak membaik atau memburuk (misalnya, anak makan atau minum lebih sedikit dari biasanya, memiliki suhu tubuh tinggi, atau tampak pucat atau kebiruan), segera hubungi dokter.<br>\r\n\r\n6. <b>Berikan Meredakan Gejala.</b> Obat ringan seperti paracetamol atau ibuprofen (untuk anak berusia 3 bulan ke atas) dapat digunakan untuk meredakan demam dan nyeri. Selalu ikuti instruksi pada kemasan.<br>\r\n\r\n<b>Catatan:</b> Jangan berikan obat batuk atau pilek tanpa berkonsultasi dengan dokter. Obat-obatan tersebut tidak dianjurkan untuk anak di bawah usia 6 tahun.'),
(32, 'P8', 'Pneumonia', 'Pneumonia adalah kondisi yang menyebabkan peradangan pada jaringan paru-paru, biasanya disebabkan oleh infeksi. Ini terjadi ketika alveoli, kantung udara kecil di paru-paru, terisi dengan cairan atau nanah. Pneumonia dapat mengakibatkan kesulitan bernapas dan mempengaruhi oksigen yang mencapai aliran darah.', '1. <b>Konsultasikan dengan Dokter.</b> Jika Anda mengalami gejala pneumonia, sangat penting untuk mendapatkan penanganan medis. Pneumonia biasanya diobati dengan antibiotik, jadi kunjungan ke dokter adalah langkah pertama yang penting.<br>\r\n\r\n2. <b>Istirahat yang Cukup.</b> Tubuh membutuhkan energi ekstra untuk memerangi infeksi dan menyembuhkan paru-paru. Pastikan Anda tidur cukup dan menghindari aktivitas yang melelahkan.<br>\r\n\r\n3. <b>Minum Banyak Cairan.</b> Cairan membantu melarutkan lendir di paru-paru, membuat batuk lebih efektif. Pantau warna dan banyaknya urin untuk memastikan Anda terhidrasi dengan baik.<br>\r\n\r\n4. <b>Pantau Perubahan Gejala.</b> Jika gejala tidak membaik dalam beberapa hari, atau jika gejala memburuk, segera hubungi dokter.<br>\r\n\r\n5. <b>Ikuti Semua Instruksi Dokter.</b> Jika dokter meresepkan antibiotik, pastikan untuk mengambil seluruh seri, bahkan jika Anda mulai merasa lebih baik. Jangan berhenti mengambil antibiotik lebih awal, karena ini dapat mengakibatkan infeksi kembali atau menjadi resisten terhadap antibiotik.<br>\r\n\r\n6. <b>Hindari Asap Rokok.</b> Merokok atau terpapar asap rokok dapat memperburuk gejala pneumonia dan memperlambat pemulihan. Berusaha sebisa mungkin untuk menjauh dari asap rokok selama Anda sakit.<br>\r\n\r\n7. <b>Vaksinasi. </b> Untuk mencegah pneumonia, sangat penting untuk mendapatkan vaksinasi sesuai jadwal, khususnya vaksin pneumokokus dan vaksin flu tahunan.<br>'),
(33, 'P9', 'Epiglotitis', 'Epiglotitis adalah suatu kondisi serius yang disebabkan oleh pembengkakan pada epiglotis, suatu lembaran kecil jaringan kartilago di belakang lidah yang melapisi lubang laring (pangkal tenggorokan). Pembengkakan ini dapat menutup saluran napas, menyebabkan kesulitan bernapas dan berpotensi mengancam nyawa.', '1. <b>Bawa ke Rumah Sakit.</b> Epiglotitis adalah darurat medis. Jika seseorang menunjukkan gejala-gejala ini, segera bawa ke rumah sakit.<br>\r\n\r\n2. <b>Jangan Memasukkan Apapun ke Tenggorokan.</b> Jangan mencoba untuk melihat ke dalam tenggorokan orang tersebut atau memasukkan apapun ke dalam tenggorokan mereka, karena hal ini bisa memicu refleks tersendak yang dapat sepenuhnya menutup saluran napas.<br>\r\n\r\n3. <b>Mendorong Posisi Duduk.</b> Jika memungkinkan, bantu orang tersebut ke posisi duduk tegak. Posisi ini biasanya membuat napas sedikit lebih mudah.<br>\r\n\r\n4. <b>Jangan Menenangkan dengan Pembiusan.</b> Jangan mencoba untuk menenangkan orang tersebut dengan obat penenang atau pembiusan. Obat-obat ini bisa menurunkan fungsi pernapasan dan berpotensi memperburuk situasi.<br>\r\n\r\n5. <b>Imunisasi.</b> Salah satu penyebab epiglotitis adalah bakteri Haemophilus influenzae tipe b (Hib). Imunisasi Hib telah berhasil mengurangi jumlah kasus epiglotitis.'),
(34, 'P10', 'Pleuritis', 'leuritis, juga dikenal sebagai radang selaput dada, adalah kondisi yang ditandai dengan peradangan atau pembengkakan pada pleura, yang merupakan lapisan tipis dua lembaran yang melapisi rongga dada dan paru-paru. Pleuritis biasanya menyebabkan rasa sakit dada yang tajam saat bernapas atau batuk.', '1. <b>Mengambil Obat Pereda Nyeri.</b> Obat anti-inflamasi nonsteroid (NSAIDs), seperti ibuprofen, bisa membantu mengurangi rasa sakit dan peradangan.<br>\r\n\r\n2. <b>Berhenti Merokok.</b> Merokok bisa memperburuk kondisi pleuritis dan menghambat proses penyembuhan.<br>\r\n\r\n3. <b>Istirahat yang Cukup.</b> Istirahat membantu tubuh dalam proses penyembuhan dan melawan infeksi.<br>\r\n\r\n4. <b>Pengobatan untuk Penyebab.</b> Dokter akan mengobati penyebab dasar pleuritis, seperti infeksi bakteri atau virus.<br>\r\n\r\n5. <b>Pemeriksaan Medis Rutin.</b> Jika gejala tidak membaik atau memburuk setelah beberapa hari, sebaiknya segera hubungi dokter.<br>\r\n\r\n6. <b>Fisioterapi.</b> Dalam beberapa kasus, fisioterapi yang melibatkan latihan pernapasan dan teknik batuk efektif dapat membantu dalam proses pemulihan.<br>\r\n\r\n<b>Pada akhirnya,</b> penanganan kondisi medis seperti pleuritis harus selalu melibatkan nasihat profesional kesehatan.'),
(29, 'P5', 'Sinusitis', 'Sinusitis adalah kondisi medis yang ditandai dengan peradangan atau pembengkakan pada jaringan yang melapisi sinus. Pada umumnya, sinus seharusnya terisi udara, namun saat sinus tersumbat dan diisi oleh cairan, kuman dapat tumbuh dan menyebabkan infeksi.', '1. <b>Minum Banyak Cairan.</b> Cairan membantu melembutkan lendir dan memudahkan pengeluaran lendir.<br>\r\n\r\n2. <b>Gunakan Humidifier.</b> Humidifier dapat membantu menjaga kelembapan di ruangan dan meringankan gejala sinusitis.<br>\r\n\r\n3. <b>Istirahat yang Cukup.</b> Istirahat dapat membantu tubuh melawan infeksi dan mempercepat proses penyembuhan.<br>\r\n\r\n4. <b>Hindari Udara Dingin.</b> Udara dingin bisa memperparah gejala sinusitis. Selalu gunakan penutup hidung dan mulut saat berada di lingkungan dingin.<br>\r\n\r\n5. <b>Irigasi Hidung.</b> Menggunakan neti pot atau solusi saline spray bisa membantu mengurangi pembengkakan dan membersihkan sinus dari lendir.<br>');

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
(28, 8, 1, 0.8),
(30, 2, 2, 0.6),
(24, 4, 1, 0.4),
(27, 7, 1, 0.8),
(26, 6, 1, 0.6),
(25, 5, 1, 0.4),
(39, 13, 2, 0.4),
(38, 12, 2, 0.6),
(37, 11, 2, 0.4),
(36, 10, 2, 0.4),
(35, 9, 2, 1),
(23, 3, 1, 1),
(22, 2, 1, 1),
(21, 1, 1, 0.8),
(109, 22, 1, 0.6),
(32, 6, 2, 0.8),
(31, 5, 2, 1),
(34, 8, 2, 0.4),
(33, 7, 2, 0.4),
(40, 14, 2, 1),
(41, 2, 3, 0.6),
(42, 3, 3, 0.4),
(43, 5, 3, 1),
(44, 6, 3, 0.6),
(45, 8, 3, 0.4),
(46, 9, 3, 0.8),
(47, 14, 3, 0.8),
(48, 3, 4, 0.6),
(49, 7, 4, 0.4),
(50, 11, 4, 0.4),
(51, 15, 4, 1),
(52, 22, 4, 1),
(53, 23, 4, 0.8),
(54, 24, 4, 1),
(55, 33, 4, 0.6),
(56, 4, 29, 0.4),
(57, 7, 29, 0.4),
(58, 15, 29, 0.6),
(59, 23, 29, 1),
(60, 25, 29, 1),
(61, 26, 29, 1),
(62, 27, 29, 0.8),
(63, 28, 29, 0.6),
(64, 38, 29, 0.8),
(65, 2, 30, 0.8),
(66, 3, 30, 0.6),
(67, 8, 30, 0.4),
(68, 11, 30, 0.6),
(69, 15, 30, 0.6),
(70, 29, 30, 1),
(71, 30, 30, 0.8),
(118, 40, 30, 1),
(73, 2, 31, 0.4),
(116, 27, 31, 0.8),
(75, 8, 31, 0.4),
(115, 13, 31, 1),
(77, 15, 31, 0.8),
(78, 29, 31, 0.6),
(79, 30, 31, 1),
(114, 12, 31, 1),
(81, 8, 32, 0.6),
(82, 11, 32, 0.4),
(83, 13, 32, 0.6),
(84, 15, 32, 1),
(85, 22, 32, 0.6),
(86, 24, 32, 0.8),
(88, 32, 32, 1),
(89, 33, 32, 1),
(90, 34, 32, 0.4),
(91, 5, 33, 0.4),
(92, 8, 33, 0.4),
(93, 9, 33, 0.4),
(94, 10, 33, 0.6),
(95, 15, 33, 0.8),
(96, 29, 33, 0.6),
(97, 30, 33, 0.8),
(98, 35, 33, 1),
(99, 6, 34, 0.8),
(100, 7, 34, 0.4),
(101, 8, 34, 0.6),
(102, 12, 34, 0.4),
(103, 15, 34, 1),
(104, 22, 34, 0.6),
(105, 24, 34, 0.8),
(106, 27, 34, 0.8),
(107, 36, 34, 1),
(108, 37, 34, 1),
(110, 23, 1, 1),
(111, 39, 3, 1),
(117, 31, 31, 0.6);

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
  MODIFY `id_rules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;
