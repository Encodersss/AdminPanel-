-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 20 Eki 2018, 19:13:51
-- Sunucu sürümü: 5.7.21
-- PHP Sürümü: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
 CREATE TABLE IF NOT EXISTS `admintbl` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_realname` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `admin_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `admin_sifre` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `admin_foto` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admintbl`
--
CREATE TABLE IF NOT EXISTS `blog` (
  `makale_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `makale_tarih` date NOT NULL,
  `makale_baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `baslik_id` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `makale_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `makale_resim` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `makale_url` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`makale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


CREATE TABLE IF NOT EXISTS `galeri` (
  `galeri_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seri_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `model_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `boyut` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `agirlik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `malzeme` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `resim_ad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`galeri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--
CREATE TABLE IF NOT EXISTS `gelenform` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `hakkimizda_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `giris` text COLLATE utf8_turkish_ci NOT NULL,
  `ortak1_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ortak1_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `ortak2_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ortak2_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`hakkimizda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

CREATE TABLE IF NOT EXISTS `iletisim` (
  `iletisim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sirket_ad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`iletisim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


CREATE TABLE IF NOT EXISTS `sosyal_medya` (
  `sosyal_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `google_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sosyal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
