-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 23:37:30
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `onurozturk_final`
--
CREATE DATABASE IF NOT EXISTS `onurozturk_final` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onurozturk_final`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eserler`
--

CREATE TABLE `eserler` (
  `EserKayitNO` smallint(6) NOT NULL COMMENT 'Eserin ana anahtarı',
  `EserKayitTARIHI` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Eserin kayıt tarihi',
  `EserinAdi` varchar(120) NOT NULL COMMENT 'Eserin adı',
  `EserISBN` varchar(13) NOT NULL COMMENT 'Eserin ISBN numarası',
  `EserinBTarihi` year(4) NOT NULL COMMENT 'Eserin Basım Tarihi',
  `EserinBYeri` varchar(50) NOT NULL COMMENT 'Eserin Basım Yeri',
  `YayineviKayitNO` int(11) NOT NULL COMMENT 'Yayınevinin kayıt numarasını gösterir',
  `YazarKayitNO` int(11) NOT NULL COMMENT 'Yazarın Kayıt No''sunu gösterir.',
  `EserAciklama` text NOT NULL COMMENT 'Eserin açıklaması'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='eserler ile ilgili temel bilgiler';

--
-- Tablo döküm verisi `eserler`
--

INSERT INTO `eserler` (`EserKayitNO`, `EserKayitTARIHI`, `EserinAdi`, `EserISBN`, `EserinBTarihi`, `EserinBYeri`, `YayineviKayitNO`, `YazarKayitNO`, `EserAciklama`) VALUES
(1, '2020-11-03 19:33:08', 'KASSANDRA DAMGASI', ' 978975247317', 2017, 'İSTANBUL', 2, 5, 'Kassandra damgası adlı eser 2017 tarihinde basılmış bir eserdir.'),
(2, '2020-12-01 18:58:00', 'Geçmişe Yolculuk', '9786052953440', 2018, 'İSTANBUL', 2, 2, 'Bu eser 2018 yılında Istanbul\'da basılmıştır.'),
(3, '2020-12-01 19:07:23', ' Yaşamın Ucuna Yolculuk', ' 978975083280', 2015, 'İSTANBUL', 4, 3, 'Yaşamın Ucuna Yolculuk biyografi türünde bir eserdir.'),
(4, '2020-12-01 19:13:47', 'Hay Bin Yakzan', ' 278978586197', 1996, 'İSTANBUL', 5, 4, 'Eserimiz 12.yy dan bu yana hala kendini korumaktadır.'),
(5, '2020-12-01 19:22:27', ' Yaratma Cesareti', '9789753421904', 2015, 'İSTANBUL', 5, 5, '2015 yılında basılan versiyonu kütüphanemizde mevcuttur.'),
(6, '2020-12-01 19:40:27', 'Umberto Arte ile Sanat: Sanatçılar-Akımlar-Resimler-Mitoloji', '9786053116806', 2019, 'İSTANBUL', 6, 6, 'Bu eser okuyuculara bilgi veren, akıcı bir kitaptır.'),
(7, '2020-12-01 19:45:12', 'Tanrıçalar ve Tanrıçanın Dönüşümleri\r\n', ' 978625791323', 2020, 'İSTANBUL', 7, 7, '2020 yılı basımlı bu kitap raflarımızda yerini aldı!'),
(8, '2020-12-01 20:11:21', 'Efsaneler ve Mitler', '9786051061573', 2014, 'ANKARA', 8, 8, 'Dünyanın en ünlü efsane ve mitlerini merak mı ediyorsanız bu eseri öneririz.'),
(9, '2020-12-01 20:17:11', '80\'li Yıllarda Türkiye: Sazlı Cazli Sözlük-Yaprak Döker Bir Yanımız', '9789750846380', 2020, 'İSTANBUL', 10, 9, 'Eskiye dönmek isterseniz bu kitap tam sizlik!'),
(10, '2020-12-01 20:23:45', 'Harem - Gravürlerle Osmanlı Sarayı', ' 978975765187', 2011, 'İSTANBUL', 7, 2, 'Osmanlının tarihi saray duvarlarında kim bilir neler gerçekleşti.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayineviKayitNO` smallint(6) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `YayineviKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt taeihi',
  `YayineviAdi` varchar(100) NOT NULL COMMENT 'Yayınevi adı',
  `YayineviURL` varchar(100) NOT NULL COMMENT 'Yayınevi internet adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YAYINEVİ BİLGİLERİ';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayineviKayitNO`, `YayineviKayitTarihi`, `YayineviAdi`, `YayineviURL`) VALUES
(2, '2020-12-01 19:00:54', ' İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/'),
(3, '2020-12-01 19:09:18', 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/'),
(4, '2020-12-01 19:14:56', 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/'),
(5, '2020-12-01 19:23:47', ' Metis Yayıncılık', 'https://www.kitapyurdu.com/yayinevi/metis-yayinlari/81.html'),
(6, '2020-12-01 19:41:43', ' Destek Yayınları', 'https://www.dr.com.tr/yayinevi/destek-yayinlari/s=2561'),
(7, '2020-12-01 19:47:37', ' İthaki Yayınları', 'http://www.ithaki.com.tr/'),
(8, '2020-12-01 20:12:42', 'Alfa Yayıncılık', 'https://www.alfakitap.com/'),
(9, '2020-12-01 20:18:32', 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/'),
(10, '2020-12-01 20:25:43', 'Örgün Yayınları', 'http://www.orgunyayinevi.com.tr/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayitNO` smallint(6) NOT NULL COMMENT 'YAZARIN KAYIT NUMARASI',
  `YazarKayitTARIH` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'YAZARIN KAYIT TARİHİ',
  `YazarAdi` varchar(100) NOT NULL COMMENT 'YAZARIN ADI',
  `YazarSoyadi` varchar(100) NOT NULL COMMENT 'YAZARIN SOYADI',
  `YazarURL` varchar(100) DEFAULT NULL COMMENT 'YAZARIN İNTERNET SİTESİ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YAZAR TABLOSU';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayitNO`, `YazarKayitTARIH`, `YazarAdi`, `YazarSoyadi`, `YazarURL`) VALUES
(2, '2020-12-01 19:02:34', 'Stefan', 'Zweig', 'https://www.dr.com.tr/Yazar/stefan-zweig/s=125486'),
(3, '2020-12-01 19:11:16', 'Tezer', 'Özlü', 'https://kidega.com/yazar/tezer-ozlu-166589'),
(4, '2020-12-01 19:17:07', 'İbni', 'Tuffyl', 'https://www.dr.com.tr/Yazar/ibni-tuffyl/s=269166'),
(5, '2020-12-01 19:36:04', 'Rollo ', 'May', 'https://www.idefix.com/Yazar/rollo-may/s=219688'),
(6, '2020-12-01 19:42:36', 'Umberto', 'Arte', 'https://www.idefix.com/Yazar/umberto-arte/s=10092619'),
(7, '2020-12-01 19:49:34', 'Joseph', 'Campbell', 'https://www.pandora.com.tr/Yazar/joseph-campbell/3819'),
(8, '2020-12-01 20:13:51', 'Philip', 'Wilkinson', 'https://kidega.com/yazar/philip-wilkinson-153925'),
(9, '2020-12-01 20:19:29', 'Derya ', 'Bengi', 'https://kidega.com/yazar/derya-bengi-108664'),
(10, '2020-12-01 20:26:44', 'Nurer', 'Uğurlu', 'https://kidega.com/yazar/nurer-ugurlu-149422');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eserler`
--
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`EserKayitNO`),
  ADD UNIQUE KEY `EserISBN` (`EserISBN`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayineviKayitNO`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`YazarKayitNO`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eserler`
--
ALTER TABLE `eserler`
  MODIFY `EserKayitNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Eserin ana anahtarı', AUTO_INCREMENT=69;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayineviKayitNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `YazarKayitNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'YAZARIN KAYIT NUMARASI', AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
