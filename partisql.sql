-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Oca 2018, 16:28:04
-- Sunucu sürümü: 10.1.28-MariaDB
-- PHP Sürümü: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adayakp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `copyright` text COLLATE utf8_turkish_ci NOT NULL,
  `site_title` char(70) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_meta` char(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` char(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_mail_sifre` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_host` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_port` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_analytics` longtext COLLATE utf8_turkish_ci,
  `firma_telefon` longtext COLLATE utf8_turkish_ci NOT NULL,
  `firma_fax` longtext COLLATE utf8_turkish_ci NOT NULL,
  `firma_email` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adres` longtext CHARACTER SET latin5 NOT NULL,
  `footer_adres` text COLLATE utf8_turkish_ci NOT NULL,
  `google_maps` longtext COLLATE utf8_turkish_ci NOT NULL,
  `facebook` longtext COLLATE utf8_turkish_ci NOT NULL,
  `twitter` longtext COLLATE utf8_turkish_ci NOT NULL,
  `gplus` longtext COLLATE utf8_turkish_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_turkish_ci NOT NULL,
  `pinterest` longtext COLLATE utf8_turkish_ci NOT NULL,
  `firma_adi` longtext COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `copyright`, `site_title`, `site_meta`, `site_description`, `site_mail`, `site_logo`, `site_mail_sifre`, `site_mail_host`, `site_mail_port`, `google_analytics`, `firma_telefon`, `firma_fax`, `firma_email`, `firma_adres`, `footer_adres`, `google_maps`, `facebook`, `twitter`, `gplus`, `linkedin`, `pinterest`, `firma_adi`) VALUES
(1, 'http://www.youtube.com/chp', 'Aday Scripti V1', 'Aday Scripti V1', 'Aday Scripti V1', '', 'kunye.png', '', '', '', '', '05555555555', '05555555555', 'info@siteniz.com', 'Bu k?s?mda adresiniz bulunacak.', '', '', 'http://www.facebook.com.tr/chp', 'https://twitter.com/chp', ' <a class=\"twitter-timeline\" href=\"https://twitter.com/herkesicinCHP\" data-widget-id=\"572140363549519872\">@herkesicinCHP taraf?ndan g?nderilen tweetler</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\"://platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);}}(document,\"script\",\"twitter-wjs\");</script> ', '', '', 'Aday Scripti V1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destekleyenler`
--

CREATE TABLE `destekleyenler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `aciklama` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `destekleyenler`
--

INSERT INTO `destekleyenler` (`id`, `adi`, `sira`, `resim`, `durum`, `aciklama`) VALUES
(30, 'Aday Ad Soyad', 1, 'adayresmi.png', 1, '<p><span style=\"color:#D3D3D3\"><span style=\"font-size:11px\"><span style=\"font-family:open sans,arial,sans-serif\">Aday &Ouml;zge&ccedil;miş Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.</span></span></span></p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ebulten`
--

CREATE TABLE `ebulten` (
  `id` int(11) NOT NULL,
  `mail` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(25) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

CREATE TABLE `etkinlikler` (
  `id` int(11) NOT NULL,
  `konu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) NOT NULL,
  `tarih` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `aciklama` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`id`, `konu`, `adi`, `seo`, `tarih`, `sira`, `resim`, `durum`, `aciklama`) VALUES
(29, 'Gezi', 'Dememe Etkinlik 1', 'Dememe-Etkinlik-1', '2014-12-27', 1, '978_kadikoy-gezi-624x300.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.'),
(30, 'Davet', 'Dememe Etkinlik 2', 'Dememe-Etkinlik-2', '2015-02-14', 2, '7954_kilicdaroglu1.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.'),
(31, 'Toplant?', 'Dememe Etkinlik 3', 'Dememe-Etkinlik-3', '2014-12-30', 3, '3564_faik-306x141.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlik_galeri`
--

CREATE TABLE `etkinlik_galeri` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `etkinlik_galeri`
--

INSERT INTO `etkinlik_galeri` (`id`, `urun_id`, `resim`) VALUES
(31, 29, '1903_izmir1-211x194.jpg'),
(32, 30, '6371_2.jpg'),
(33, 31, '518_baskan.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faliyetler`
--

CREATE TABLE `faliyetler` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `faliyetler`
--

INSERT INTO `faliyetler` (`id`, `adi`, `seo`, `sira`, `aciklama`, `resim`, `durum`) VALUES
(14, 'Deneme Faliyet 1', 'Deneme-Faliyet-1', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.', '869_izmir1-200x120.jpg', 1),
(15, 'Deneme Faliyet 2', 'Deneme-Faliyet-2', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.', '7134_kadikoy-gezi-624x300.jpg', 1),
(16, 'Deneme Faliyet 3', 'Deneme-Faliyet-3', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.', '7231_tarih-200x120.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faliyet_galeri`
--

CREATE TABLE `faliyet_galeri` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `faliyet_galeri`
--

INSERT INTO `faliyet_galeri` (`id`, `urun_id`, `resim`) VALUES
(28, 10, '2800_samsun16.jpg'),
(31, 14, '7442_2.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf_galeri`
--

CREATE TABLE `fotograf_galeri` (
  `id` int(11) NOT NULL,
  `kategori` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fotograf_galeri`
--

INSERT INTO `fotograf_galeri` (`id`, `kategori`, `adi`, `sira`, `resim`, `durum`) VALUES
(68, '27', 'Foto 7', 7, '5545_images (4).jpg', 1),
(66, '27', 'Foto 5', 5, '8812_images (2).jpg', 1),
(67, '27', 'Foto 6', 6, '9682_images (3).jpg', 1),
(64, '27', 'Foto 3', 3, '2329_d7000-ile-cekilmis-fotolar-05.jpg', 1),
(65, '27', 'Foto 4', 4, '5139_images (1).jpg', 1),
(59, '23', 'Foto 3', 3, '7887_images (2).jpg', 1),
(58, '23', 'Foto 2', 2, '4450_images (4).jpg', 1),
(54, '22', 'Foto 3', 3, '8039_d7000-ile-cekilmis-fotolar-05.jpg', 1),
(55, '22', 'Foto 4', 4, '9780_images (1).jpg', 1),
(56, '22', 'Foto 5', 5, '2317_images (2).jpg', 1),
(53, '22', 'Foto 2', 2, '4378_Canakkale-Sehri-Manzara-proje-galerisi_968_7d056.jpg', 1),
(69, '27', 'Foto 8', 8, '3868_images.jpg', 1),
(74, '28', 'Onur Turizm', 3, '8280_izmir.jpg', 1),
(71, '23', 'Onur Turizm', 2, '1024_kilicdaroglu-erdogan.jpg', 1),
(73, '28', 'Test Referans', 1, '900_baskan.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf_galeri_kategori`
--

CREATE TABLE `fotograf_galeri_kategori` (
  `id` int(15) NOT NULL,
  `sira` int(15) NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci NOT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fotograf_galeri_kategori`
--

INSERT INTO `fotograf_galeri_kategori` (`id`, `sira`, `seo`, `kategori_adi`, `kategori_resim`, `durum`) VALUES
(30, 3, 'Kategori-3', 'Kategori 3', '3.jpg', 1),
(28, 1, 'Kategori-1', 'Kategori 1', 'gece_200x120.jpg', 1),
(29, 2, 'Kategori-2', 'Kategori 2', '4.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `urun_id`, `resim`) VALUES
(26, 10, '7924_2.jpg'),
(25, 10, '9664_1.jpg'),
(36, 14, '9903_kadikoy-gezi-200x92.jpg'),
(37, 17, '7002_izmir1-211x194.jpg'),
(35, 14, '3316_cesme-148x97.jpg'),
(38, 18, '9953_izmir1-200x120.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `tarih` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `adi`, `sira`, `aciklama`, `resim`, `durum`, `tarih`) VALUES
(1, '', 0, '<p>xzcxzc</p>\r\n', 'no-image', 1, '12.09.2013');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` text COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL,
  `firma` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `durum` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayit`
--

CREATE TABLE `kayit` (
  `ip` varchar(20) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `id` smallint(20) NOT NULL DEFAULT '0',
  `baslik` text COLLATE utf8_turkish_ci NOT NULL,
  `isim1` varchar(30) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `isim2` varchar(30) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `isim3` varchar(30) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `isim4` varchar(30) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `isim5` varchar(30) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `kutu1` int(20) NOT NULL DEFAULT '0',
  `kutu2` varchar(20) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `kutu3` varchar(20) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `kutu4` varchar(20) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `kutu5` varchar(20) COLLATE utf8_turkish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kayit`
--

INSERT INTO `kayit` (`ip`, `id`, `baslik`, `isim1`, `isim2`, `isim3`, `isim4`, `isim5`, `kutu1`, `kutu2`, `kutu3`, `kutu4`, `kutu5`) VALUES
('127.0.0.1', 0, 'Sitemizi Nas?l Buldunuz?', 'S?per', 'Bay?ld?m', 'Ger?ekten ?yi', 'Geli?tirilebilir.', 'Berbat', 1, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `manset`
--

CREATE TABLE `manset` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `durum` int(3) NOT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `manset`
--

INSERT INTO `manset` (`id`, `adi`, `seo`, `sira`, `resim`, `durum`, `aciklama`) VALUES
(18, 'Test Haber 2', 'Test-Haber-2', 2, 'sanat.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.'),
(19, 'Test Haber 3', 'Test-Haber-3', 3, 'kilicdaroglu_625x288.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.'),
(20, 'Test Haber 4', 'Test-Haber-4', 4, 'kadikoy_gezi_624x300.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.'),
(14, 'Test Haber 1', 'Test-Haber-1', 1, 'kilicdaroglu_erdogan.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales pretium quam sit amet varius. Sed cursus suscipit enim. Cras lobortis lobortis ex feugiat ullamcorper. Aenean sit amet massa ut purus congue fringilla. Aenean urna ipsum, dictum nec suscipit vitae, laoreet eget arcu. Curabitur lobortis interdum magna ac venenatis. Pellentesque tellus enim, luctus ut mi a, cursus interdum tortor. Nullam laoreet mattis interdum. Aenean cursus tellus vitae diam feugiat, vel suscipit enim fermentum. Quisque malesuada erat massa.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `adi`, `seo`, `sira`, `aciklama`, `resim`, `durum`) VALUES
(18, 'Parti Adı Parti Genel', 'Parti-Adi-Parti-Genel', 1, '#', '', 1),
(19, 'Parti Adı İstanbul', 'Parti-Adi-Istanbul', 2, '#', '', 1),
(20, 'Parti Adı İzmir', 'Parti-Adi-Izmir', 3, '#', '', 1),
(21, 'Parti Adı Kadın Kolları', 'Parti-Adi-Kadin-Kollari', 4, '#', '', 1),
(22, 'Parti Adı Gençlik Kolları', 'Parti-Adi-Genclik-Kollari', 5, '#', '', 1),
(23, 'Parti Adı Büyük Şehir Belediyesi', 'Parti-Adi-Buyuk-Sehir-Belediyesi', 6, '#', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

CREATE TABLE `urun_kategori` (
  `id` int(11) NOT NULL,
  `sira` int(11) NOT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci NOT NULL,
  `kategori_resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun_kategori`
--

INSERT INTO `urun_kategori` (`id`, `sira`, `kategori_adi`, `kategori_resim`, `durum`, `tarih`) VALUES
(2, 1, 'Devameden', 'no-image', 1, '2011-03-20 12:00:00'),
(3, 2, 'Tamamlanan', 'no-image', 1, '2011-03-20 12:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `gorev` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `aciklama` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `aciklama` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `video`
--

INSERT INTO `video` (`id`, `adi`, `seo`, `sira`, `resim`, `durum`, `aciklama`) VALUES
(27, 'Deneme Video 1', 'Deneme-Video-1', 1, '3101_kilicdaroglu1.jpg', 1, 'pIkTbToi_E4'),
(28, 'Deneme Video 2', 'Deneme-Video-2', 2, '8739_izmir1.jpg', 1, 'hXj7gmhI80w'),
(29, 'Deneme Video 3', 'Deneme-Video-3', 3, '3071_kadikoy-gezi.jpg', 1, 'w6ZDQLyfz3U');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `yonetici_id` int(11) NOT NULL,
  `yonetici_ad_soyad` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_kullanici` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_sifre` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_email` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_son_giris` char(55) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`yonetici_id`, `yonetici_ad_soyad`, `yonetici_kullanici`, `yonetici_sifre`, `yonetici_email`, `yonetici_son_giris`) VALUES
(1, 'Aday Scripti V1', 'admin', 'admin', 'info@siteniz.com', '01.03.2015');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `destekleyenler`
--
ALTER TABLE `destekleyenler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ebulten`
--
ALTER TABLE `ebulten`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `etkinlikler`
--
ALTER TABLE `etkinlikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `etkinlik_galeri`
--
ALTER TABLE `etkinlik_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `faliyetler`
--
ALTER TABLE `faliyetler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `faliyet_galeri`
--
ALTER TABLE `faliyet_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fotograf_galeri`
--
ALTER TABLE `fotograf_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fotograf_galeri_kategori`
--
ALTER TABLE `fotograf_galeri_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kayit`
--
ALTER TABLE `kayit`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `manset`
--
ALTER TABLE `manset`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_kategori`
--
ALTER TABLE `urun_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`yonetici_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayar`
--
ALTER TABLE `ayar`
  MODIFY `ayar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `destekleyenler`
--
ALTER TABLE `destekleyenler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `ebulten`
--
ALTER TABLE `ebulten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikler`
--
ALTER TABLE `etkinlikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlik_galeri`
--
ALTER TABLE `etkinlik_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `faliyetler`
--
ALTER TABLE `faliyetler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `faliyet_galeri`
--
ALTER TABLE `faliyet_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `fotograf_galeri`
--
ALTER TABLE `fotograf_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Tablo için AUTO_INCREMENT değeri `fotograf_galeri_kategori`
--
ALTER TABLE `fotograf_galeri_kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3043;

--
-- Tablo için AUTO_INCREMENT değeri `manset`
--
ALTER TABLE `manset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategori`
--
ALTER TABLE `urun_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `yonetici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
