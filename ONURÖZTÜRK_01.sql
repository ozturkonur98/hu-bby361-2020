-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Kas 2020, 21:18:57
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
-- Veritabanı: `onurozturk_16`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eserler`
--

CREATE TABLE `eserler` (
  `EserKayıtNO` smallint(6) NOT NULL COMMENT 'Eserin ana anahtarı',
  `EserKayıtTARİHİ` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Eserin kayıt tarihi',
  `EserinAdı` varchar(120) NOT NULL COMMENT 'Eserin adı',
  `EserISBN` varchar(13) NOT NULL COMMENT 'Eserin ISBN numarası',
  `EserinBTarihi` year(4) NOT NULL COMMENT 'Eserin Basım Tarihi',
  `EserinBYeri` varchar(50) NOT NULL COMMENT 'Eserin Basım Yeri'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='eserler ile ilgili temel bilgiler';

--
-- Tablo döküm verisi `eserler`
--

INSERT INTO `eserler` (`EserKayıtNO`, `EserKayıtTARİHİ`, `EserinAdı`, `EserISBN`, `EserinBTarihi`, `EserinBYeri`) VALUES
(1, '2020-11-03 19:33:08', 'KASSANDRA DAMGASI', ' 978975247317', 2017, 'İSTANBUL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayıneviKayıtNO` int(11) DEFAULT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `YayıneviKayıtTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt taeihi',
  `YayıneviAdı` varchar(100) NOT NULL COMMENT 'Yayınevi adı',
  `YayıneviURL` varchar(100) NOT NULL COMMENT 'Yayınevi internet adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YAYINEVİ BİLGİLERİ';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayıneviKayıtNO`, `YayıneviKayıtTarihi`, `YayıneviAdı`, `YayıneviURL`) VALUES
(NULL, '2020-11-03 20:06:14', 'NORA', 'http://norakitap.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayıtNO` smallint(6) NOT NULL COMMENT 'YAZARIN KAYIT NUMARASI',
  `YazarKayıtTARİH` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'YAZARIN KAYIT TARİHİ',
  `YazarAdı` varchar(100) NOT NULL COMMENT 'YAZARIN ADI',
  `YazarSoyadı` varchar(100) NOT NULL COMMENT 'YAZARIN SOYADI',
  `YazarURL` varchar(100) DEFAULT NULL COMMENT 'YAZARIN İNTERNET SİTESİ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YAZAR TABLOSU';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayıtNO`, `YazarKayıtTARİH`, `YazarAdı`, `YazarSoyadı`, `YazarURL`) VALUES
(1, '2020-11-03 19:47:39', 'CENGİZ', 'AYTMATOV', 'https://www.idefix.com/yazar/cengiz-aytmatov/s=261922');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eserler`
--
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`EserKayıtNO`),
  ADD UNIQUE KEY `EserKayıtNO` (`EserKayıtNO`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`YazarKayıtNO`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eserler`
--
ALTER TABLE `eserler`
  MODIFY `EserKayıtNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Eserin ana anahtarı', AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `YazarKayıtNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'YAZARIN KAYIT NUMARASI', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
