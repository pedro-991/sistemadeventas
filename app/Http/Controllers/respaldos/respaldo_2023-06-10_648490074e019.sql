SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `sistemaventas`
--




CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direccion',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO clientes VALUES
("1","PEDRO MATA","V-19870216","0424-9156545","LA SABANITA CALLE CHACAITO CASA #16","2022-10-20 08:01:10","2023-05-02 12:00:24"),/*soy foreach */;
("3","** CLIENTE CONTADO **","V00000000","0000-0000000","direccion","2023-01-23 07:01:41","2023-02-15 21:17:37"),/*soy foreach */;
("4","CARMEN MAESTRE","","0000-0000000","direccion","2023-01-23 08:14:07","2023-01-23 08:14:07"),/*soy foreach */;
("5","YOSBEIDIS CARVAJAL","","0000-0000000","direccion","2023-01-23 08:49:42","2023-01-23 08:49:42"),/*soy foreach */;
("6","LISBET APONTE","","0000-0000000","direccion","2023-01-23 10:04:57","2023-01-23 10:04:57"),/*soy foreach */;
("7","ELVIA GARCIA","","0000-0000000","direccion","2023-01-24 08:32:57","2023-01-24 08:32:57"),/*soy foreach */;
("8","DANIUSKA PARRA","","0000-0000000","direccion","2023-01-26 07:41:50","2023-01-26 07:41:50"),/*soy foreach */;
("9","ROSA CARPIO","","0000-0000000","direccion","2023-02-03 07:58:53","2023-02-03 07:58:53"),/*soy foreach */;
("10","DAIRELIS MENDOZA","","0000-000000","direccion","2023-02-06 08:40:50","2023-02-06 08:40:50"),/*soy foreach */;
("11","GILBERTO FIGARELLA","","0000-0000000","direccion","2023-02-09 11:42:46","2023-02-09 11:42:46"),/*soy foreach */;
("12","FATIMA VALDEZ","","0000-000000","direccion","2023-02-13 10:21:34","2023-02-13 10:21:34"),/*soy foreach */;
("13","PEDRO PEREZ","J123456780","0000-0000000","direccion","2023-02-17 11:20:55","2023-02-17 11:20:55"),/*soy foreach */;
("14","KARINA VALLEZ","V12185941","0000-0000","direccion","2023-02-18 08:52:48","2023-02-18 08:54:57"),/*soy foreach */;
("15","ANNEL ROJAS","V16649377","0000-0000000","direccion","2023-02-18 09:15:12","2023-02-18 09:15:12"),/*soy foreach */;
("16","REIDY GARCIA","V-21540754","0000-0000000","LOS PROCERES MANZANA 3 CASA #48","2023-02-20 06:32:27","2023-05-02 11:59:28"),/*soy foreach */;
("17","YINESKA LEDEZMA","V14949715","0000-0000000","direccion","2023-02-20 07:38:38","2023-02-20 07:38:38"),/*soy foreach */;
("18","ZULEIDY BARROSO","V24038553","0000-0000000","direccion","2023-02-20 10:44:21","2023-02-20 10:44:21"),/*soy foreach */;
("19","PEDRO AYALA","V8889457","0000-0000000","direccion","2023-02-20 12:11:27","2023-02-20 12:11:27"),/*soy foreach */;
("20","ARMANDO MARTINEZ","25494998","0000-0000000","direccion","2023-02-20 12:26:02","2023-02-20 12:26:02"),/*soy foreach */;
("21","ADRIANA FARIAS","V26870145","0000-0000000","direccion","2023-02-21 08:50:21","2023-02-21 08:50:21"),/*soy foreach */;
("22","GLIZMAR PEREZ","V24849280","0000-0000000","direccion","2023-02-21 11:12:51","2023-02-21 11:12:51"),/*soy foreach */;
("23","GENESIS DIAZ","V21578147","0000-0000000","direccion","2023-02-23 09:16:59","2023-02-23 09:16:59"),/*soy foreach */;
("24","MARLY ZILIANI","V14517213","0000-0000000","direccion","2023-02-24 10:54:40","2023-02-24 10:54:40"),/*soy foreach */;
("25","GABRIEL GONZALEZ","V19382931","0000-000000","direccion","2023-02-25 06:48:45","2023-02-25 06:48:45"),/*soy foreach */;
("26","ZODI BOLIVAR","G200113537","0000-000000","direccion","2023-02-25 07:11:18","2023-02-25 07:11:18"),/*soy foreach */;
("27","YAQUELIN TAPIA","V14652749","0000-0000000","direccion","2023-02-25 07:45:41","2023-02-25 07:45:41"),/*soy foreach */;
("28","SUGEILY PEREZ","V20639426","0000-0000000","direccion","2023-02-25 08:56:38","2023-02-25 08:56:38"),/*soy foreach */;
("29","DEYANIRA URBINA","V8895070","0000-0000000","direccion","2023-02-28 07:59:39","2023-02-28 07:59:39"),/*soy foreach */;
("30","CRISTINA OLIVARES","V28111264","0000-0000000","direccion","2023-02-28 08:30:05","2023-02-28 08:30:05"),/*soy foreach */;
("31","JOHANA GRIZMON","V18623631","0000-0000000","direccion","2023-02-28 09:06:16","2023-02-28 09:06:16"),/*soy foreach */;
("32","ANA ROSALES","V12806758","0000-0000000","direccion","2023-02-28 09:23:10","2023-02-28 09:23:10"),/*soy foreach */;
("33","NURBIS PALOMO","V24891031","0000-0000000","direccion","2023-03-01 07:24:30","2023-03-01 07:24:30"),/*soy foreach */;
("34","NIRMIA AMARISTA","V8451917","0000-0000000","direccion","2023-03-01 10:04:11","2023-03-01 10:04:11"),/*soy foreach */;
("35","DIANA ZAMORA","V11172347","0000-0000000","direccion","2023-03-02 08:59:08","2023-03-02 08:59:08"),/*soy foreach */;
("36","ADAME ADAME","V23519070","0000-0000000","direccion","2023-03-03 07:07:28","2023-03-03 07:07:28"),/*soy foreach */;
("37","LILIA SIFONTES","V19078082","0000-0000000","direccion","2023-03-03 07:46:32","2023-03-03 07:46:32"),/*soy foreach */;
("38","ROSMARI","V28352567","0000-0000000","direccion","2023-03-03 11:15:18","2023-03-03 11:15:18"),/*soy foreach */;
("39","MARLIN CARPIO","V15617873","0000-0000000","direccion","2023-03-04 06:56:36","2023-03-04 06:56:36"),/*soy foreach */;
("40","MARICELA GARCIA","V9540240","0000-0000000","direccion","2023-03-04 07:55:26","2023-03-04 07:55:26"),/*soy foreach */;
("41","LUIS HERNANDEZ","V18622232","0000-0000000","direccion","2023-03-04 08:11:08","2023-03-04 08:11:08"),/*soy foreach */;
("42","ANDREINA ROJAS","V23731327","0000-0000000","direccion","2023-03-04 09:18:17","2023-03-04 09:18:17"),/*soy foreach */;
("43","ROSLEYSIS RONDON","V19076399","0000-0000000","direccion","2023-03-06 06:53:42","2023-03-06 06:53:42"),/*soy foreach */;
("44","ANDRES PACHECO","V8851374","0000-0000000","direccion","2023-03-06 07:27:50","2023-03-06 07:27:50"),/*soy foreach */;
("48","PRODUCTOS ACTUALIZADOS","V00000100","0000-0000000","direccion","2023-03-07 07:20:45","2023-03-07 07:20:45"),/*soy foreach */;
("49","GREGORIA MENDOZA","V11162618","0000-0000000","direccion","2023-03-07 08:17:38","2023-03-07 08:17:38"),/*soy foreach */;
("50","YANIDZA BOGARIN","V15347650","0000-0000000","direccion","2023-03-08 07:53:28","2023-03-08 07:53:28"),/*soy foreach */;
("51","CARMEN BETANCOURT","V10043397","0000-0000000","direccion","2023-03-09 07:13:35","2023-03-09 07:13:35"),/*soy foreach */;
("52","CONCEPCION CABRERA","V00000000","0000-0000000","direccion","2023-03-09 07:43:34","2023-03-09 07:43:34"),/*soy foreach */;
("53","SANDRA GALIANO","V19369900","0000-0000000","direccion","2023-03-09 08:43:06","2023-03-09 08:43:06"),/*soy foreach */;
("54","ELVIS PADRINO","V00000000","0000-0000000","direccion","2023-03-09 11:13:11","2023-03-09 11:13:11"),/*soy foreach */;
("55","MARILU CAICEDO","V19536024","0000-0000000","direccion","2023-03-10 10:16:25","2023-03-10 10:16:25"),/*soy foreach */;
("56","LENI RODRIGUEZ","V4984891","0000-0000000","direccion","2023-03-10 13:15:56","2023-03-10 13:15:56"),/*soy foreach */;
("57","MADERLYN SUAREZ","V16499567","0000-0000000","direccion","2023-03-11 09:18:33","2023-03-11 09:18:33"),/*soy foreach */;
("58","ROSMARY ZALAZAR","24542385","0000-0000000","direccion","2023-03-13 08:08:02","2023-03-13 08:08:02"),/*soy foreach */;
("59","YOARLYS RAMIREZ","V23551860","0000-0000000","direccion","2023-03-13 09:12:10","2023-03-13 09:12:10"),/*soy foreach */;
("60","ESCARLE RONDON","V32316283","0000-0000000","direccion","2023-03-14 08:05:02","2023-03-14 08:05:02"),/*soy foreach */;
("61","MIXAIDA AREVALO","V18948001","0000-0000000","direccion","2023-03-14 08:37:32","2023-03-14 08:37:32"),/*soy foreach */;
("62","YUSMERI MATEO","V13156858","0000-0000000","direccion","2023-03-14 12:33:29","2023-03-14 12:33:29"),/*soy foreach */;
("63","CARMEN MAITA","V4912435","0000-0000000","direccion","2023-03-15 07:49:54","2023-03-15 07:49:54"),/*soy foreach */;
("64","JULIAN MAITA","V3022386","0000-0000000","direccion","2023-03-15 10:10:21","2023-03-15 10:10:21"),/*soy foreach */;
("65","JOVANI GARCIA","V27088270","0000-0000000","direccion","2023-03-15 10:27:52","2023-03-15 10:27:52"),/*soy foreach */;
("66","MARIA GONZALEZ","V27015788","0000-0000000","direccion","2023-03-15 10:38:56","2023-03-15 10:38:56"),/*soy foreach */;
("67","MIGUEL ESTANGA","V4985845","0000-0000000","direccion","2023-03-16 06:45:50","2023-03-16 06:45:50"),/*soy foreach */;
("68","KARINA KIROZ","V17383004","0000-0000000","direccion","2023-03-17 07:58:27","2023-03-17 07:58:27"),/*soy foreach */;
("69","YOSLEI SIFONTE","V26512990","0000-0000000","direccion","2023-03-17 10:10:33","2023-03-17 10:10:33"),/*soy foreach */;
("70","SERGIO MEGIA","V82144805","0000-0000000","direccion","2023-03-18 06:41:34","2023-03-18 06:41:34"),/*soy foreach */;
("71","YULI ARREAZA","V12187593","0000-0000000","direccion","2023-03-18 08:34:34","2023-03-18 08:34:34"),/*soy foreach */;
("72","VICTOR ZAMORA","V8868114","0000-0000000","direccion","2023-03-18 08:54:23","2023-03-18 08:54:23"),/*soy foreach */;
("73","ARANZA BASANTA","V24193941","0000-0000000","direccion","2023-03-18 10:19:00","2023-03-18 10:19:00"),/*soy foreach */;
("74","CARMEN CORTEZ","V11176096","0000-0000000","direccion","2023-03-20 06:29:24","2023-03-20 06:29:24"),/*soy foreach */;
("75","ENRIQUE","V10000000","0000-0000000","direccion","2023-03-20 09:37:44","2023-03-20 09:37:44"),/*soy foreach */;
("76","ALCALDIA MUNICIPIO INDP SOLEDAD","G-20000265-4","0000-0000000","direccion","2023-03-20 10:13:53","2023-03-20 10:13:53"),/*soy foreach */;
("77","KATIUSKA FREDERI","V19127159","0000-0000000","direccion","2023-03-21 06:11:54","2023-03-21 06:11:54"),/*soy foreach */;
("78","ROSA CORDOVA","V8863954","0000-0000000","direccion","2023-03-21 07:31:17","2023-03-21 07:31:17"),/*soy foreach */;
("79","CARLOS ARENAS","V5338706","0000-0000000","direccion","2023-03-21 08:39:56","2023-03-21 08:39:56"),/*soy foreach */;
("80","KARLIBEISI","V21110682","0000-0000000","direccion","2023-03-21 09:28:15","2023-03-21 09:28:15"),/*soy foreach */;
("81","MARIA MORALES","V25764323","0000-0000000","direccion","2023-03-22 08:07:59","2023-03-22 08:07:59"),/*soy foreach */;
("82","JUNIOR TABARE","V21007457","0000-0000000","direccion","2023-03-22 10:02:56","2023-03-22 10:02:56"),/*soy foreach */;
("83","HAIVY MARTINEZ","V16093260","0000-0000000","direccion","2023-03-23 07:15:56","2023-03-23 07:15:56"),/*soy foreach */;
("84","ALBERTO","V10046255","0000-0000000","direccion","2023-03-23 07:22:47","2023-03-23 07:22:47"),/*soy foreach */;
("85","GLEISYS ROVIS","V19077258","0000-0000000","direccion","2023-03-23 09:37:42","2023-03-23 09:37:42"),/*soy foreach */;
("86","SIRIA BRINES","V14410699","0000-0000000","direccion","2023-03-24 08:25:36","2023-03-24 08:25:36"),/*soy foreach */;
("87","LODAISI RIVERA","V25362765","0000-0000000","direccion","2023-03-25 10:24:27","2023-03-25 10:24:27"),/*soy foreach */;
("88","NIXON RENDON","V13452071","0000-0000000","direccion","2023-03-25 10:57:47","2023-03-25 10:57:47"),/*soy foreach */;
("89","ARNOLDO AFANADOR","V10570870","0000-0000000","direccion","2023-03-29 08:02:11","2023-03-29 08:02:11"),/*soy foreach */;
("90","KARLA MARAI","V16498700","0000-0000000","direccion","2023-03-29 08:47:45","2023-03-29 08:47:45"),/*soy foreach */;
("91","CANDY RAMIREZ","V15637051","0000-0000000","direccion","2023-03-29 10:52:21","2023-03-29 10:52:21"),/*soy foreach */;
("92","ROSALIA","V27182242","0000-0000000","direccion","2023-03-30 08:20:59","2023-03-30 08:20:59"),/*soy foreach */;
("93","ASOC CIVIL ASILO SAN VICENTE DE PAUL","J00000000","0000-0000000","direccion","2023-03-30 08:33:28","2023-03-30 08:33:28"),/*soy foreach */;
("94","AVIZED","V11175414","0000-0000000","direccion","2023-03-31 08:59:41","2023-03-31 08:59:41"),/*soy foreach */;
("95","MIGUEL GUEVARA","V00000000","0000-0000000","direccion","2023-03-31 10:38:47","2023-03-31 10:38:47"),/*soy foreach */;
("96","AIDA","6616184","0000-0000000","direccion","2023-04-01 08:27:17","2023-04-01 08:27:17"),/*soy foreach */;
("97","SUSANA MARTINEZ","V14652726","0000-0000000","direccion","2023-04-01 09:17:44","2023-04-01 09:17:44"),/*soy foreach */;
("98","NATASHA SAMBRANO","V24037798","0000-0000000","direccion","2023-04-01 11:46:02","2023-04-01 11:46:02"),/*soy foreach */;
("99","JAQUELIN MIRANDA","V13327717","0000-0000000","direccion","2023-04-03 08:43:15","2023-04-03 08:43:15"),/*soy foreach */;
("100","DAILENI","V27765384","0000-0000000","direccion","2023-04-03 09:26:19","2023-04-03 09:26:19"),/*soy foreach */;
("101","JOSE DIAZ","17764147","0000-0000000","direccion","2023-04-03 10:19:24","2023-04-03 10:19:24"),/*soy foreach */;
("102","MAIKELIS HERNANDEZ","V18093788","0000-0000000","direccion","2023-04-03 12:29:10","2023-04-03 12:29:10"),/*soy foreach */;
("103","BARRABAS","V00000000","0000-0000000","direccion","2023-04-03 12:57:31","2023-04-03 12:57:31"),/*soy foreach */;
("105","KEINER DELGADO","V24541828","0000-0000000","direccion","2023-04-04 07:32:29","2023-04-04 07:32:29");/*soy foreach */;
INSERT INTO clientes VALUES
("107","ANDREINA MENDOZA","V21109931","0000-0000000","direccion","2023-04-04 10:53:25","2023-04-04 10:53:25"),/*soy foreach */;
("109","OSNELKI CALDERON","V17656518","0000-0000000","direccion","2023-04-05 10:25:02","2023-04-05 10:25:02"),/*soy foreach */;
("110","CARMEN ARAI","V-11176337","0000-0000000","CIUDAD BOLIVAR","2023-04-05 12:08:00","2023-04-05 12:08:00"),/*soy foreach */;
("111","JULIANNY","V28611085","0000-0000000","CIUDAD BOLIVAR","2023-04-10 11:05:35","2023-04-10 11:05:35"),/*soy foreach */;
("112","NAYRELY GUAIMARATO","V-27596941","0000-0000000","CIUDAD BOLIVAR","2023-04-11 07:37:54","2023-04-11 07:37:54"),/*soy foreach */;
("113","BOGEGA LOS GOCHOS","V-10146227","0000-0000000","SOLEDAD, ANZOATEGUI","2023-04-11 08:19:02","2023-04-11 08:19:02"),/*soy foreach */;
("114","ADRIANA SASSANO","V-6914064","0000-0000000","SAN FRANCISCO LA PARAGUA","2023-04-11 09:10:25","2023-04-11 09:10:25"),/*soy foreach */;
("115","ALIDA TOVAR","V-8860470","0000-0000000","CIUDAD BOLIVAR","2023-04-11 10:08:39","2023-04-11 10:08:39"),/*soy foreach */;
("116","GUSTAVO ESPAÑA","V-15969542","0000-0000000","CIUDAD BOLIVAR","2023-04-12 07:39:48","2023-04-12 07:39:48"),/*soy foreach */;
("117","NAIVE MEDINA","V-15637100","0000-0000000","CIUDAD BOLIVAR","2023-04-12 09:40:15","2023-04-12 09:40:15"),/*soy foreach */;
("118","ELIZANDY ALARCON","V-26604064","0000-0000000","CIUDAD BOLIVAR","2023-04-12 10:40:06","2023-04-12 10:40:06"),/*soy foreach */;
("119","ANA MARIA","5551335","0000-0000000","CIUDAD BOLIVAR","2023-04-13 08:48:59","2023-04-13 08:48:59"),/*soy foreach */;
("120","ANTONELLA ABREU","V-26692527","0000-0000000","CIUDAD BOLIVAR","2023-04-13 12:33:41","2023-04-13 12:33:41"),/*soy foreach */;
("121","FRANCISCO HERNANDEZ","V-31580354","0000-0000000","CIUDAD BOLIVAR","2023-04-14 12:29:13","2023-04-14 12:29:13"),/*soy foreach */;
("122","YASMELI BRITO","V-15725421","0000-0000000","CIUDAD BOLIVAR","2023-04-15 07:19:45","2023-04-15 07:19:45"),/*soy foreach */;
("123","YASMIN FREITE","V-11724496","0000-0000000","CIUDAD BOLIVAR","2023-04-15 07:40:12","2023-04-15 07:40:12"),/*soy foreach */;
("124","ROSARIO MORALEZ","V-11728859","0000-0000000","CIUDAD BOLIVAR","2023-04-15 08:22:50","2023-04-15 08:22:50"),/*soy foreach */;
("125","LUIS RODRIGUEZ","V-13864351","0000-0000000","CIUDAD BOLIVAR","2023-04-15 12:14:02","2023-04-15 12:14:02"),/*soy foreach */;
("126","MANUEL ARGENIS","V-32586958","0000-0000000","CIUDAD BOLIVAR","2023-04-17 13:28:48","2023-04-17 13:28:48"),/*soy foreach */;
("127","MIRIAN PEREIRA","V-5556546","0000-0000000","CIUDAD BOLIVAR","2023-04-18 07:44:22","2023-04-18 07:44:22"),/*soy foreach */;
("128","BERIUSKA ERRADA","V-19475155","0000-0000000","CIUDAD BOLIVAR","2023-04-19 10:09:08","2023-04-19 10:09:08"),/*soy foreach */;
("129","JOSBEIDY CARVAJAL","V-30404603","0000-0000000","CIUDAD BOLIVAR","2023-04-19 11:16:28","2023-04-19 11:16:28"),/*soy foreach */;
("130","YUMBRANY GONZALEZ","V-15261163","0000-0000000","CIUDAD BOLIVAR","2023-04-19 12:37:30","2023-04-19 12:37:30"),/*soy foreach */;
("131","KLEMEN DIAZ","V-9590687","0000-0000000","CIUDAD BOLIVAR","2023-04-19 13:28:36","2023-04-19 13:28:36"),/*soy foreach */;
("132","MIRALBIS FLORES","V-15619561","0000-0000000","CIUDAD BOLIVAR","2023-04-20 08:36:59","2023-04-20 08:36:59"),/*soy foreach */;
("133","GENESIS HERNANDEZ","V-21264468","0000-0000000","CIUDAD BOLIVAR","2023-04-20 10:40:29","2023-04-20 10:40:29"),/*soy foreach */;
("134","ALEX MIROX","V-4397377","0000-0000000","CIUDAD BOLIVAR","2023-04-20 10:54:15","2023-04-20 10:54:15"),/*soy foreach */;
("135","MARIA ROMERO","V23498274","0000-0000000","CIUDAD BOLIVAR","2023-04-24 07:47:09","2023-04-24 07:47:09"),/*soy foreach */;
("136","CARIN COLINA","V-13326181","0000-0000000","CIUDAD BOLIVAR","2023-04-24 08:23:25","2023-04-24 08:23:25"),/*soy foreach */;
("137","EMILIA PEREZ","V-4595952","0000-0000000","CIUDAD BOLIVAR","2023-04-25 12:07:12","2023-04-25 12:07:12"),/*soy foreach */;
("138","LEIMARI IDRON","V-25085747","0000-0000000","CIUDAD BOLIVAR","2023-04-26 08:42:38","2023-04-26 08:42:38"),/*soy foreach */;
("139","OSWALDO AVILA","V-16220967","0000-0000000","CIUDAD BOLIVAR","2023-04-27 07:36:25","2023-04-27 07:36:25"),/*soy foreach */;
("140","JOSE FLORES","V-14884799","0000-0000000","CIUDAD BOLIVAR","2023-04-28 13:50:50","2023-04-28 13:50:50"),/*soy foreach */;
("141","SARA MONTE","V-16499301","0000-0000000","CIUDAD BOLIVAR","2023-04-29 10:55:13","2023-04-29 10:55:13"),/*soy foreach */;
("142","PAOLA RIVERA","V-25937138","0000-0000000","CIUDAD BOLIVAR","2023-05-02 08:49:03","2023-05-02 08:49:03"),/*soy foreach */;
("143","JESUS AYALA","V-16759688","0000-0000000","CIUDAD BOLIVAR","2023-05-03 09:15:48","2023-05-03 09:15:48"),/*soy foreach */;
("144","BERA JOSE","V-14288632","0000-0000000","CIUDAD BOLIVAR","2023-05-04 07:59:09","2023-05-04 07:59:09"),/*soy foreach */;
("145","XIOMARA PEREZ","V-11170210","0000-0000000","CIUDAD BOLIVAR","2023-05-05 10:04:02","2023-05-05 10:04:02"),/*soy foreach */;
("146","ROSALIA STANGA","V-12118832","0000-0000000","CIUDAD BOLIVAR","2023-05-05 10:11:26","2023-05-05 10:11:26"),/*soy foreach */;
("147","SANDRA SARMIENTO","V-17382315","0000-0000000","CIUDAD BOLIVAR","2023-05-05 10:18:42","2023-05-05 10:18:42"),/*soy foreach */;
("148","GABRIELA WILLIAMS","V-27731154","0000-0000000","CIUDAD BOLIVAR","2023-05-05 14:07:40","2023-05-05 14:07:40"),/*soy foreach */;
("149","ENRIQUE FREIRE","V-13326069","0000-0000000","CIUDAD BOLIVAR","2023-05-06 08:39:01","2023-05-06 08:39:01"),/*soy foreach */;
("150","AGULIARI CARREÑO","V-26744871","0000-0000000","CIUDAD BOLIVAR","2023-05-06 09:14:17","2023-05-06 09:14:17"),/*soy foreach */;
("151","CAROLINA DE FUENTES","V-14652735","0000-0000000","CIUDAD BOLIVAR","2023-05-06 10:23:50","2023-05-06 10:23:50"),/*soy foreach */;
("152","TERESA TORRE","V-13326961","0000-0000000","CIUDAD BOLIVAR","2023-05-06 10:51:15","2023-05-06 10:51:15"),/*soy foreach */;
("153","MARYELIS PEREZ","V-25278660","0000-0000000","CIUDAD BOLIVAR","2023-05-08 08:50:56","2023-05-08 08:50:56"),/*soy foreach */;
("154","ALICANDO MILAGRO","V-8884256","0000-0000000","CIUDAD BOLIVAR","2023-05-09 08:15:05","2023-05-09 08:15:05"),/*soy foreach */;
("155","YAJAIRA RODRIGUEZ","V-27902514","0000-0000000","CIUDAD BOLIVAR","2023-05-09 11:06:51","2023-05-09 11:06:51"),/*soy foreach */;
("156","EMILIXA RIVERO","V-15638643","0000-0000000","CIUDAD BOLIVAR","2023-05-10 09:25:56","2023-05-10 09:25:56"),/*soy foreach */;
("157","PAOLA VALERA","V-19535020","0000-0000000","CIUDAD BOLIVAR","2023-05-10 11:26:36","2023-05-10 11:26:36"),/*soy foreach */;
("158","KEILA ZALASAR","V-16650017","0000-0000000","CIUDAD BOLIVAR","2023-05-13 10:29:29","2023-05-13 10:29:29"),/*soy foreach */;
("159","MILAGRO PALERMO","V-13156401","0000-0000000","CIUDAD BOLIVAR","2023-05-13 12:30:36","2023-05-13 12:30:36"),/*soy foreach */;
("160","KARELYS PALERMO","V-15635098","0000-0000000","CIUDAD BOLIVAR","2023-05-13 12:45:18","2023-05-13 12:45:18"),/*soy foreach */;
("161","JARO BOLIVAR","V-10573286","0000-0000000","CIUDAD BOLIVAR","2023-05-15 10:56:03","2023-05-15 10:56:03"),/*soy foreach */;
("162","KEYDI BLANCO","V-19055608","0000-0000000","CIUDAD BOLIVAR","2023-05-16 09:33:45","2023-05-16 09:33:45"),/*soy foreach */;
("163","NESTOR RANGEL","V-15636259","0000-0000000","CIUDAD BOLIVAR","2023-05-16 10:28:11","2023-05-16 10:28:11"),/*soy foreach */;
("164","ALI TORRE","V-10007357","0000-0000000","CIUDAD BOLIVAR","2023-05-16 13:13:22","2023-05-16 13:13:22"),/*soy foreach */;
("165","CARLOS RODRIGUEZ","V-10040577","0000-0000000","CIUDAD BOLIVAR","2023-05-17 12:07:20","2023-05-17 12:07:20"),/*soy foreach */;
("166","EUKARIS VILLARROEL","V-12345678","0000-0000000","CIUDAD BOLIVAR","2023-05-19 06:45:12","2023-05-19 06:45:12"),/*soy foreach */;
("167","YAQUELIN","V-12345678","0000-0000000","CIUDAD BOLIVAR","2023-05-19 08:57:35","2023-05-19 08:57:35"),/*soy foreach */;
("168","test react","v12345678","0000-0000000","ciudad bolivar","2023-05-20 07:42:31","2023-05-20 07:42:31"),/*soy foreach */;
("169","test react 2","v12345678","0000-0000000","ciudad bolivar","2023-05-20 07:49:41","2023-05-20 07:49:41"),/*soy foreach */;
("170","pedro test react","v12345678","0000-0000000","ciudad bolivar","2023-05-20 08:12:09","2023-05-20 08:12:09"),/*soy foreach */;
("171","PEDRO PABLO","V-101010","0000-0000000","CIUDAD BOLIVAR","2023-05-23 13:38:02","2023-05-23 13:38:02"),/*soy foreach */;
("172","PATRICIA CHALMEÑO","V-27902326","0000-0000000","CIUDAD BOLIVAR","2023-05-27 08:17:13","2023-05-27 08:17:13"),/*soy foreach */;
("173","YANETH ZEDEÑO","V-00000000","0000-0000000","CIUDAD BOLIVAR","2023-06-07 06:53:08","2023-06-07 06:53:08");




CREATE TABLE `doc_esperas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` bigint unsigned NOT NULL,
  `taza` decimal(9,2) NOT NULL DEFAULT '1.00',
  PRIMARY KEY (`id`),
  KEY `doc_esperas_id_cliente_foreign` (`id_cliente`),
  CONSTRAINT `doc_esperas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO doc_esperas VALUES
("125","2023-03-06 12:25:29","2023-03-06 12:25:29","16","1.00"),/*soy foreach */;
("126","2023-03-06 12:25:30","2023-03-06 12:25:30","16","1.00"),/*soy foreach */;
("130","2023-03-07 08:20:58","2023-03-07 08:20:58","49","1.00"),/*soy foreach */;
("142","2023-03-09 09:28:55","2023-03-09 09:28:55","3","1.00"),/*soy foreach */;
("219","2023-03-21 08:59:48","2023-03-21 08:59:48","79","1.00"),/*soy foreach */;
("280","2023-03-30 10:49:32","2023-03-30 10:49:32","3","24.49"),/*soy foreach */;
("401","2023-05-05 12:29:05","2023-05-05 12:29:05","48","25.03"),/*soy foreach */;
("525","2023-06-03 08:19:17","2023-06-03 08:19:17","1","26.60"),/*soy foreach */;
("531","2023-06-03 13:06:32","2023-06-03 13:06:32","1","26.60"),/*soy foreach */;
("541","2023-06-09 12:25:57","2023-06-09 12:25:57","48","26.86"),/*soy foreach */;
("542","2023-06-09 13:22:04","2023-06-09 13:22:04","48","26.86"),/*soy foreach */;
("543","2023-06-09 13:35:16","2023-06-09 13:35:16","48","26.86"),/*soy foreach */;
("544","2023-06-09 14:23:50","2023-06-09 14:23:50","48","26.86"),/*soy foreach */;
("545","2023-06-09 14:39:43","2023-06-09 14:39:43","48","26.86"),/*soy foreach */;
("546","2023-06-10 07:38:13","2023-06-10 07:38:13","48","26.86"),/*soy foreach */;
("547","2023-06-10 08:04:42","2023-06-10 08:04:42","48","26.86"),/*soy foreach */;
("548","2023-06-10 08:33:11","2023-06-10 08:33:11","1","27.02"),/*soy foreach */;
("549","2023-06-10 08:37:47","2023-06-10 08:37:47","1","27.02"),/*soy foreach */;
("550","2023-06-10 08:46:30","2023-06-10 08:46:30","1","27.02"),/*soy foreach */;
("551","2023-06-10 08:52:00","2023-06-10 08:52:00","1","27.02");




CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `licenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `license` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `days` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO licenses VALUES
("1","897922c1999b881f4717eb719e765e08","7","2023-03-23 09:49:23","2023-06-05 06:54:03");




CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO migrations VALUES
("1","2014_10_12_000000_create_users_table","1"),/*soy foreach */;
("2","2014_10_12_100000_create_password_resets_table","1"),/*soy foreach */;
("3","2016_06_01_000001_create_oauth_auth_codes_table","1"),/*soy foreach */;
("4","2016_06_01_000002_create_oauth_access_tokens_table","1"),/*soy foreach */;
("5","2016_06_01_000003_create_oauth_refresh_tokens_table","1"),/*soy foreach */;
("6","2016_06_01_000004_create_oauth_clients_table","1"),/*soy foreach */;
("7","2016_06_01_000005_create_oauth_personal_access_clients_table","1"),/*soy foreach */;
("8","2019_08_19_000000_create_failed_jobs_table","1"),/*soy foreach */;
("9","2020_03_04_190205_create_productos_table","1"),/*soy foreach */;
("10","2020_03_05_003009_create_ventas_table","1"),/*soy foreach */;
("11","2020_03_05_003110_create_producto_vendidos_table","1"),/*soy foreach */;
("12","2020_03_10_014423_create_clientes_table","1"),/*soy foreach */;
("13","2020_03_10_023628_agregar_id_cliente_ventas","1"),/*soy foreach */;
("14","2022_11_24_202712_add_iva_column_to_productos_tables","2"),/*soy foreach */;
("15","2022_11_25_175123_add_iva_column_to_productos_vendidos_tables","2"),/*soy foreach */;
("16","2022_12_01_162112_add_und_column_to_productos_tables","3"),/*soy foreach */;
("17","2022_12_01_163533_add_und_column_to_productos_vendidos_tables","3"),/*soy foreach */;
("18","2022_12_04_190536_add_preciodollar_column_to_productos_tables","4"),/*soy foreach */;
("19","2022_12_07_180413_add_referventa_column_to_productos_tables","5"),/*soy foreach */;
("20","2022_12_07_185918_add_refercompra_column_to_productos_tables","5"),/*soy foreach */;
("21","2022_12_18_143451_create_tazas_table","6"),/*soy foreach */;
("22","2023_01_20_165104_create_doc_esperas_table","7"),/*soy foreach */;
("23","2023_01_20_165622_create_product_esperas_table","7"),/*soy foreach */;
("24","2023_01_20_171938_add_id_cliente_to_doc_espera_tables","7"),/*soy foreach */;
("25","2023_02_15_201057_add_di_cliente_to_clientes_tables","8"),/*soy foreach */;
("26","2023_03_09_064936_add_compuesto_fraccion_column_to_productos_tables","9"),/*soy foreach */;
("27","2023_03_22_121156_create_licenses_table","10"),/*soy foreach */;
("29","2023_03_27_121145_add_taza_column_to_doc_esperas_tables","11"),/*soy foreach */;
("32","2023_04_24_085606_add_taza_and_efectivo_column_to_ventas_tables","12");




CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;




CREATE TABLE `product_esperas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_doc_esperas` bigint unsigned NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_barras` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `cantidad` decimal(9,3) NOT NULL,
  `iva` int NOT NULL DEFAULT '0',
  `und` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_esperas_id_doc_esperas_foreign` (`id_doc_esperas`),
  CONSTRAINT `product_esperas_id_doc_esperas_foreign` FOREIGN KEY (`id_doc_esperas`) REFERENCES `doc_esperas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO product_esperas VALUES
("2781","525","QUESO BLANCO LLANERO","1358","111.72","0.400","0","KIL","2023-06-03 08:19:17","2023-06-03 08:19:17"),/*soy foreach */;
("2782","525","MAYONESA DI NONNA 445GS","7596817001086","68.63","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2783","525","HARINA KALY AMARILLA 1KILO","7597765000039","23.94","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2784","525","ESPAGUETTI SAVANA 500g (0,65)","7896423701005","21.28","3.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2785","525","SARDINA MORRO TTE 170gs","7591549000109","19.95","2.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2786","525","JABON P/LAVAR KEAN 200GRS","7897270400745","14.63","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2787","525","ARROZ CONGRI 1kgs","7594000370278","29.26","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2788","525","HARINA PAN BLANCA 1KG","7591002000011","34.05","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2789","525","MARGA NELLY 250gs","75971816","29.26","2.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2790","525","SALSA TTE PAMPERO 198GS","75919184","33.25","1.000","0","UND","2023-06-03 08:19:18","2023-06-03 08:19:18"),/*soy foreach */;
("2825","531","QUESO BLANCO LLANERO","1358","111.72","0.510","0","KIL","2023-06-03 13:06:32","2023-06-03 13:06:32"),/*soy foreach */;
("2826","531","MAYONESA DI NONNA 445GS","7596817001086","68.63","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2827","531","ESPAGUETTI SAVANA 500g (0,65)","7896423701005","21.28","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2828","531","SARDINA MORRO TTE 170gs","7591549000109","19.95","2.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2829","531","JABON P/LAVAR KEAN 200GRS","7897270400745","14.63","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2830","531","ARROZ CONGRI 1kgs","7594000370278","29.26","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2831","531","HARINA PAN BLANCA 1KG","7591002000011","34.05","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2832","531","MARGA NELLY 250gs","75971816","29.26","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2833","531","SALSA TTE PAMPERO 198GS","75919184","33.25","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2834","531","CERELAC EN SOBRE 100gs","7591016115206","44.16","1.000","0","UND","2023-06-03 13:06:33","2023-06-03 13:06:33"),/*soy foreach */;
("2871","541","AJO MOLIDO X KILO 1Kg","603554070156","153.10","1.000","0","KGS","2023-06-09 12:25:57","2023-06-09 12:25:57"),/*soy foreach */;
("2872","541","PIMIENTA POR KILO 1Kgs","0496","161.16","1.000","0","KGS","2023-06-09 12:25:58","2023-06-09 12:25:58"),/*soy foreach */;
("2873","541","CURRY POR KILO 1Kgs","7591188000379","112.81","1.000","0","KGS","2023-06-09 12:25:58","2023-06-09 12:25:58"),/*soy foreach */;
("2874","541","COLOR ONOTO 1Kgs","0490","107.44","1.000","0","KGS","2023-06-09 12:25:58","2023-06-09 12:25:58"),/*soy foreach */;
("2875","541","SABROSEADOR X KILO 1Kg","1199","107.44","1.000","0","KGS","2023-06-09 12:25:58","2023-06-09 12:25:58"),/*soy foreach */;
("2876","542","AJO MOLIDO X KILO 1Kg","603554070156","153.10","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2877","542","PIMIENTA POR KILO 1Kgs","0496","161.16","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2878","542","CURRY POR KILO 1Kgs","7591188000379","112.81","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2879","542","COLOR ONOTO 1Kgs","0490","107.44","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2880","542","SABROSEADOR X KILO 1Kg","1199","107.44","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2881","542","ADOBO POR KILO 1Kg","7594004400032","102.07","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2882","542","CALDO D/POLLO X KILO 1Kg","0041","107.44","1.000","0","KGS","2023-06-09 13:22:04","2023-06-09 13:22:04"),/*soy foreach */;
("2883","542","OREGANO MOLIDO X 1Kg","7591309900274","107.44","1.000","0","KGS","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2884","542","COMINO POR KILO 1/2kgs","0493","153.10","1.000","0","KGS","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2885","542","VASOS PLASTI #2-LLANOS 50x100","7592149000032","1020.68","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2886","542","VASOS PLASTI #2-LLANOS 1x100","0193","24.17","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2887","542","VASOS PLASTI #7-L/LLANO 1X25X1OO","606890011104","966.96","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2888","542","VASOS PLASTI #7-L/LLANO 1X1OO","0192","45.66","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2889","542","VASOS PLASTI #10-M/PLAS 1X2OX5O","STVPN1000001","590.92","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2890","542","VASOS PLASTI #10-M/PLAS 1X5O","606890011302","34.92","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2891","542","VASOS PLASTI #12-ZUPLA 1X5O","606890011401","44.32","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2892","542","VASOS PLASTI #14-LLANOS 1x20x50","10606890011606","805.80","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2893","542","VASOS PLASTI #14-LLANO 1x50","606890011609","40.56","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2894","542","VASOS PLASTI #16-FAVEP 1x20x50","7592149000087","886.38","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2895","542","VASOS PLASTI #16 FAVEP 1x50","0194","51.03","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2896","542","VASOS PLASTI #5-L/LLANO 1X25X1OO","7592149100060","940.10","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2897","542","VASOS PLASTI #5-L/LLANO 1X1OO","0191","44.32","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2898","542","PLATOS PLAST JUMBO #5-5OX1O","0302","456.62","1.000","0","BTO","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2899","542","PLATOS PLAST JUMBO #5-1X1O","606890020113","12.09","1.000","0","PAQ","2023-06-09 13:22:05","2023-06-09 13:22:05"),/*soy foreach */;
("2900","542","PLATOS PLAST JUMBO #6-5OX1O","1160","644.64","1.000","0","BTO","2023-06-09 13:22:06","2023-06-09 13:22:06"),/*soy foreach */;
("2901","543","AJO MOLIDO X KILO 1Kg","603554070156","153.10","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2902","543","PIMIENTA POR KILO 1Kgs","0496","161.16","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2903","543","CURRY POR KILO 1Kgs","7591188000379","112.81","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2904","543","COLOR ONOTO 1Kgs","0490","107.44","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2905","543","SABROSEADOR X KILO 1Kg","1199","107.44","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2906","543","ADOBO POR KILO 1Kg","7594004400032","102.07","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2907","543","CALDO D/POLLO X KILO 1Kg","0041","107.44","1.000","0","KGS","2023-06-09 13:35:16","2023-06-09 13:35:16"),/*soy foreach */;
("2908","543","OREGANO MOLIDO X 1Kg","7591309900274","107.44","1.000","0","KGS","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2909","543","COMINO POR KILO 1/2kgs","0493","153.10","1.000","0","KGS","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2910","543","VASOS PLASTI #2-LLANOS 50x100","7592149000032","1020.68","1.000","0","BTO","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2911","543","VASOS PLASTI #2-LLANOS 1x100","0193","24.17","1.000","0","PAQ","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2912","543","VASOS PLASTI #7-L/LLANO 1X25X1OO","606890011104","966.96","1.000","0","BTO","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2913","543","VASOS PLASTI #7-L/LLANO 1X1OO","0192","45.66","1.000","0","PAQ","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2914","543","VASOS PLASTI #10-M/PLAS 1X2OX5O","STVPN1000001","590.92","1.000","0","BTO","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2915","543","VASOS PLASTI #10-M/PLAS 1X5O","606890011302","34.92","1.000","0","PAQ","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2916","543","VASOS PLASTI #12-ZUPLA 1X5O","606890011401","44.32","1.000","0","PAQ","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2917","543","VASOS PLASTI #14-LLANOS 1x20x50","10606890011606","805.80","1.000","0","BTO","2023-06-09 13:35:17","2023-06-09 13:35:17"),/*soy foreach */;
("2918","543","VASOS PLASTI #14-LLANO 1x50","606890011609","40.56","1.000","0","PAQ","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2919","543","VASOS PLASTI #16-FAVEP 1x20x50","7592149000087","886.38","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2920","543","VASOS PLASTI #16 FAVEP 1x50","0194","51.03","1.000","0","PAQ","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2921","543","VASOS PLASTI #5-L/LLANO 1X25X1OO","7592149100060","940.10","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2922","543","VASOS PLASTI #5-L/LLANO 1X1OO","0191","44.32","1.000","0","PAQ","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2923","543","PLATOS PLAST JUMBO #5-5OX1O","0302","456.62","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2924","543","PLATOS PLAST JUMBO #5-1X1O","606890020113","12.09","1.000","0","PAQ","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2925","543","PLATOS PLAST JUMBO #6-5OX1O","1160","644.64","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2926","543","PLATOS PLAST JUMBO #6-1X1O","7591000210023","16.12","1.000","0","UND","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2927","543","PLATOS PLAST JUMBO #7-5OX1O","0304","805.80","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2928","543","PLATOS PLAST JUMBO #7-1X1O","606890020311","21.49","1.000","0","PAQ","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2929","543","PLATOS PLAST JUMBO #8-1X5OX1O.","0303","940.10","1.000","0","BTO","2023-06-09 13:35:18","2023-06-09 13:35:18"),/*soy foreach */;
("2930","543","PLATOS PLAST JUMBO #8-1X1O","606890020410","26.05","1.000","0","PAQ","2023-06-09 13:35:19","2023-06-09 13:35:19"),/*soy foreach */;
("2931","543","PLATOS PLAST JUMBO #9-30x10","1161","778.94","1.000","0","BTO","2023-06-09 13:35:19","2023-06-09 13:35:19"),/*soy foreach */;
("2932","543","PLATOS PLAST JUMBO #9-1x10","740072000071","33.58","1.000","0","UND","2023-06-09 13:35:19","2023-06-09 13:35:19"),/*soy foreach */;
("2933","544","AJO MOLIDO X KILO 1Kg","603554070156","153.10","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2934","544","PIMIENTA POR KILO 1Kgs","0496","161.16","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2935","544","CURRY POR KILO 1Kgs","7591188000379","112.81","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2936","544","COLOR ONOTO 1Kgs","0490","107.44","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2937","544","SABROSEADOR X KILO 1Kg","1199","107.44","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2938","544","ADOBO POR KILO 1Kg","7594004400032","102.07","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2939","544","CALDO D/POLLO X KILO 1Kg","0041","107.44","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2940","544","OREGANO MOLIDO X 1Kg","7591309900274","107.44","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2941","544","COMINO POR KILO 1/2kgs","0493","153.10","1.000","0","KGS","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2942","544","VASOS PLASTI #2-LLANOS 50x100","7592149000032","1020.68","1.000","0","BTO","2023-06-09 14:23:50","2023-06-09 14:23:50"),/*soy foreach */;
("2943","544","VASOS PLASTI #2-LLANOS 1x100","0193","24.17","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2944","544","VASOS PLASTI #7-L/LLANO 1X25X1OO","606890011104","966.96","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2945","544","VASOS PLASTI #7-L/LLANO 1X1OO","0192","45.66","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2946","544","VASOS PLASTI #10-M/PLAS 1X2OX5O","STVPN1000001","590.92","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2947","544","VASOS PLASTI #10-M/PLAS 1X5O","606890011302","34.92","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2948","544","VASOS PLASTI #12-ZUPLA 1X5O","606890011401","44.32","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2949","544","VASOS PLASTI #14-LLANOS 1x20x50","10606890011606","805.80","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2950","544","VASOS PLASTI #14-LLANO 1x50","606890011609","40.56","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51");/*soy foreach */;
INSERT INTO product_esperas VALUES
("2951","544","VASOS PLASTI #16-FAVEP 1x20x50","7592149000087","886.38","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2952","544","VASOS PLASTI #16 FAVEP 1x50","0194","51.03","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2953","544","VASOS PLASTI #5-L/LLANO 1X25X1OO","7592149100060","940.10","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2954","544","VASOS PLASTI #5-L/LLANO 1X1OO","0191","44.32","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2955","544","PLATOS PLAST JUMBO #5-5OX1O","0302","456.62","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2956","544","PLATOS PLAST JUMBO #5-1X1O","606890020113","12.09","1.000","0","PAQ","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2957","544","PLATOS PLAST JUMBO #6-5OX1O","1160","644.64","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2958","544","PLATOS PLAST JUMBO #6-1X1O","7591000210023","16.12","1.000","0","UND","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2959","544","PLATOS PLAST JUMBO #7-5OX1O","0304","805.80","1.000","0","BTO","2023-06-09 14:23:51","2023-06-09 14:23:51"),/*soy foreach */;
("2960","544","PLATOS PLAST JUMBO #7-1X1O","606890020311","21.49","1.000","0","PAQ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2961","544","PLATOS PLAST JUMBO #8-1X5OX1O.","0303","940.10","1.000","0","BTO","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2962","544","PLATOS PLAST JUMBO #8-1X1O","606890020410","26.05","1.000","0","PAQ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2963","544","PLATOS PLAST JUMBO #9-30x10","1161","778.94","1.000","0","BTO","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2964","544","PLATOS PLAST JUMBO #9-1x10","740072000071","33.58","1.000","0","UND","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2965","544","MAYONESA GALON MAVESA 3,6","719503030062","778.94","1.000","0","GAL","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2966","544","SALSA TTE GALON PAMPERO","7590006100024","470.05","1.000","0","GAL","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2967","544","MAYONESA MAVESA 1X6X91O","0528","1101.26","1.000","0","CJA","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2968","544","MAYONESA MAVESA 91Ogs","719503030185","202.79","1.000","0","UND","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2969","544","MAYONESA MAVESA 1X12X445","0258","1181.84","1.000","0","CAJ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2970","544","MAYONESA MAVESA 445g","719503030123","103.14","1.000","0","UND","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2971","544","MAYONESA MAVESA 24x175g","0843","1128.12","1.000","0","CAJ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2972","544","MAYONESA MAVESA 175gs","75971403","51.03","1.000","0","UND","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2973","544","SALSA TTE PAMPERO 1X24X397gs","0151","1181.84","1.000","0","CAJ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2974","544","SALSA TTE PAMPERO 397gs","75919191","52.65","1.000","0","UND","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2975","544","SALSA TTE PAMPERO 1X24X198GS","1434","752.08","1.000","0","CAJ","2023-06-09 14:23:52","2023-06-09 14:23:52"),/*soy foreach */;
("2976","544","SALSA TTE PAMPERO 198gs","75919184","33.58","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2977","544","RIKESA 2OOgs","75930288","94.01","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2978","544","MARGA MAVESA 1X6X1","0000073","752.08","1.000","0","CJA","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2979","544","MARGA MAVESA 1kilo","7590006200144","131.61","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2980","544","MARGA MAVESA 12X5OO","1474","781.63","1.000","0","CJA","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2981","544","MARGA MAVESA 5OOg","7590006200137","67.15","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2982","544","JABON P/LAVAR LLAVE 200gs","75901677","33.04","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2983","544","JABON P/LAVAR LLAVE 160GS","75923815","29.55","1.000","0","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2984","544","CHEEZ TRIS 1x12x54gs","7591206010328","192.32","1.000","16","TIR","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2985","544","RUFLES FAMLAR SURT 125gs","7591206114378","74.40","1.000","16","UND","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2986","544","DORITOS M/QUESO 1x12x45gs","7591206002514","217.57","1.000","16","TIR","2023-06-09 14:23:53","2023-06-09 14:23:53"),/*soy foreach */;
("2987","545","DE TODITO JACKS 1X12X35G","7591206282695","204.40","1.000","16","TIR","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2988","545","PLATANITOS JACKS 1x12x42gs","1305","252.22","1.000","16","TIR","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2989","545","PEPITOS JACKS AMARILLO 1x12x25","7591206010410","147.19","1.000","16","TIR","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2990","545","PEPITOS JACKS FAMILIAR 80gs","7591206285269","25.52","1.000","16","UND","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2991","545","PEPITOS JACKS XXL 180gs","7591206285276","53.45","1.000","16","UND","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2992","545","CHEETOS ANARAN.BOLIQ.FAMLAR 110g","7591206114675","31.43","1.000","16","UND","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2993","545","CHEETOS AZUL BOLIQ.FAMLAR 110gs","7591206114705","31.43","1.000","16","UND","2023-06-09 14:39:43","2023-06-09 14:39:43"),/*soy foreach */;
("2994","546","DE TODITO JACKS 1X12X35G","7591206282695","204.40","1.000","16","TIR","2023-06-10 07:38:13","2023-06-10 07:38:13"),/*soy foreach */;
("2995","546","PLATANITOS JACKS 1x12x42gs","1305","252.22","1.000","16","TIR","2023-06-10 07:38:13","2023-06-10 07:38:13"),/*soy foreach */;
("2996","546","PEPITOS JACKS AMARILLO 1x12x25","7591206010410","147.19","1.000","16","TIR","2023-06-10 07:38:13","2023-06-10 07:38:13"),/*soy foreach */;
("2997","546","PEPITOS JACKS FAMILIAR 80gs","7591206285269","25.52","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("2998","546","PEPITOS JACKS XXL 180gs","7591206285276","53.45","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("2999","546","CHEETOS ANARAN.BOLIQ.FAMLAR 110g","7591206114675","31.43","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3000","546","CHEETOS AZUL BOLIQ.FAMLAR 110gs","7591206114705","31.43","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3001","546","CHEETOS AZUL XXL 150gs","759126003870","53.45","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3002","546","CHICHARRON JACKS PCTE FAMLAR","7591206001210","53.45","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3003","546","CHEETOS ANARAN.BOLIQ.FAMLAR 110g","7591206114675","31.43","1.000","16","UND","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3004","546","TOSTITOS JACKS 140gs","7591206282787","33.62","1.000","16","BOL","2023-06-10 07:38:14","2023-06-10 07:38:14"),/*soy foreach */;
("3005","547","GALLETAS DANI-CHIPS 1X36","7591620530952","94.01","1.000","0","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3006","547","GALLETAS DANI-CHCLTE 1X36","805579324102","94.01","1.000","0","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3007","547","GALLETAS REVOLTOSA SURT 1X36","805579053118","107.44","1.000","0","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3008","547","GALLETAS DANI-BOTON 1X10","00000147","31.16","1.000","0","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3009","547","GALLETAS PALITO CHCLTE 1X18","7591620010317","225.62","1.000","0","EST","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3010","547","TOSTITOS JACKS XXL 400gs","7591206282862","81.03","1.000","16","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3011","547","DE TODITO JACKS RESUELTO XXL 400gs","7591206282671","107.93","1.000","16","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3012","547","DE TODITO JACKS QUESO XXL 320gs","7591206003528","93.10","1.000","16","BOL","2023-06-10 08:04:43","2023-06-10 08:04:43"),/*soy foreach */;
("3013","548","HARINA PAN BLANCA 1KG","7591002000011","34.59","2.000","0","UND","2023-06-10 08:33:11","2023-06-10 08:33:11"),/*soy foreach */;
("3014","548","SALSA TTE PAMPERO 397gs","75919191","53.77","1.000","0","UND","2023-06-10 08:33:11","2023-06-10 08:33:11"),/*soy foreach */;
("3015","548","QUESO BLANCO LLANERO","1358","113.48","0.500","0","KIL","2023-06-10 08:33:11","2023-06-10 08:33:11"),/*soy foreach */;
("3016","548","HUEVOS 1/2 CARTON 1X15","7790580357610","72.41","1.000","0","1/2","2023-06-10 08:33:12","2023-06-10 08:33:12"),/*soy foreach */;
("3017","548","SARDINA VALLE TTE 170gs","7592679000458","18.91","1.000","0","CJA","2023-06-10 08:33:12","2023-06-10 08:33:12"),/*soy foreach */;
("3018","548","ATUN EL ANCLA A/V 140gs","7595930000181","33.78","1.000","0","UND","2023-06-10 08:33:12","2023-06-10 08:33:12"),/*soy foreach */;
("3019","548","JABON P/LAVAR KEAN 200GRS","7897270400745","14.86","1.000","0","UND","2023-06-10 08:33:12","2023-06-10 08:33:12"),/*soy foreach */;
("3020","548","DETERG.BEMT-TE-VI 5OOGS","7898031171201","28.37","1.000","0","UND","2023-06-10 08:33:12","2023-06-10 08:33:12"),/*soy foreach */;
("3021","549","HARINA PAN BLANCA 1KG","7591002000011","34.59","1.000","0","UND","2023-06-10 08:37:47","2023-06-10 08:37:47"),/*soy foreach */;
("3022","549","SALSA TTE PAMPERO 397gs","75919191","53.77","1.000","0","UND","2023-06-10 08:37:47","2023-06-10 08:37:47"),/*soy foreach */;
("3023","549","QUESO BLANCO LLANERO","1358","113.48","0.500","0","KIL","2023-06-10 08:37:47","2023-06-10 08:37:47"),/*soy foreach */;
("3024","549","HUEVOS 1/2 CARTON 1X15","7790580357610","72.41","1.000","0","1/2","2023-06-10 08:37:47","2023-06-10 08:37:47"),/*soy foreach */;
("3025","549","SARDINA VALLE TTE 170gs","7592679000458","18.91","1.000","0","CJA","2023-06-10 08:37:48","2023-06-10 08:37:48"),/*soy foreach */;
("3026","549","ATUN EL ANCLA A/V 140gs","7595930000181","33.78","1.000","0","UND","2023-06-10 08:37:48","2023-06-10 08:37:48"),/*soy foreach */;
("3027","549","JABON P/LAVAR KEAN 200GRS","7897270400745","14.86","1.000","0","UND","2023-06-10 08:37:48","2023-06-10 08:37:48"),/*soy foreach */;
("3028","549","DETERG.BEMT-TE-VI 5OOGS","7898031171201","28.37","1.000","0","UND","2023-06-10 08:37:48","2023-06-10 08:37:48"),/*soy foreach */;
("3029","550","HARINA PAN BLANCA 1KG","7591002000011","34.59","1.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3030","550","SALSA TTE PAMPERO 397gs","75919191","53.77","1.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3031","550","QUESO BLANCO LLANERO","1358","113.48","0.500","0","KIL","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3032","550","HUEVOS 1/2 CARTON 1X15","7790580357610","72.41","1.000","0","1/2","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3033","550","SARDINA VALLE TTE 170gs","7592679000458","18.91","1.000","0","CJA","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3034","550","ATUN EL ANCLA A/V 140gs","7595930000181","33.78","1.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3035","550","JABON P/LAVAR KEAN 200GRS","7897270400745","14.86","1.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3036","550","DETERG.BEMT-TE-VI 5OOGS","7898031171201","28.37","1.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3037","550","MARGA NELLY 250gs","75971816","29.72","2.000","0","UND","2023-06-10 08:46:30","2023-06-10 08:46:30"),/*soy foreach */;
("3038","551","HARINA PAN BLANCA 1KG","7591002000011","34.59","1.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3039","551","SALSA TTE PAMPERO 397gs","75919191","53.77","1.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3040","551","QUESO BLANCO LLANERO","1358","113.48","0.500","0","KIL","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3041","551","HUEVOS 1/2 CARTON 1X15","7790580357610","72.41","1.000","0","1/2","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3042","551","SARDINA VALLE TTE 170gs","7592679000458","18.91","1.000","0","CJA","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3043","551","ATUN EL ANCLA A/V 140gs","7595930000181","33.78","1.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3044","551","JABON P/LAVAR KEAN 200GRS","7897270400745","14.86","1.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3045","551","DETERG.BEMT-TE-VI 5OOGS","7898031171201","28.37","1.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3046","551","MARGA NELLY 250gs","75971816","29.72","2.000","0","UND","2023-06-10 08:52:00","2023-06-10 08:52:00"),/*soy foreach */;
("3047","551","GALLETAS M/TRIGO D/ORO 1x6","7591502002034","15.40","1.000","0","PAQ","2023-06-10 08:52:00","2023-06-10 08:52:00");




CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `codigo_barras` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_compra` decimal(9,2) NOT NULL,
  `precio_venta` decimal(9,2) NOT NULL,
  `preciodollar` decimal(9,2) NOT NULL DEFAULT '0.00',
  `referventa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VENTA *$',
  `refercompra` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPRA *$',
  `iva` int NOT NULL DEFAULT '0',
  `und` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `existencia` decimal(9,2) NOT NULL,
  `compuesto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fraccion` decimal(9,4) NOT NULL DEFAULT '1.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO productos VALUES
("1","QU01","QUESO AMARILLO ZEDEÑO ENT","211.86","270.20","10.00","VENTA *$10","COMPRA *$8,56x24750m","0","KGS","195.50","QU01","1.0000","2022-10-20 08:30:56","2023-05-23 13:50:05"),/*soy foreach */;
("2","QU02","QUESO AMARILLO ZEDEÑO REB","211.86","298.57","11.05","VENTA *$11,05","COMPRA *$8,56x24750m","0","KGS","1000.00","QU01","1.0000","2022-10-20 08:41:02","2023-05-05 12:01:25"),/*soy foreach */;
("3","QUE01","QUESO PASTEURIZADO ZEDEÑO ENT","167.38","216.16","8.00","VENTA *$8","COMPRA *$6,86x24390m","0","KGS","49.00","QUE01","1.0000","2022-10-20 08:53:01","2023-02-28 07:09:36"),/*soy foreach */;
("4","QUE02","QUESO PASTEURIZADO ZEDEÑO REB","167.38","243.18","9.00","VENTA *$9","COMPRA *$6,86x24390m","0","KGS","50.00","QUE02","1.0000","2022-10-20 09:21:04","2023-02-28 07:11:14"),/*soy foreach */;
("5","QUES04","QUESO PECORINO D/P RAYA","405.02","675.50","25.00","VENTA *$25","COMPRA *$16.37x24750m","0","KGS","1000.00","QUES03","1.0000","2022-10-20 09:44:04","2023-05-05 11:50:44"),/*soy foreach */;
("7","0000004","REFRESCO COCA BOTLLA UNDS","10.68","14.05","0.52","VENTA *$0,60","COMPRA *$0,40x26470m","16","UND","1000.00","0000236","0.0417","2022-11-26 12:10:13","2023-06-02 12:37:35"),/*soy foreach */;
("8","0000236","REFRESCO COCA-BOTLLA 24X350","256.23","286.14","10.59","VENTA *$12.20","COMPRA *$9,68x26470m","16","CAJ","32.92","0000236","1.0000","2022-11-26 12:12:18","2023-06-02 13:25:45"),/*soy foreach */;
("9","7591127103369","REFRESCO COCA-COLA 1 Lts","25.21","32.69","1.21","VENTA *$1,40","COMPRA*$0,95x26470m","16","UND","1000.00","0683","0.1670","2022-11-26 12:15:38","2023-06-02 12:46:18"),/*soy foreach */;
("10","0592","HARINA KALY AMAR 2OX1","355.25","445.83","16.50","VENTA *$16,5","COMPRA *$14,5x24730m","0","PAC","11.75","0592","1.0000","2022-12-01 08:05:10","2023-06-07 06:53:40"),/*soy foreach */;
("11","7597765000039","HARINA KALY AMARILLA 1KILO","17.76","24.32","0.90","VENTA *$0,90","COMPRA *$0,73x24730m","0","UND","1000.00","0592","0.0500","2022-12-01 08:30:39","2023-04-29 08:15:17"),/*soy foreach */;
("12","1023","HARINA MAIZ Y ARROZ 1X2OX1","499.00","621.46","23.00","VENTA *$23","COMPRA*$20,40x24490m","0","PAC","3.95","1023","1.0000","2022-12-01 08:47:24","2023-04-03 12:32:15"),/*soy foreach */;
("13","7591002200046","HARINA MAIZ Y ARROZ 1KGS","24.99","31.61","1.17","VENTA *$1,17","COMPRA*$1,02x24500m","0","UND","1000.00","1023","0.0500","2022-12-01 09:06:39","2023-03-31 12:46:11"),/*soy foreach */;
("14","0223","HARINA PAN BLANCA 1X2OX1","554.91","675.50","25.00","VENTA *$25","COMPRA*$21,5x25810m","0","PAC","4.05","0223","1.0000","2022-12-01 09:18:18","2023-06-10 08:52:00"),/*soy foreach */;
("15","7591002000011","HARINA PAN BLANCA 1KG","27.75","34.59","1.28","VENTA *$1,28","COMPRA*$1,08x25810m","0","UND","1000.00","0223","0.0500","2022-12-01 09:26:30","2023-05-18 11:05:00"),/*soy foreach */;
("16","1395","HARINA PAN AMARILLA 1X2OX1","548.80","675.50","25.00","VENTA *$25","COMPRA*$22,4x24500m","0","PAC","0.00","1395","1.0000","2022-12-01 09:29:57","2023-04-29 09:38:58"),/*soy foreach */;
("17","013600000967","AZUCAR BRASIL 1X30X1","873.51","999.74","37.00","VENTA *$37","COMPRA*$31x24630m","0","PAC","43.41","013600000967","1.0000","2022-12-01 09:47:45","2023-06-02 13:25:46"),/*soy foreach */;
("18","7896433800019","AZUCAR BRASIL X 1KGS","29.11","35.67","1.32","VENTA *$1,32","COMPRA*$1,03x24730m","0","UND","1000.00","013600000967","0.0340","2022-12-01 09:50:32","2023-06-02 13:20:03"),/*soy foreach */;
("19","000102","SARDINA CHAMBER TTE 18x170g","274.37","337.75","12.50","VENTA *$12,5","COMPRA *$10,5x26130m","0","CJA","14.43","000102","1.0000","2022-12-01 09:59:27","2023-05-26 13:56:18"),/*soy foreach */;
("20","7591549000505","SARDINA CHAMBER TTE 170g","15.24","19.45","0.72","VENTA *$0,72","COMPRA *$0,59x24200m","0","UND","1000.00","000102","0.0560","2022-12-01 10:01:32","2023-05-26 13:55:00"),/*soy foreach */;
("22","7591549000109","SARDINA MORRO TTE 170gs","15.97","20.27","0.75","VENTA*$0,75","COSTO*$0,64x22440m","0","UND","86.00","7591549000109","1.0000","2022-12-01 10:13:19","2023-06-03 13:06:33"),/*soy foreach */;
("24","00000274","SARDINA GAVIOTA TTE 24x170g","266.30","405.30","15.00","VENTA *$15","COMPRA *$10x26130m","0","CJA","1.00","00000274","1.0000","2022-12-01 10:24:23","2023-06-07 08:37:32"),/*soy foreach */;
("25","9111","SARDINA VALLE TTE 24X170","354.18","405.30","15.00","VENTA *$15","COMPRA *$13,3x26130m","0","CJA","19.84","9111","1.0000","2022-12-01 10:26:50","2023-06-10 08:52:00"),/*soy foreach */;
("26","000020","ATUN EL ANCLA A/V 1X24X140","268.06","756.56","28.00","VENTA *$1,25","COMPRA *$1,03x8830mi","0","CJA","5.00","000020","1.0000","2022-12-01 10:30:30","2022-12-08 17:20:49"),/*soy foreach */;
("27","7595930000181","ATUN EL ANCLA A/V 140gs","11.17","33.78","1.25","VENTA *$1,25","COMPRA *$1,03x8830mi","0","UND","96.00","7595930000181","1.0000","2022-12-01 10:32:08","2023-06-10 08:52:00"),/*soy foreach */;
("28","0355","SALSA TTE IBERIA 1X24X397","701.21","885.18","32.76","VENTA *$38","COMPRA *$28,75x24390m","16","CAJ","4.00","0355","1.0000","2022-12-01 10:34:16","2023-03-01 07:01:10"),/*soy foreach */;
("29","75905071","SALSA TTE IBERIA 397G","29.22","42.15","1.56","VENTA *$1,80","COMPRA *$1,20x24390m","16","UND","91.00","75905071","1.0000","2022-12-01 10:36:52","2023-05-16 09:35:36"),/*soy foreach */;
("30","7594003321260","MAYONESA QUIDY 445gs","76.41","97.27","3.60","VENTA *$3,60","COMPRA *$3,12x24490m","0","UND","14.00","7594003321260","1.0000","2022-12-01 10:39:23","2023-03-31 11:16:20"),/*soy foreach */;
("31","0007","LECHE DO-BON 25X400","1747.02","1972.46","73.00","VENTA *$73","COMPRA *$64,5x24730m","0","BTO","8.84","0007","1.0000","2022-12-01 10:45:12","2023-06-02 14:02:00"),/*soy foreach */;
("32","7891097102059","LECHE DO-BOM 400gs","69.88","85.92","3.18","VENTA *$3,18","COMPRA *$2,58x24730m","0","UND","1000.00","0007","0.0400","2022-12-01 10:46:58","2023-06-02 13:54:51"),/*soy foreach */;
("33","0000279","PAPAS P/P-JUANCHO 2KGS","123.71","156.72","5.80","VENTA *$5,80","COMPRA *$5x24540m","0","PAQ","30.00","0000279","1.0000","2022-12-01 10:48:51","2023-04-14 09:13:25"),/*soy foreach */;
("34","PAP001","PAPAS P/P-JUANCHO 1KGS","61.86","78.36","2.90","VENTA *$2,90","COMPRA *$2,5x24540m","0","PAQ","59.00","PAP001","1.0000","2022-12-01 10:54:12","2023-04-24 08:23:46"),/*soy foreach */;
("35","PAPASJ01","PAPAS P/P-JUANCHO 500KG","30.93","39.18","1.45","VENTA *$1,45","COMPRA *$1,25x24540m","0","PAQ","120.00","PAPASJ01","1.0000","2022-12-01 10:56:01","2023-04-14 09:14:40"),/*soy foreach */;
("36","0000239","PAPAS P/P-JUANCHO 200GS","12.37","16.21","0.60","VENTA *$0,60","COMPRA *$0,50x24540m","0","PAQ","192.00","0000239","1.0000","2022-12-01 11:04:15","2023-04-14 08:58:46"),/*soy foreach */;
("37","7709852187121","PAPAS CABELLO ANGEL 1KG","68.04","81.06","3.00","VENTA *$3","COMPRA *$2,92x24250m","0","PAQ","60.00","7709852187121","1.0000","2022-12-05 08:17:18","2023-05-20 09:59:51"),/*soy foreach */;
("38","0731","PAPEL HIG ROSAL ANARANJAD 12X4","611.50","729.54","27.00","VENTA *$27","COMPRA *$23.61x25900mi","0","BTO","0.92","0731","1.0000","2022-12-05 08:27:35","2023-05-19 13:58:28"),/*soy foreach */;
("39","7591098170230","PAPEL HIG ROSAL ANARANJAD 1X4","50.96","67.55","2.50","VENTA *$2,5","COMPRA *$1,97x25900m","0","EST","1000.00","0731","0.0840","2022-12-05 08:33:19","2023-05-19 13:30:25"),/*soy foreach */;
("40","0886","PAPEL HIG ROSAL PLUS VERDE 12X4","285.44","378.28","14.00","VENTA *$14","COMPRA *$12.09x23610","0","BTO","9.00","0886","1.0000","2022-12-05 09:01:48","2023-02-09 06:36:53"),/*soy foreach */;
("41","7591098170353","PAPEL HIG ROSAL PLUS VERDE 1X4","23.79","32.42","1.20","VENTA *$1,20","COMPRA *$1,01x23610m","0","EST","98.00","7591098170353","1.0000","2022-12-05 09:07:45","2023-03-25 10:58:49"),/*soy foreach */;
("42","0626","PAPEL HIG ROSAL V/T300 HOJA 12x4","487.18","594.44","22.00","VENTA *$22","COMPRA *$18.81x25900m","0","BTO","8.92","0626","1.0000","2022-12-05 09:11:48","2023-05-19 13:58:29"),/*soy foreach */;
("43","7591098170278","PAPEL HIG ROSAL V/T300 HOJA 1x4","40.60","52.96","1.96","VENTA *$1.96","COMPRA *$1,57x25900m","0","EST","1000.00","0626","0.0840","2022-12-05 09:21:01","2023-05-19 13:34:13"),/*soy foreach */;
("44","PAPEL01","PAPEL HIG ULTRA SOFT 400 HOJA 12x4","203.41","540.40","20.00","VENTA *$20","COMPRA *$17,4x11690m","0","BTO","10.00","PAPEL01","1.0000","2022-12-05 09:30:29","2023-01-10 11:57:19"),/*soy foreach */;
("45","ATUN","ATUN L/A MARINA A/V 24x170gs","298.13","837.62","31.00","VENTA *$31","COMPRA *$26,5x11250m","0","CJA","100.00","ATUN","1.0000","2022-12-05 10:20:38","2022-12-08 18:04:39"),/*soy foreach */;
("46","7804611550953","ATUN MARINA A/V 170gs","12.52","40.53","1.50","VENTA *$1,50","COMPRA *$1,10x11250m","0","UND","100.00","7804611550953","1.0000","2022-12-05 10:30:41","2022-12-08 18:09:11"),/*soy foreach */;
("47","6921549845669","COCINA ELECTRICA 2 HORNILLAS","101.60","540.40","20.00","VENTA *$20","COMPRA *$17,40","0","UND","60.00","6921549845669","1.0000","2022-12-06 08:23:24","2022-12-08 12:17:56"),/*soy foreach */;
("49","CART02","COCINA ELECTRICA 1 HORNILLA","27.84","378.28","14.00","VENTA *$14","COMPRA *$11,6","0","UND","100.00","CART02","1.0000","2022-12-06 08:28:04","2022-12-08 12:12:26"),/*soy foreach */;
("50","7591221625231","SOPAS IBERIA POLLO SOBRE","2.08","24.32","0.90","VENTA *$0,90","COMPRA *$4,42x1100m","0","SOB","1000.00","7591221117651","0.0840","2022-12-06 08:29:57","2023-03-31 13:08:59"),/*soy foreach */;
("51","7591221117651","SOPAS IBERIA POLLO 1x12","25.00","243.18","9.00","VENTA *$9","COMPRA *$5x1100m","0","EST","8.92","7591221117651","1.0000","2022-12-06 08:31:31","2023-03-31 13:15:36"),/*soy foreach */;
("52","7591221364017","CUBITO IBERIA CARNE (SURT) 1x48","27.59","198.06","7.33","VENTA *$8,5","COMPRA *$5,63","16","POT","5.00","7591221364017","1.0000","2022-12-06 08:38:38","2022-12-08 12:21:10"),/*soy foreach */;
("53","7703133073059","ENVASE TRANSP.TRIANGULAR","2.45","4.05","0.15","VENTA *$0,15","COMPRA *$0,10x24500","0","UND","40.00","7703133073059","1.0000","2022-12-06 08:41:55","2023-04-14 10:53:37"),/*soy foreach */;
("54","0861","SALCHICHA B/REZENDE X Und","5.53","7.30","0.27","VENTA *$0,27","COMPRA *$0,21x26130m","0","UND","1000.00","7899761703274","0.0100","2022-12-06 08:47:53","2023-05-26 11:03:20"),/*soy foreach */;
("55","7594001264514","ORGANIZADOR JUMBO MEDIANO 1X2","31.41","270.20","10.00","VENTA *$10","COMPRA *$6,77","0","UND","2.00","7594001264514","1.0000","2022-12-06 08:52:24","2022-12-08 12:30:29"),/*soy foreach */;
("56","ESTA01","ORGANIZADOR JUMBO MINI 1X3","15.03","148.61","5.50","VENTA *$5,5","COMPRA *$3,24","0","UND","6.00","ESTA01","1.0000","2022-12-06 08:56:26","2022-12-08 12:28:46"),/*soy foreach */;
("57","000045","SOPAS MAGGI COSTILLA-PASTA 1X12","51.26","279.12","10.33","VENTA *$10,33","COMPRA *$9,32x3200m","0","EST","60.00","000045","1.0000","2022-12-06 09:12:12","2022-12-08 12:49:31"),/*soy foreach */;
("58","0225","SOPAS MAGGI POLLO/FID 1X12","43.49","279.12","10.33","VENTA *$10,33","COMPRA *$7,59x5730mi","0","EST","170.00","0225","1.0000","2022-12-06 09:14:06","2022-12-08 13:01:38"),/*soy foreach */;
("59","7591016007228","SOPAS MAGGI POLLO/SOBRE","3.60","27.02","1.00","VENTA *$1","COMPRA *$0,63x5730mi","0","SOB","100.00","7591016007228","1.0000","2022-12-06 09:15:57","2022-12-08 13:11:47"),/*soy foreach */;
("60","7591016402351","CUBITOS MAGGI POLLO 1X250","735.00","920.03","34.05","VENTA *$34,05","COMPRA *$30x24500m","0","EST","5.00","7591016402351","1.0000","2022-12-06 09:17:39","2023-03-31 13:15:36"),/*soy foreach */;
("61","7591016205846","CUBITOS MAGGI POLLO 1X70","67.04","283.71","10.50","VENTA *$10,50","COMPRA *$8,01x8370m","0","EST","11.00","7591016205846","1.0000","2022-12-06 09:19:43","2023-03-06 08:43:11"),/*soy foreach */;
("62","7591016205631","NESTUM 3 CEREALES 1X7","19.03","116.46","4.31","VENTA *$5","COMPRA *$3,39","16","UND","20.00","7591016205631","1.0000","2022-12-06 09:21:44","2022-12-09 03:19:58"),/*soy foreach */;
("63","7702174082563","BOMBONERA GUSANOS 1X200","33.90","133.75","4.95","VENTA *$4,95","COMPRA *$4,06x8370m","0","BOM","6.00","7702174082563","1.0000","2022-12-06 09:23:08","2022-12-08 18:44:36"),/*soy foreach */;
("64","603554060997","CHOCO CARS 1X100","36.80","270.20","10.00","VENTA *$10","COMPRA *$8","0","BOM","5.00","603554060997","1.0000","2022-12-06 09:26:19","2022-12-08 21:15:30"),/*soy foreach */;
("66","7591502001495","GALLETAS TRIGO-ORO SURT 1X24","11.57","91.87","3.40","VENTA *$3,4","COMPRA *$2,5x4623mi","0","EST","44.00","7591502001495","1.0000","2022-12-06 09:45:51","2023-04-11 07:38:04"),/*soy foreach */;
("67","7590011205158","GALLETAS C/SOCIAL 1X6","27.84","38.91","1.44","VENTA*$1,44","COMPRA *$1,14x24420","0","EST","8.00","7590011205158","1.0000","2022-12-06 09:48:11","2023-06-02 08:02:07"),/*soy foreach */;
("68","7590011890866","GALLETAS KRAKERS BRAN 1X9","49.57","70.79","2.62","VENTA *$2,62","COMPRA *$2,03x24420mi","0","PAQ","12.00","7590011890866","1.0000","2022-12-06 09:49:29","2023-05-08 10:53:53"),/*soy foreach */;
("69","7590011890910","GALLETAS HONY BRAN 1X9","16.86","67.28","2.49","VENTA *$2,88","COMPRA *$2,01x5012mi","16","PAQ","19.00","7590011890910","1.0000","2022-12-06 09:52:04","2022-12-30 08:35:24"),/*soy foreach */;
("70","7591502001327","PASTELITOS T/DORADO SURT 1X4","3.40","28.37","1.05","VENTA *$1,05","COMPRA *$0,77x4420mi","0","EST","100.00","7591502001327","1.0000","2022-12-06 09:53:54","2022-12-09 03:46:16"),/*soy foreach */;
("71","7702011271433","GALLETAS BRIDGE 1X8","12.45","50.26","1.86","VENTA *$2,15","COMPRA *$1,48x8400mi","16","EST","23.00","7702011271433","1.0000","2022-12-06 09:55:31","2022-12-22 08:48:32"),/*soy foreach */;
("72","7591675012892","NUCITA EN VACITO 200gs","28.71","115.38","4.27","VENTA *$4,95","COMPRA *$3,42x8390m","16","VAS","10.00","7591675012892","1.0000","2022-12-06 09:59:07","2022-12-09 03:21:21"),/*soy foreach */;
("73","7591316001438","PANQUE ONCE ONCE SURT 1X3","7.99","51.34","1.90","VENTA *$2,20","COMPRA *$1,46x547","16","EST","4.00","7591316001438","1.0000","2022-12-06 10:14:12","2022-12-09 03:30:07"),/*soy foreach */;
("74","7591316000462","PANQUE ONCE ONCE Mini 1X8","11.05","70.25","2.60","VENTA *$3","COMPRA *$2,02x547","16","EST","7.00","7591316000462","1.0000","2022-12-06 10:16:57","2022-12-09 03:28:58"),/*soy foreach */;
("75","7591316000080","CROSTATINA GUAYABA O/ONCE 1X6","16.41","106.19","3.93","VENTA *$4,55","COMPRA *$3x547","16","EST","5.00","7591316000080","1.0000","2022-12-06 10:18:55","2022-12-08 21:43:26"),/*soy foreach */;
("76","7591082001458","GALLETAS SORPRESAS PUIG","12.60","116.19","4.30","VENTA *$4,99","COMPRA *$3,87","16","EST","39.00","7591082001458","1.0000","2022-12-06 10:20:40","2022-12-22 08:48:32"),/*soy foreach */;
("77","781718835718","GALLETAS BISKIT SURT 1X10","10.26","78.63","2.91","VENTA *$3,37","COMPRA *$2,32x4420mi","16","EST","-5.00","781718835718","1.0000","2022-12-06 10:52:36","2023-05-16 13:54:58"),/*soy foreach */;
("78","7591082000253","GALLETAS MARILU ESTUCHE 1X24","50.38","65.39","2.42","VENTA *$2,8","COMPRA *$2,08x24730m","16","EST","4.00","7591082000253","1.0000","2022-12-06 10:54:24","2023-04-29 09:38:59"),/*soy foreach */;
("79","0781718835695","GALLETAS CRACKY CLUB 1X6","5.14","40.26","1.49","VENTA *$1,72","COMPRA *$1,16","16","EST","24.00","0781718835695","1.0000","2022-12-06 10:56:22","2022-12-08 22:13:20"),/*soy foreach */;
("80","7591082000673","GALLETAS Q KISS NIC-NAC BOLSA","12.99","16.75","0.62","VENTAS*$0,71","COMPRA *$0,55x4600m","16","BOL","96.00","7591082000673","1.0000","2022-12-06 10:58:10","2023-02-09 06:52:54"),/*soy foreach */;
("81","7591082002035","GALLETAS Q-KISS BOLSA","0.00","27.02","1.00","VENTA *$1,15","COMPRA *$","16","BOL","9.00","7591082002035","1.0000","2022-12-06 11:00:21","2023-01-10 09:08:41"),/*soy foreach */;
("82","7591082000574","GALLETAS REX EN BOLSA","14.17","18.64","0.69","VENTAS*$0,80","COMPRA *$0,60x4630mi","16","BOL","157.00","7591082000574","1.0000","2022-12-06 11:01:51","2023-02-09 06:50:52"),/*soy foreach */;
("83","7591082001977","GALLETAS COOKY CHIPS","26.92","35.13","1.30","VENTA*$1,50","COMPRA *$1,14x5000","16","BOL","20.00","7591082001977","1.0000","2022-12-06 11:04:25","2023-02-09 06:54:34"),/*soy foreach */;
("84","7591082001717","GALLETAS CHIQUILIN","18.42","22.16","0.82","VENTA*$0,95","COMPRA *$0,78x4,41","16","BOL","97.00","7591082001717","1.0000","2022-12-06 11:05:59","2023-04-12 09:43:56"),/*soy foreach */;
("85","7591082001625","GALLETAS TIMBITO OSITO","17.24","21.08","0.78","VENTA *$0,90","COMPRA *$0,73x7820","16","BOL","13.00","7591082001625","1.0000","2022-12-06 11:08:20","2023-02-09 06:46:54"),/*soy foreach */;
("86","7591082000383","GALLETAS MINI MARIA BOLSA","23.62","30.80","1.14","VENTA*$1,32","COMPRA *$0,97x24310m","16","BOL","16.00","7591082000383","1.0000","2022-12-06 11:12:19","2023-03-24 11:00:48"),/*soy foreach */;
("87","0023","CERELAC EN TIRA 1x10","113.00","432.32","16.00","VENTA *$16","COMPRA *$13,5x8370m","0","TIR","10.00","0023","1.0000","2022-12-06 11:14:13","2022-12-08 20:28:50"),/*soy foreach */;
("88","7702007074253","CHOCOLISTO E/TIRA 1X18","20.40","135.10","5.00","VENTA *$5","COMPRA *$4x5100mi","0","EST","19.00","7702007074253","1.0000","2022-12-06 11:29:17","2022-12-08 21:18:07"),/*soy foreach */;
("89","7591082007153","GALLETAS SODA EL SOL 1X10","22.30","32.15","1.19","VENTA*$1.38","COMPRA *$1,02x24730m","16","PAQ","41.00","7591082007153","1.0000","2022-12-06 11:30:27","2023-05-13 10:29:38"),/*soy foreach */;
("90","7591082001830","GALLETAS FAMILY CLUB 1X10","28.81","37.29","1.38","VENTA *$1,60","COMPRA*$1,21x23810m","16","PAQ","-12.00","7591082001830","1.0000","2022-12-06 11:32:23","2023-03-21 08:31:51"),/*soy foreach */;
("91","7591082000161","GALLETAS SODA INTEGRAL 1X10","22.62","30.26","1.12","VENTA *$1,30","COMPRA *$0,95x8230mi","16","PAQ","17.00","7591082000161","1.0000","2022-12-06 11:33:56","2023-04-28 13:50:57"),/*soy foreach */;
("92","7591082000048","GALLETAS SODA ENRIQCD 1X10","25.15","32.15","1.19","VENTA*$1,38","COMPRA *$0,97x28100m","16","PAQ","16.00","7591082000048","1.0000","2022-12-06 11:35:42","2023-05-27 08:27:17"),/*soy foreach */;
("96","0781718835664","GALLETAS DUUO WYNCO 1X12","4.81","44.04","1.63","VENTA *$1,63","COMPRA *$1,09x442mi","0","BOL","38.00","0781718835664","1.0000","2022-12-06 11:49:54","2022-12-08 22:17:11"),/*soy foreach */;
("97","7702011003225","GALLETAS CRAKEÑAS 1X8","11.59","40.53","1.50","VENTA *$1,50","COMPRA *$1,38x280","0","EST","20.00","7702011003225","1.0000","2022-12-06 11:51:10","2022-12-08 22:14:43"),/*soy foreach */;
("98","7896022205157","GALLETAS RENATA TACO SURT","16.02","21.62","0.80","VENTA *$0,80","COMPRA *$0,64x4640m","0","TAC","104.00","7896022205157","1.0000","2022-12-06 12:06:57","2023-05-09 12:39:34"),/*soy foreach */;
("99","7896022205232","GALLETAS RENATA EST 1x3x360gs","30.04","40.53","1.50","VENTA *$1,5","COMPRA *$1,20x4640m","0","EST","75.00","7896022205232","1.0000","2022-12-06 12:08:59","2023-05-09 12:39:34"),/*soy foreach */;
("100","7598393000071","GALLETAS ARONA EL REY","13.99","59.44","2.20","VENTA *$2,20","COMPRA *$1,70x8230m","0","BOL","14.00","7598393000071","1.0000","2022-12-06 12:12:27","2022-12-08 21:57:17"),/*soy foreach */;
("101","7622201705848","OREO CONFETI TUBO 1X12","7.63","30.26","1.12","VENTA *$1,30","COMPRA *$0,91x8390m","16","TUB","45.00","7622201705848","1.0000","2022-12-06 12:15:06","2023-01-14 11:43:38"),/*soy foreach */;
("102","7896423702569","GALLETAS RADICAL TUBO UNDS","7.83","12.16","0.45","VENTA *$0,45","COMPRA *$0,35x22370m","0","TUB","-32.00","7896423702569","1.0000","2022-12-06 12:17:16","2023-05-13 11:56:36"),/*soy foreach */;
("103","7896022207489","GALLETAS RENATA TUBO SURT","2.07","14.86","0.55","VENTA *$0,55","COMPRA *$0,45x5600","0","TUB","89.00","7896022207489","1.0000","2022-12-06 12:19:16","2023-03-21 08:43:15"),/*soy foreach */;
("104","7592809000778","GALLETAS M/INAICA TUBO 1X9","4.18","18.91","0.70","VENTA *$0,7","COMPRA *$0,50x8370m","0","PAQ","30.00","7592809000778","1.0000","2022-12-06 12:20:37","2022-12-30 08:46:08"),/*soy foreach */;
("105","7591164001277","GALLETAS M/CALEDONIA 1X5","2.01","16.21","0.60","VENTA *$0,7","COMPRA *$0,45x4470","16","UND","100.00","7591164001277","1.0000","2022-12-06 12:23:29","2022-12-08 22:28:04"),/*soy foreach */;
("106","7591082010269","GALLETAS MARILU TUBO TRASPTE 1X12","25.09","32.69","1.21","VENTA *$1,40","COMPRA *$1,04x24730m","16","TUB","11.00","7591082010269","1.0000","2022-12-06 12:25:55","2023-05-10 09:33:44"),/*soy foreach */;
("107","8690997184009","CHOCOLATE JIMMY CABECITA 1X24","18.00","270.20","10.00","VENTA *$10","COMPRA *$10x1800mi","0","EST","8.00","8690997184009","1.0000","2022-12-06 12:42:07","2023-05-13 12:32:21"),/*soy foreach */;
("108","759708900036","GALLETAS M/ITALIA TUBO 1X9","2.93","21.08","0.78","VENTA *$0,90","COMPRA *$0,55x5310","16","PAQ","8.00","759708900036","1.0000","2022-12-06 12:43:37","2023-05-15 10:56:12");/*soy foreach */;
INSERT INTO productos VALUES
("109","7591082000307","GALLETAS M/PUIG TUBO 1X9","24.09","31.88","1.18","VENTA *$1,36","COMPRA *$0,93x25810m","16","PAQ","980.00","7591082000307","1.0000","2022-12-06 12:58:06","2023-05-18 13:30:24"),/*soy foreach */;
("110","7702993027745","CARAMELOS RICATO 1X50","42.04","52.69","1.95","VENTA *$1,95","COSTO *$1,39x24310m","0","BOL","8.00","7702993027745","1.0000","2022-12-06 13:03:05","2023-05-16 13:54:58"),/*soy foreach */;
("111","7702993016039","CARAMELOS CAFE GURME 1X100","34.72","54.04","2.00","VENTA *$2","COMPRA *$1,33x26000m","0","BOL","29.00","7702993016039","1.0000","2022-12-07 07:41:01","2023-06-01 09:24:11"),/*soy foreach */;
("112","7702993031681","CARAMELOS FRESA CHAO 1X100","28.44","58.90","2.18","VENTA*$2,18","COMPRA*$1,73x16450m","0","BOL","69.00","7702993031681","1.0000","2022-12-07 07:43:00","2023-06-01 09:12:34"),/*soy foreach */;
("113","7702993029954","CARAMELOS MENTA CHAO 1X100","42.63","58.90","2.18","VENTA *$2,18","COMPRA *$1,75x24360m","0","BOL","91.00","7702993029954","1.0000","2022-12-07 07:44:01","2023-05-19 08:58:02"),/*soy foreach */;
("114","7702993902103","CARAMELOS BIANCHI CHOCLTE 1X100","46.04","64.31","2.38","VENTA *$2,38","COMPRA *$1,78x26000m","0","BOL","73.00","7702993902103","1.0000","2022-12-07 07:45:09","2023-06-01 09:24:10"),/*soy foreach */;
("115","7702174075343","CARAMELOS BIAGI ARTESANO 1X50","15.50","53.77","1.99","VENTA *$2,30","COMPRA *$1,89x3300","16","BOL","100.00","7702174075343","1.0000","2022-12-07 07:46:10","2022-12-08 11:46:52"),/*soy foreach */;
("116","7702011001771","CARAMELOS COFFEE DELIGHT 1X100","8.90","89.98","3.33","VENTA *$3,33","COMPRA *$2,78x3200mi","0","BOL","100.00","7702011001771","1.0000","2022-12-07 07:48:18","2022-12-08 11:51:42"),/*soy foreach */;
("118","7702174080828","FRUNAS SURTIDAS 1x","2.76","12.16","0.45","VENTA *$0,45","COMPRA *$0,33x8370m","0","BOL","62.00","7702174080828","1.0000","2022-12-07 08:13:39","2023-05-27 08:27:17"),/*soy foreach */;
("119","7592052001706","GALLETAS EN TIRAS RIFEL 1x14","10.21","40.80","1.51","VENTA *$1,51","COMPRA *$1,28x7980m","0","TIR","16.00","7592052001706","1.0000","2022-12-07 08:14:38","2023-01-17 11:07:41"),/*soy foreach */;
("120","6050300001232","BOMBILLOS M 1x10x60 WTS","13.26","94.57","3.50","VENTA *$3,50","COMPRA *$2,6","0","EST","47.00","6050300001232","1.0000","2022-12-07 08:15:37","2022-12-30 08:35:25"),/*soy foreach */;
("121","7592411000111","BOMBILLOS M X UNDS.60WTS","1.32","11.62","0.43","VENTA *$0,43","COMPRA *$0,26","0","UND","87.00","7592411000111","1.0000","2022-12-07 08:16:43","2023-04-29 13:18:49"),/*soy foreach */;
("122","00000147","GALLETAS DANI-BOTON 1X10","23.97","31.34","1.16","VENTA *$1,16","COMPRA *$0,90x26860m","0","BOL","39.00","00000147","1.0000","2022-12-07 08:20:06","2023-06-10 08:04:43"),/*soy foreach */;
("123","7702134371201","SUSPIROS MINI E/BOLSA 1X100","6.48","35.13","1.30","VENTA*$1,3","COMPRA *$1,2x4600mil","0","BAN","100.00","7702134371201","1.0000","2022-12-07 08:21:06","2022-12-08 09:55:05"),/*soy foreach */;
("124","7953625314461","SUSPIROS EN BANDEJA 1X20","9.18","54.04","2.00","VENTA *$2","COMPRA *$1,7x1100m","0","BAN","95.00","7953625314461","1.0000","2022-12-07 08:22:30","2023-03-15 07:50:04"),/*soy foreach */;
("125","7591071000080","GALLETAS POLVOROSA SURT 1X24","9.24","58.09","2.15","VENTA *$2,15","COMPRA *$1,65x5600mi","0","EST","12.00","7591071000080","1.0000","2022-12-07 08:23:28","2023-05-30 12:15:58"),/*soy foreach */;
("126","0000119","CHUPETA E/ROLLADA 1X24","5.52","45.93","1.70","VENTA*$1,7","COMPRA*$1,2x460","0","BOL","13.00","0000119","1.0000","2022-12-07 08:24:22","2022-12-08 09:48:19"),/*soy foreach */;
("127","000119","CHUPETAS E/ROLLADA 1X30","9.35","59.44","2.20","VENTA *$2,2","COMPRA *$1,7x460","0","BOL","100.00","000119","1.0000","2022-12-07 08:25:19","2022-12-08 21:20:11"),/*soy foreach */;
("128","0056","CHUPETAS TORNEADAS S/B-1X12","6.48","40.53","1.50","VENTA*$1,5","COMPRA *$1,2x5500mil","0","BOL","9.00","0056","1.0000","2022-12-07 08:26:42","2022-12-31 13:26:54"),/*soy foreach */;
("129","7591720031939","FRUTOS MIXTOS 1x12x40gs","30.70","237.78","8.80","VENTA *$8,8","COMPRA *$6,9x4450mi","0","EST","20.00","7591720031939","1.0000","2022-12-07 08:27:46","2022-12-08 21:55:56"),/*soy foreach */;
("130","7702174074360","CARAMELOS PLAY-BARRA 1x50","8.59","52.42","1.94","VENTA *$2,25","COMPRA *$1,53x5,61","16","BOL","10.00","7702174074360","1.0000","2022-12-07 08:30:07","2022-12-08 20:03:55"),/*soy foreach */;
("131","7593251254559","CARAMELOS CHUPI FIESTA 1x100","22.53","28.10","1.04","VENTA *$1,04","COMPRA *$0,90x4600mi","0","BOL","35.00","7593251254559","1.0000","2022-12-07 08:36:01","2023-05-10 07:37:16"),/*soy foreach */;
("132","7702174078429","CARAMELOS BIAGI CARAMEL 1x100","12.97","54.04","2.00","VENTA *$2","COMPRA *$1,55x8370m","0","BOL","36.00","7702174078429","1.0000","2022-12-07 08:38:40","2023-05-31 08:43:26"),/*soy foreach */;
("133","7896731019465","CARAMELOS PIETROBON F/CANDYS 1x70","9.58","54.04","2.00","VENTA *$2","COMPRA *$1,55x6180","0","BOL","19.00","7896731019465","1.0000","2022-12-07 08:39:52","2022-12-08 20:01:37"),/*soy foreach */;
("134","7702174060448","CARAMELOS MASTY MINT 1x100","6.70","49.18","1.82","VENTA *$2,11","COMPRA *$1,53x4380mi","16","BOL","100.00","7702174060448","1.0000","2022-12-07 08:41:00","2022-12-08 19:10:45"),/*soy foreach */;
("135","8691720106343","CIMBOO 1X24","19.80","162.12","6.00","VENTA *$6","COMPRA *$4,83x1900mi","0","EST","100.00","8691720106343","1.0000","2022-12-07 08:41:45","2022-12-08 21:37:53"),/*soy foreach */;
("136","0976","CHISKESITOS 1x12","118.44","146.99","5.44","VENTA *$6,30","COMPRA *$4,85x5610mi","16","TIR","6.00","0976","1.0000","2022-12-07 09:09:55","2023-04-19 12:38:24"),/*soy foreach */;
("137","7592708001777","CHISKESITOS C/TOCINETA FAMLIAR","4.68","33.78","1.25","VENTA *$1,45","COMPRA *$0,87x5350mi","16","UND","99.00","7592708001777","1.0000","2022-12-07 09:10:58","2023-01-17 09:51:01"),/*soy foreach */;
("138","7592708000367","CHISKESITOS FAMLIAR 145gs","26.21","29.72","1.10","VENTA *$1,27","COMPRA *$1,07x24390m","16","UND","19.00","7592708000367","1.0000","2022-12-07 09:14:04","2023-03-30 07:26:31"),/*soy foreach */;
("139","7592708001364","CHISKESITOS XXL 450gs","65.10","78.36","2.90","VENTA *$2.90","COMPRA *$2,48x26250mi","0","UND","99.00","7592708001364","1.0000","2022-12-07 09:14:59","2023-05-30 13:42:41"),/*soy foreach */;
("140","7592708000039","PEPITOS KESITOS 1x12","107.07","140.50","5.20","VENTA*$5,20","COMPRA *$4,39x24390m","0","TIR","27.00","7592708000039","1.0000","2022-12-07 09:16:32","2023-04-19 10:10:23"),/*soy foreach */;
("141","7592708000121","PEPITOS KESITOS FAMILAR","3.53","21.08","0.78","VENTA *$0,90","COMPRA *$0,63x5610m","16","UND","88.00","7592708000121","1.0000","2022-12-07 09:17:55","2023-05-06 08:40:00"),/*soy foreach */;
("142","7592708001692","PEPITOS KESITOS XXL 180gs","41.30","43.77","1.62","VENTA *$1.87","COMPRA *$1,57x26270m","16","UND","9.00","7592708001692","1.0000","2022-12-07 09:20:50","2023-05-30 13:42:41"),/*soy foreach */;
("143","7592708000336","BOLI-KRUNCH 1x12","107.07","140.50","5.20","VENTA *$5,20","COMPRA *$4,39x24390m","0","TIR","26.00","7592708000336","1.0000","2022-12-07 09:22:57","2023-04-11 07:38:04"),/*soy foreach */;
("144","7592708000343","BOLI-KRUNCH FAMILIAR","3.53","21.08","0.78","VENTA *$0,9","COMPRA *$0,63x5610mi","16","UND","97.00","7592708000343","1.0000","2022-12-07 09:24:14","2023-05-06 10:51:22"),/*soy foreach */;
("145","7592708001371","BOLI-KRUNCH XXL 180gs","41.30","43.77","1.62","VENTA *$1.87","COMPRA *$1,57x26270m","16","UND","8.00","7592708001371","1.0000","2022-12-07 09:25:01","2023-05-30 13:42:41"),/*soy foreach */;
("146","7592708002729","COPI-KRUNCH 1x12x28gs","7.70","88.63","3.28","VENTA *$3,80","COMPRA *$2,47x1900mi","16","TIR","100.00","7592708002729","1.0000","2022-12-07 09:26:15","2022-12-08 21:40:34"),/*soy foreach */;
("147","7592708000763","COPI-KRUNCH FAMLIAR","0.00","19.99","0.74","VENTA *$0,85","COMPRA *$0,55x5350mi","16","UND","96.00","7592708000763","1.0000","2022-12-07 09:27:58","2023-05-06 08:40:00"),/*soy foreach */;
("148","7708902965955","PAPAS MUNCHY C/SAL FAMLAR","7.58","48.64","1.80","VENTA *$2,08","COMPRA *$1,42x5350mi","16","UND","10.00","7708902965955","1.0000","2022-12-07 09:29:13","2022-12-09 03:31:40"),/*soy foreach */;
("149","7592708000411","TOCINETIKAS FAMILIAR PCTE","15.61","17.56","0.65","VENTA *$0,75","COMPRA *$0,64x24390m","16","UND","30.00","7592708000411","1.0000","2022-12-07 09:30:08","2023-04-15 08:23:51"),/*soy foreach */;
("150","7592708000404","TOCINETIKAS MUNCHY 1x12","93.30","121.59","4.50","VENTA *$4,50","COMPRA *$3,83x24360m","0","TIR","35.00","7592708000404","1.0000","2022-12-07 09:31:35","2023-03-30 07:26:31"),/*soy foreach */;
("151","7592708000138","TOCINETIKAS SURT.FAMLAR","15.61","17.56","0.65","VENTA *$0,75","COMPRA *$0,64x24390m","16","UND","35.00","7592708000138","1.0000","2022-12-07 09:32:29","2023-05-11 12:00:22"),/*soy foreach */;
("152","0000003","PLATANAZO FAMLAR 1x6x85gs","130.58","162.12","6.00","VENTA *$6","COMPRA *$5,33x8450mi","0","TIR","8.67","0000003","1.0000","2022-12-07 09:33:59","2023-05-19 09:29:43"),/*soy foreach */;
("153","7757839000406","PLATANAZO FAMLAR 85gs","21.76","27.02","1.00","VENTA *$1","COMPRA *$0,89x8450m","0","UND","1000.00","0000003","0.1670","2022-12-07 09:34:54","2023-04-03 07:05:43"),/*soy foreach */;
("154","77006340021710","MEZCLADITO FAMILIAR C/BBQ","5.29","40.53","1.50","VENTA *$1,5","COMPRA *$1,14x4150m","0","UND","100.00","77006340021710","1.0000","2022-12-07 09:35:58","2023-02-04 08:45:30"),/*soy foreach */;
("155","7700634001727","MEZCLADITO NATURAL 1x12","22.60","121.59","4.50","VENTA *$4,50","COMPRA *$4x5650m","0","TIR","78.00","7700634001727","1.0000","2022-12-07 09:39:55","2022-12-09 03:19:04"),/*soy foreach */;
("156","7592708001814","CHESITOS PALITOS-MAIZ FAMLIAR","2.21","17.83","0.66","VENTA *$0,76","COMPRA *$0,47x4420mi","16","UND","88.00","7592708001814","1.0000","2022-12-07 09:44:45","2023-05-06 08:40:00"),/*soy foreach */;
("157","7592969000458","BONCHITOS G/MARCA FAMLAR","30.21","37.29","1.38","VENTA *$1,60","COMPRA *$1,16x24360m","16","UND","35.00","7592969000458","1.0000","2022-12-07 10:16:16","2023-05-25 12:50:48"),/*soy foreach */;
("158","7592969000687","PEPITOS ORLANDITO FAMLAR","20.83","25.94","0.96","VENTA *$1,11","COMPRA *$0,80x24360m","16","UND","39.00","7592969000687","1.0000","2022-12-07 10:18:37","2023-05-25 12:46:03"),/*soy foreach */;
("159","7592969000342","PEPITOS ORLANDITO 1x12","93.72","111.86","4.14","VENTA *$4.8","COMPRA *$3,60x26040m","16","TIR","16.00","7592969000342","1.0000","2022-12-07 10:19:31","2023-06-05 09:17:33"),/*soy foreach */;
("160","7591039725819","MAIZORITOS ABCITOS 240g","47.65","67.55","2.50","VENTA *$2,50","COMPRA *$2,13x22370m","0","UND","11.00","7591039725819","1.0000","2022-12-07 10:20:29","2023-02-02 06:32:40"),/*soy foreach */;
("161","7591039100050","MAIZORITOS CRONCH FLAKES 300gs","41.38","67.55","2.50","VENTA *$2,50","COMPRA *$1,85x8830m","0","UND","16.00","7591039100050","1.0000","2022-12-07 10:21:23","2023-03-27 07:39:23"),/*soy foreach */;
("162","7591039997810","MAIZORITOS POP CRONCH 240g","47.87","67.55","2.50","VENTA *$2,50","COMPRA *$2,14x22370m","0","UND","4.00","7591039997810","1.0000","2022-12-07 10:28:49","2023-04-28 13:50:57"),/*soy foreach */;
("163","7591039725789","MAIZORITO CHOCO SAFARI 240g","47.65","67.55","2.50","VENTA *$2,50","COMPRA *$2,13x22370m","0","UND","20.00","7591039725789","1.0000","2022-12-07 10:29:47","2023-02-02 06:29:46"),/*soy foreach */;
("164","7591039535012","MAIZORITOS FRUTY AROS 240gs","47.65","67.55","2.50","VENTA *$2,50","COMPRA *$2,13x22370m","0","UND","20.00","7591039535012","1.0000","2022-12-07 10:30:49","2023-02-02 06:56:43"),/*soy foreach */;
("165","7591039725772","MAIZORITOS AZUCARADAS 240gs","47.65","67.55","2.50","VENTA *$2,50","COMPRA *$2,13x22370m","0","UND","15.00","7591039725772","1.0000","2022-12-07 10:32:10","2023-05-13 10:29:38"),/*soy foreach */;
("166","7592708000435","CHIS-KRONCH SURTI 1x12","83.23","117.54","4.35","VENTA *$4,35","COMPRA *$3,83x21730m","0","TIR","96.00","7592708000435","1.0000","2022-12-07 10:33:05","2023-04-05 07:54:06"),/*soy foreach */;
("167","7591874000157","TOSTON TOM PEQ 1x12","74.78","88.36","3.27","VENTA *$3,27","COMPRA *$2,88x26mi","0","BOL","40.00","7591874000157","1.0000","2022-12-07 10:34:29","2023-05-20 13:27:35"),/*soy foreach */;
("168","7591039505954","GALLETAS FLIPS 1x12x28gs","131.92","170.23","6.30","VENTA *$6,30","COMPRA *$5,43x24300m","0","TIR","8.00","7591039505954","1.0000","2022-12-07 10:35:34","2023-05-19 08:58:02"),/*soy foreach */;
("169","7591039505121","GALLETAS FLIPS 220g","55.03","82.68","3.06","VENTA *$3,06","COMPRA *$2,46x22370m","0","EST","7.00","7591039505121","1.0000","2022-12-07 10:36:16","2023-04-28 13:50:57"),/*soy foreach */;
("170","7592708000220","TRIPLE-PLAY FAMLAR 70gs","9.23","32.42","1.20","VENTA *$1,20","COMPRA *$0,92x9990m","0","UND","11.00","7592708000220","1.0000","2022-12-07 10:51:54","2023-05-06 08:40:00"),/*soy foreach */;
("171","7592708000510","CHICHARRON SON AHUMADO 1x12","31.86","209.68","7.76","VENTA *$9","COMPRA *$7,08x3450mi","16","TIR","100.00","7592708000510","1.0000","2022-12-07 10:53:13","2022-12-08 20:57:03"),/*soy foreach */;
("172","7592708000114","CHICHARRON SON PCTE FAMLAR","7.42","58.36","2.16","VENTA *$2,5","COMPRA *$1,63x3450m","16","UND","100.00","7592708000114","1.0000","2022-12-07 10:54:03","2022-12-08 20:59:27"),/*soy foreach */;
("173","7592813000016","PEPITOS CHEE WEES 1x24","79.06","99.97","3.70","VENTA *$3,70","COMPRA *$3,24x6180m","0","TIR","33.00","7592813000016","1.0000","2022-12-07 10:54:53","2023-02-23 12:01:17"),/*soy foreach */;
("175","00021520","TO-TOX DE MAIZ 1x6x60g","53.00","70.25","2.60","VENTA *$2,60","COMPRA *$2,19x24220m","0","TIR","-12.68","00021520","1.0000","2022-12-07 11:00:04","2023-05-10 09:00:23"),/*soy foreach */;
("176","7707337524683","TO-TOX DE MAIZ FAMILIAR","8.83","13.51","0.50","VENTA *$0,50","COMPRA *$0,37x24220m","0","UND","1000.00","00021520","0.1670","2022-12-07 11:01:03","2023-03-21 12:21:38"),/*soy foreach */;
("177","7703133024228","TOZINETAS FRED YUPI 1x12","25.03","99.97","3.70","VENTA *$3,7","COMPRA *$2,99x8370m","0","BOL","9.00","7703133024228","1.0000","2022-12-07 11:04:09","2023-01-18 07:38:26"),/*soy foreach */;
("178","7703133024242","TOZINETAS FRED YUPI FAMILIAR","2.52","17.83","0.66","VENTA *$0,66","COMPRA *$0,45x5,61m","0","BOL","40.00","7703133024242","1.0000","2022-12-07 11:05:04","2023-01-17 12:24:49"),/*soy foreach */;
("179","7700634001680","TRADICIONAL FAMILIAR C/POLLO","0.00","40.53","1.50","VENTA *$1,50","COMPRA *$1,05","0","UND","100.00","7700634001680","1.0000","2022-12-07 11:05:57","2022-12-09 04:52:19"),/*soy foreach */;
("180","7592813000061","PEPITOS S/BOLY 1x24","21.32","104.84","3.88","VENTA *$4,50","COMPRA *$3,45x6180m","16","TIR","22.00","7592813000061","1.0000","2022-12-07 11:06:50","2022-12-09 03:59:35"),/*soy foreach */;
("181","7591206003436","ROSQUIS JACKS 1x12","37.35","151.58","5.61","VENTA *$6,50","COMPRA *$4,44x8210m","16","TIR","9.00","7591206003436","1.0000","2022-12-07 11:13:12","2022-12-22 08:48:32"),/*soy foreach */;
("182","7592708000466","RINGOS AROS C/PEREJIL 1x12","70.97","84.03","3.11","VENTA *$3,60","COMPRA *$2,91x4100","16","TIR","100.00","7592708000466","1.0000","2022-12-07 11:14:14","2023-02-23 11:58:15"),/*soy foreach */;
("184","7591206114378","RUFLES FAMLAR SURT 125gs","64.98","74.85","2.77","VENTA *$3,21","COMPRA *$2,44x26860m","16","UND","31.00","7591206114378","1.0000","2022-12-07 11:16:17","2023-06-09 14:23:53"),/*soy foreach */;
("185","7591206001708","RUFLES SURT 1x12x36gs","213.66","268.04","9.92","VENTA *$11,5","COMPRA *$8,77x24370m","16","TIR","9.00","7591206001708","1.0000","2022-12-07 11:17:29","2023-04-28 12:47:30"),/*soy foreach */;
("186","7591206100821","DORITOS CHILI FAMILAR 145g","0.00","57.28","2.12","VENTA *$2,45","COMPRA *$1,69","16","UND","30.00","7591206100821","1.0000","2022-12-07 11:18:42","2022-12-08 21:48:00"),/*soy foreach */;
("187","7591206002514","DORITOS M/QUESO 1x12x45gs","191.00","218.86","8.10","VENTA*$9,39","COMPRA *$7,17x26860m","16","TIR","5.00","7591206002514","1.0000","2022-12-07 11:19:43","2023-06-09 14:23:53"),/*soy foreach */;
("188","7591206003252","DORITOS M/QUESO FAMLAR 150gs","41.18","53.77","1.99","VENTA *$2,30","COMPRA *$1,69x24390m","16","UND","65.00","7591206003252","1.0000","2022-12-07 11:20:39","2023-03-28 13:32:13"),/*soy foreach */;
("189","7591206113319","DORITOS M/QUESO XXL 420gs","37.48","137.53","5.09","VENTA *$5,90","COMPRA *$4,29x8740m","16","UND","12.00","7591206113319","1.0000","2022-12-07 11:21:50","2023-02-03 08:09:33"),/*soy foreach */;
("190","7703133073035","GOLPE ORIGINAL 1x12","40.26","156.72","5.80","VENTA *$5,80","COMPRA *$4,81x8370mi","0","BOL","20.00","7703133073035","1.0000","2022-12-07 11:22:44","2023-03-21 06:12:03"),/*soy foreach */;
("191","7703133030212","GOLPE ORIGINAL FAMILIAR","9.03","54.04","2.00","VENTA *$2","COMPRA *$1,61x561","0","UND","20.00","7703133030212","1.0000","2022-12-07 11:23:30","2022-12-09 02:47:18"),/*soy foreach */;
("192","7703133080538","GOLPE RANCHERO 1x12","26.98","156.72","5.80","VENTA *$5,80","COMPRA *$4,81x561","0","TIR","10.00","7703133080538","1.0000","2022-12-07 11:24:22","2022-12-09 02:48:46"),/*soy foreach */;
("193","7703133073509","GOLPE RANCHERO FAMILIAR","9.03","54.04","2.00","VENTA *$2","COMPRA *$1,61x561","0","UND","20.00","7703133073509","1.0000","2022-12-07 11:25:18","2022-12-09 02:49:42"),/*soy foreach */;
("194","7591620203115","CHICHARRON PIGSY PICTE 1x18","60.50","80.25","2.97","VENTA *$2,97","COMPRA *$2,50x24200m","0","TIR","36.00","7591620203115","1.0000","2022-12-07 11:26:29","2023-05-31 12:05:20"),/*soy foreach */;
("195","7591206114675","CHEETOS ANARAN.BOLIQ.FAMLAR 110g","33.58","39.18","1.45","VENTA *$1,68","COMPRA *$1,25x26860m","16","UND","23.00","7591206114675","1.0000","2022-12-07 11:27:22","2023-06-10 07:38:14"),/*soy foreach */;
("196","7591206114682","CHEETOS ANARAN XXL 270gs","33.13","89.71","3.32","VENTA *$3,85","COMPRA *$2,87x18540m","16","UND","8.00","7591206114682","1.0000","2022-12-07 11:28:34","2023-05-24 10:44:21"),/*soy foreach */;
("197","7591206127996","CHEETOS AZUL BOLIQ 1x12x45gs","116.39","151.58","5.61","VENTA *$6,50","COMPRA *$4,78x24390m","16","TIR","99.00","7591206127996","1.0000","2022-12-07 11:29:30","2023-04-19 10:10:24"),/*soy foreach */;
("198","7591206114705","CHEETOS AZUL BOLIQ.FAMLAR 110gs","28.05","35.67","1.32","VENTA *$1,53","COMPRA *$1,15x4420m","16","UND","24.00","7591206114705","1.0000","2022-12-07 11:30:25","2023-06-10 07:38:14"),/*soy foreach */;
("199","7591206284712","CHEETOS AZUL XXL 180gs NOOOOOOO","30.81","89.71","3.32","VENTA *$3,85","COMPRA *$2,67x8200m","16","UND","20.00","7591206284712","1.0000","2022-12-07 11:31:18","2023-06-10 07:23:10"),/*soy foreach */;
("200","7591206010410","PEPITOS JACKS AMARILLO 1x12x25","116.58","144.56","5.35","VENTA *$6,20","COMPRA *$4,78x26860m","16","TIR","15.00","7591206010410","1.0000","2022-12-07 11:40:41","2023-06-10 07:38:13"),/*soy foreach */;
("201","7591206285269","PEPITOS JACKS FAMILIAR 80gs","19.02","25.67","0.95","VENTA *$1,10","COMPRA *$0,78x24390m","16","UND","76.00","7591206285269","1.0000","2022-12-07 11:41:42","2023-06-10 07:38:14"),/*soy foreach */;
("202","7591206285276","PEPITOS JACKS XXL 180gs","44.08","54.04","2.00","VENTA *$2,32","COMPRA *$1,66x26860m","16","UND","21.00","7591206285276","1.0000","2022-12-07 11:42:47","2023-06-10 07:38:14"),/*soy foreach */;
("203","1305","PLATANITOS JACKS 1x12x42gs","222.45","253.99","9.40","VENTA *$10.90","COMPRA *$8,35x26860m","16","TIR","4.00","1305","1.0000","2022-12-07 11:43:54","2023-06-10 07:38:13"),/*soy foreach */;
("204","7591206006505","PLATANITOS JACKS FAMLAR 150gr","18.29","68.90","2.55","VENTA *$2,95","COMPRA *$2,11x1154m","16","UND","18.00","7591206006505","1.0000","2022-12-07 11:44:44","2023-01-14 10:34:38"),/*soy foreach */;
("205","7591206000381","CHEEZ TRIS FAMLAR 150g","27.80","37.29","1.38","VENTA *$1,60","COMPRA*$1,14x24370m","16","UND","80.00","7591206000381","1.0000","2022-12-07 11:45:32","2023-06-03 08:37:07"),/*soy foreach */;
("206","7591206113326","CHEEZ TRIS JACKS XXL 450gs","74.37","95.65","3.54","VENTA *$4,10","COMPRA*$3,05x24370m","16","UND","10.00","7591206113326","1.0000","2022-12-07 11:46:22","2023-05-24 10:44:21"),/*soy foreach */;
("207","7591206010328","CHEEZ TRIS 1x12x54gs","169.65","193.46","7.16","VENTA *$8,30","COMPRA *$6,37x26860m","16","TIR","26.00","7591206010328","1.0000","2022-12-07 11:47:34","2023-06-09 14:23:53"),/*soy foreach */;
("208","7709333647809","MARRANETAS 1x12","52.00","63.50","2.35","VENTA *$2,35","COMPRA *$2x26mil","0","BOL","29.00","7709333647809","1.0000","2022-12-07 11:49:33","2023-05-27 08:27:17"),/*soy foreach */;
("209","7700634001086","CHICHARRON AMERICANO PCT 1x10","27.12","189.14","7.00","VENTA *$7","COMPRA *$5,96x4150mi","0","TIR","100.00","7700634001086","1.0000","2022-12-07 11:50:27","2022-12-08 20:53:03"),/*soy foreach */;
("210","7591206282688","DE TODITO JACKS 130GS","31.71","43.23","1.60","VENTA *$1,85","COMPRA *$1,30x24390m","16","UND","6.00","7591206282688","1.0000","2022-12-07 13:17:57","2023-04-01 11:49:15"),/*soy foreach */;
("211","1360","REFRESCO SUNCOLA 6x2","124.90","148.61","5.50","VENTA *$5,5","COMPRA *$4,9x25060m","0","CAJ","32.83","1360","1.0000","2022-12-08 07:39:45","2023-06-07 06:53:40");/*soy foreach */;
INSERT INTO productos VALUES
("212","7598848000045","REFRESCO SUN-COLA 2Lts","20.06","27.29","1.01","VENTA *$1,01","COMPRA *$0,82x25060m","0","UND","1000.00","1360","0.1670","2022-12-08 07:42:47","2023-05-06 11:45:29"),/*soy foreach */;
("213","7591428000060","HUEVOS X CAJA 1X12","1463.28","1621.20","60.00","VENTA*$60","COMPRA*$56x26130m","0","CAJ","5.52","7591428000060","1.0000","2022-12-08 07:44:42","2023-06-10 08:52:00"),/*soy foreach */;
("214","0852","HUEVOS CARTON 1X3O","121.94","140.50","5.20","VENTA*$5,20","COMPRA*$4,17x26130m","0","CAR","1000.00","7591428000060","0.0840","2022-12-08 07:47:58","2023-05-26 07:50:56"),/*soy foreach */;
("215","7790580357610","HUEVOS 1/2 CARTON 1X15","60.97","72.41","2.68","VENTA *$2,68","COMPRA*$2,33x26130m","0","1/2","1000.00","7591428000060","0.0417","2022-12-08 07:51:50","2023-05-26 07:52:20"),/*soy foreach */;
("216","7591720030598","PAN P/HAMBURQUESA 1X12","42.55","51.88","1.92","VENTA *$1,92","COMPRA *$1,70x25030m","0","PAQ","20.00","7591720030598","1.0000","2022-12-08 07:59:45","2023-05-05 08:44:12"),/*soy foreach */;
("217","0908","JAMON CHULDER FIESTA ENT","115.08","256.42","9.49","VENTA *$11","COMPRA *$5,61x8003m","16","KGS","200.00","0908","1.0000","2022-12-08 08:05:10","2023-02-23 08:46:52"),/*soy foreach */;
("218","7594005430205","JAMON CHULDER FIESTA REB","115.08","279.66","10.35","VENTA *$12","COMPRA *$5,61x8003m","16","KGS","200.00","7594005430205","1.0000","2022-12-08 08:08:47","2023-02-23 08:55:31"),/*soy foreach */;
("219","0628","JAMON CHULDER COBY MAGRO ENT","134.40","297.22","11.00","VENTA *$11","COMPRA *$7,80x16800m","0","KGS","40.00","0628","1.0000","2022-12-08 08:39:58","2022-12-28 12:40:09"),/*soy foreach */;
("220","0000016","JAMON CHULDER COBY MAGRO REB","134.40","324.24","12.00","VENTA *$12","COMPRA *$7,80x16800m","0","KGS","100.00","0000016","1.0000","2022-12-08 08:42:14","2022-12-28 12:44:43"),/*soy foreach */;
("221","0331","JAMON CHULDER PLUMROSE ENT","231.25","279.66","10.35","VENTA*$12","COSTO*$8,02x26130mil","16","KGS","32.90","0331","1.0000","2022-12-08 08:59:02","2023-05-31 07:01:58"),/*soy foreach */;
("222","0333","JAMON CHULDER PLUMROSE REB","231.25","302.89","11.21","VENTA *$13","COMPRA *$8,02x26130mi","16","KGS","1000.00","0331","1.0000","2022-12-08 09:01:42","2023-05-31 07:03:25"),/*soy foreach */;
("223","0000116","SALCHICHA B/NAT 4KG X BOLSA","439.92","540.40","20.00","VENTA *$20","COMPRA *$18x24440","0","PAQ","6.82","0000116","1.0000","2022-12-08 09:04:03","2023-05-04 07:59:19"),/*soy foreach */;
("224","00000234","SALCHICHA B/NAT 1/2 BOLSA","219.96","284.25","10.52","VENTA *$10.52","COMPRA *$9x24440m","0","PAQ","4.00","00000234","1.0000","2022-12-08 09:05:58","2023-04-05 12:33:04"),/*soy foreach */;
("225","1074","SALCHICHA B/NAT X UNIDA","4.40","6.21","0.23","VENTA *$0,23","COMPRA *$0,18x24440m","0","UND","1000.00","0000116","0.0100","2022-12-08 09:07:44","2023-04-19 12:55:13"),/*soy foreach */;
("226","7596817001109","MAYONESA GALON DI NONNA","353.16","418.81","15.50","VENTA *$15,5","COMPRA *$13,5x26160m","0","GAL","11.00","7596817001109","1.0000","2022-12-08 09:30:48","2023-05-31 11:04:07"),/*soy foreach */;
("227","0858","MAYONESA DI NONNA 12X445","654.00","783.58","29.00","VENTA *$29","COMPRA *$25x26160m","0","CAJ","4.60","0858","1.0000","2022-12-08 09:33:40","2023-06-03 13:06:33"),/*soy foreach */;
("228","7596817001086","MAYONESA DI NONNA 445GS","54.50","69.71","2.58","VENTA *$2,58","COMPRA *$2,08x26160m","0","UND","1000.00","0858","0.0840","2022-12-08 09:37:06","2023-05-31 11:06:02"),/*soy foreach */;
("229","7896321005793","CHUPETAS SICODELICA 1X30","9.35","54.04","2.00","VENTA *$2","COMPRA *$1,70x460mi","0","BOL","22.00","7896321005793","1.0000","2022-12-08 09:44:38","2023-03-17 07:58:56"),/*soy foreach */;
("230","2747","ENGORDE P/POLLOS X kilo","12.56","18.91","0.70","VENTA *$0,70","COMPRA *$0,50x25120S/40k","0","KIL","37.00","2747","1.0000","2022-12-09 07:01:09","2023-05-11 08:04:50"),/*soy foreach */;
("231","7591127122520","REFRESCO COCA S/BTELLA 1X6X1,25","122.56","136.45","5.05","VENTA *$5,85","COMPRA *$4,63x26470m","16","CAJ","53.83","7591127122520","1.0000","2022-12-09 07:55:20","2023-06-02 13:25:45"),/*soy foreach */;
("232","0000117","MALTA POLAR BTLLA GAVERA 1X36","319.41","391.79","14.50","VENTA*$14,50","COMPRA*$13x24500m","0","CAJ","7.88","0000117","1.0000","2022-12-09 07:59:33","2023-05-18 11:35:04"),/*soy foreach */;
("233","7594446000660","MALTA POLAR BOTLLITA UNDS","8.87","14.59","0.54","VENTA *$0,54","COMPRA *$0,36x24360m","0","UND","1000.00","0000117","0.0278","2022-12-09 08:03:03","2023-05-18 11:27:18"),/*soy foreach */;
("234","0000277","REFRESCO COCA-COLA 1,5 LTS","33.26","44.04","1.63","VENTA *$1,89","COMPRA*$1,27x26470m","16","UND","1000.00","0000102","0.1670","2022-12-09 08:06:05","2023-06-02 13:09:32"),/*soy foreach */;
("235","1187","REFRESCO COCA-COLA S/BTELLA 1,25LT","20.43","25.67","0.95","VENTA *$1,10","COMPRA *$0,77x26470m","16","UND","1000.00","7591127122520","0.1670","2022-12-09 08:09:57","2023-06-02 11:25:33"),/*soy foreach */;
("236","0683","REFRESCO COCA-COLA 1X6X1LT","144.02","172.39","6.38","VENTA*$7,40","COMPRA *$5,71x26470m","16","CAJ","1.98","0683","1.0000","2022-12-09 08:17:18","2023-06-02 13:25:45"),/*soy foreach */;
("237","0000102","REFRESCO COCA-COLA 1X6X1,5","201.17","224.27","8.30","VENTA *$9.63","COMPRA *$7,60x26470m","16","CAJ","9.66","0000102","1.0000","2022-12-09 08:32:47","2023-06-02 13:25:46"),/*soy foreach */;
("238","0670","REFRESCO COCA-COLA 1X6X2","230.61","259.93","9.62","VENTA *$11.15","COMPRA *$8,71x26470m","16","CAJ","12.49","0670","1.0000","2022-12-09 08:46:04","2023-06-08 12:01:19"),/*soy foreach */;
("239","7591127123626","REFRESCO COCA-COLA 2LTS","38.44","51.07","1.89","VENTA*$2.19","COMPRA*$1,45x26470m","16","UND","1000.00","0670","0.1670","2022-12-09 08:49:16","2023-06-02 12:41:07"),/*soy foreach */;
("240","08690997172907","CARAMELOS CHUPI FIESTA 1X300","30.00","40.53","1.50","VENTA*$1,5","COMPRA*$1,5x5500m","0","BOL","27.00","08690997172907","1.0000","2022-12-09 08:58:16","2023-05-29 09:35:42"),/*soy foreach */;
("241","07896731021222","CARAMELOS CHUPI FIESTA 1/2 KILO","8.25","54.04","2.00","VENTA*$2","COMPRA*$1.5","0","BOL","100.00","07896731021222","1.0000","2022-12-09 08:59:48","2022-12-09 08:59:48"),/*soy foreach */;
("242","07593251254559","CARAMELOS CHUPI FIESTA 1 KILO","50.00","67.55","2.50","VENTA*$2,5","COMPRA *$2,5x5500mil","0","BOL","18.00","07593251254559","1.0000","2022-12-09 09:01:34","2023-05-05 10:04:19"),/*soy foreach */;
("245","7709025282431","MOSTAZA BOLSA L/IDEAL 4KGS","126.88","154.01","5.70","VENTA *$5.7","COMPRA *$4.88x26mil","0","BOL","18.00","7709025282431","1.0000","2022-12-10 07:21:46","2023-05-23 08:22:15"),/*soy foreach */;
("246","7707238819116","SALSA BBQ GALON DIFFER 4kg","93.57","216.16","8.00","VENTA *$8","COMPRA *$6,88x5800m","0","GAL","3.00","7707238819116","1.0000","2022-12-10 07:32:10","2022-12-10 07:32:10"),/*soy foreach */;
("249","0196","DESIN.NOVA CLEAN 12x1","145.86","243.18","9.00","VENTA *$9","COMPRA *$6x24310m","0","CJA","4.92","0196","1.0000","2022-12-10 08:05:13","2023-03-24 11:00:48"),/*soy foreach */;
("250","0910","TOCINETA TOCI-RICA FIESTA REB","212.27","302.89","11.21","VENTA *$13","COMPRA *$8.12x26130","16","KGS","1000.00","TOR","1.0000","2022-12-10 08:16:10","2023-05-29 13:07:51"),/*soy foreach */;
("251","000025","FIAMBRE FONTANA ENTE","53.72","164.82","6.10","VENTA *$6,1","COMPRA *$3,95x12660m","0","KGS","30.00","000025","1.0000","2022-12-10 08:18:44","2022-12-10 08:18:44"),/*soy foreach */;
("252","1216","FIAMBRE FONTANA REBA","53.72","191.84","7.10","VENTA *$7,1","COMPRA *$3,95x12660m","0","KGS","30.00","1216","1.0000","2022-12-10 08:21:01","2022-12-10 08:21:01"),/*soy foreach */;
("253","0000035","JAMON ESP EL VALLE REB","141.18","221.56","8.20","VENTA *$8.2","COMPRA *$5.47x25810m","0","KGS","1000.00","0000238","1.0000","2022-12-10 08:23:53","2023-05-18 13:15:47"),/*soy foreach */;
("254","0000238","JAMON ESP EL VALLE ENT","141.18","194.54","7.20","VENTA *$7.20","COMPRA *$5.47x25810m","0","KGS","48.00","0000238","1.0000","2022-12-10 08:27:56","2023-05-18 13:30:24"),/*soy foreach */;
("255","7709392006036","SALSA BBQ BOLSA IDEAL 4kg","165.31","221.56","8.20","VENTA *$8,2","COMPRA *$6,75x24490m","0","BOL","2.00","7709392006036","1.0000","2022-12-10 08:31:05","2023-03-31 08:04:22"),/*soy foreach */;
("256","1112","SALSA D/MAIZ E/BLSA GOODYL 3,5kg","120.27","270.20","10.00","VENTA *$10","COMPRA *$9,5x5012mi","0","BOL","4.00","1112","1.0000","2022-12-10 08:33:00","2022-12-10 08:33:00"),/*soy foreach */;
("257","6917790976030","LEVADURA INSTANTANEA EAGLE 500GS","60.42","97.27","3.60","VENTA *$3,60","COMPRA *$2,75x21730m","0","EST","20.00","6917790976030","1.0000","2022-12-10 08:35:46","2023-01-28 11:11:06"),/*soy foreach */;
("258","7591098000490","SERVILLETAS \"Z\" Peq. 1x250","8.80","32.96","1.22","VENTA *$1,22","COMPRA *$0,93x9430m","0","UND","100.00","7591098000490","1.0000","2022-12-10 09:09:49","2022-12-10 09:09:49"),/*soy foreach */;
("259","SER71","SERVILLETAS \"Z\" PEQ.30X250","264.04","864.64","32.00","VENTA *$32","COMPRA *$28x9430m","0","BTO","3.00","SER71","1.0000","2022-12-10 09:22:42","2022-12-10 09:22:42"),/*soy foreach */;
("261","7708969766052","MAYONESA BOLSA L/IDEAL 3,350KGS","167.70","202.65","7.50","VENTA *$7,5","COMPRA *$6,45x26mil","0","BOL","22.00","7708969766052","1.0000","2022-12-10 09:29:04","2023-05-23 08:19:46"),/*soy foreach */;
("262","0375","PAN P/PERRO Gde.1X12","32.54","39.99","1.48","VENTA *$1,48","COMPRA *$1,30x25030m","0","PAQ","20.00","0375","1.0000","2022-12-10 10:16:00","2023-05-05 08:45:35"),/*soy foreach */;
("263","0374","PAN P/PERRO PEQ.1X2O","32.54","39.99","1.48","VENTA *$1,48","COMPRA *$1,30x25030m","0","PAQ","20.00","0374","1.0000","2022-12-10 10:35:03","2023-05-05 08:46:46"),/*soy foreach */;
("264","000009","PAN P/SANDWICH GRANDE","47.56","62.69","2.32","VENTA *$2,32","COMPRA *$1,90x25030m","0","PAQ","20.00","000009","1.0000","2022-12-10 10:36:56","2023-05-05 08:49:32"),/*soy foreach */;
("265","0000246","QUESO AMARILLO CHEDDAR ENT","68.53","270.20","10.00","VENTA *$10","COMPRA *$7x8450m","0","KGS","87.00","0000246","1.0000","2022-12-10 11:10:44","2022-12-10 11:10:44"),/*soy foreach */;
("266","00000011","QUESO AMARILLO CHEDDAR REB","68.53","297.22","11.00","VENTA *$11","COMPRA *$7x8450m","0","KGS","100.00","00000011","1.0000","2022-12-10 11:20:00","2022-12-10 11:20:00"),/*soy foreach */;
("267","01164","QUESO AMARILLO FORNAL ENT","91.61","351.26","13.00","VENTA *$13","COMPRA *$8,80x5780m","0","KGS","18.00","01164","1.0000","2022-12-10 11:22:55","2022-12-10 11:22:55"),/*soy foreach */;
("268","07592541000135","QUESO AMARILLO TABLON ENT","226.46","283.71","10.50","VENTA *$10,5","COMPRA *$9,15x24630mi","0","KGS","29.00","07592541000135","1.0000","2022-12-10 11:28:07","2023-05-05 12:33:55"),/*soy foreach */;
("269","QUES03","QUESO PECORINO D/P ENTE","405.02","594.44","22.00","VENTA *$22","COMPRA *$16,37x24750m","0","KIL","36.00","QUES03","1.0000","2022-12-10 11:50:14","2023-05-05 12:33:55"),/*soy foreach */;
("270","0309","QUESO MOZZARELLA ZEDEÑO ENT","211.86","270.20","10.00","VENTA *$10","COMPRA *$8,56x24750m","0","KIL","41.00","0309","1.0000","2022-12-10 11:56:26","2023-05-05 12:33:55"),/*soy foreach */;
("272","0598","PEGA LOKA-3-1X12","55.78","81.06","3.00","VENTA*$3","COMPRA*$2,29x24360m","0","DOC","10.00","0598","1.0000","2022-12-12 06:32:14","2023-03-03 10:50:14"),/*soy foreach */;
("273","8021034010133","PEGA LOKA-3-UND","4.65","8.38","0.31","VENTA*$0,31","COMPRA*$0,19x24360","0","UND","100.00","8021034010133","1.0000","2022-12-12 06:34:20","2023-03-03 10:51:08"),/*soy foreach */;
("274","6944800871221","LAMPARA DE FRENTE CHINA","290.81","405.30","15.00","VENTA *$15","COMPRA *$13x5015mil","0","UND","28.00","6944800871221","1.0000","2022-12-12 06:37:50","2023-05-16 09:35:36"),/*soy foreach */;
("275","0000001","LAMPARA LED 100 WATIOS","133.10","216.16","8.00","VENTA *$8","COMPRA *$5,5x19050m","0","UND","1.00","0000001","1.0000","2022-12-12 06:47:39","2023-03-24 10:54:42"),/*soy foreach */;
("276","0351","LAMPARA LED 200 WATIOS","217.80","297.22","11.00","VENTA *$11","COMPRA *$9x24200m","0","UND","2.00","0351","1.0000","2022-12-12 06:49:11","2023-03-24 10:54:43"),/*soy foreach */;
("277","0058","LAMPARA LED 50 WATIOS","96.88","162.12","6.00","VENTA *$6","COMPRA *$4x9800m","0","UND","2.00","0058","1.0000","2022-12-12 06:50:51","2023-03-24 10:54:43"),/*soy foreach */;
("281","6981029041141","PAÑAL PANBEBE ROJO PEQ 1X12","5.89","67.55","2.50","VENTA *$2.5","COMPRA *$1.28","0","PAQ","20.00","6981029041141","1.0000","2022-12-12 07:09:47","2022-12-12 07:09:47"),/*soy foreach */;
("282","6950769526683","AFEITADORA MATURBE-3 AZUL 1X12","48.72","76.47","2.83","VENTA *$2,83","COSTO *$2x24360m","0","TIR","96.00","6950769526683","1.0000","2022-12-12 07:11:10","2023-04-11 09:14:38"),/*soy foreach */;
("283","6924565912612","AFEITADORA Mtc ULTRAGRIP 1x12","65.00","81.06","3.00","VENTA *$3","COMPRA *$2,5x26160m","0","TIR","11.00","6924565912612","1.0000","2022-12-12 07:12:36","2023-06-03 13:27:25"),/*soy foreach */;
("284","6920210928212","BOMBILLO LIGHTFLY 10W","21.56","37.83","1.40","VENTA *$1,40","COMPRA *$1,05x20530","0","UND","25.00","6920210928212","1.0000","2022-12-12 07:15:08","2023-04-14 08:33:45"),/*soy foreach */;
("285","6920210928229","BOMBILLO LIGHTFLY 15W","26.07","46.20","1.71","VENTA *$1,71","COMPRA *$1,27x20530","0","UND","28.00","6920210928229","1.0000","2022-12-12 07:16:40","2023-04-22 11:43:38"),/*soy foreach */;
("286","6920210928236","BOMBILLO LIGHTFLY 20W","37.98","67.55","2.50","VENTA *$2,50","COMPRA *$1,85x20530","0","UND","28.00","6920210928236","1.0000","2022-12-12 07:24:45","2023-01-23 10:36:48"),/*soy foreach */;
("287","6920210928335","BOMBILLO LIGHTFLY 28WT","50.71","91.87","3.40","VENTA *$3,4","COMPRA *$2,47x8100m","0","UND","30.00","6920210928335","1.0000","2022-12-12 07:26:18","2023-01-23 10:33:50"),/*soy foreach */;
("288","6920210928243","BOMBILLO LIGHTFLY 30W","46.40","85.11","3.15","VENTA *$3,15","COMPRA *$2,26x20530","0","UND","28.00","6920210928243","1.0000","2022-12-12 07:27:40","2023-01-23 10:25:15"),/*soy foreach */;
("289","6920210928342","BOMBILLO LIGHTFLY 40WT","78.63","140.50","5.20","VENTA *$5,2","COMPRA *$3,83x20530","0","UND","30.00","6920210928342","1.0000","2022-12-12 07:28:55","2023-01-23 10:31:14"),/*soy foreach */;
("290","6920210928267","BOMBILLO LIGHTFLY 50W","91.36","162.12","6.00","VENTA *$6","COMPRA *$4,45x20530","0","UND","30.00","6920210928267","1.0000","2022-12-12 07:30:14","2023-01-23 10:28:34"),/*soy foreach */;
("291","6973009311566","BOMBILLOS CHINO BEH 15WT","5.06","37.83","1.40","VENTA *$1.4","COMPRO *$1","0","UND","30.00","6973009311566","1.0000","2022-12-12 07:31:48","2022-12-12 07:31:48"),/*soy foreach */;
("292","6924579447155","BOMBILLOS LIGHTFLY 5WT","17.25","30.26","1.12","VENTA *$1,12","COMPRA *$0,84x20530","0","UND","30.00","6924579447155","1.0000","2022-12-12 07:34:15","2023-01-23 10:43:48"),/*soy foreach */;
("293","7591016171080","COCOSETTE MAXI 1X18","255.81","312.35","11.56","VENTA *$13,4","COMPRA *$10,22x24420m","16","PAQ","7.00","7591016171080","1.0000","2022-12-12 08:20:03","2023-05-09 13:53:16"),/*soy foreach */;
("294","7591016154922","COCOSETTE MINI 1X18","26.64","209.68","7.76","VENTA *$9","COMPRA *$5,97x4460mi","16","EST","200.00","7591016154922","1.0000","2022-12-12 08:21:25","2022-12-12 08:21:25"),/*soy foreach */;
("295","7591016171806","COCOSETTE MULTIPACK 1X4","39.89","79.44","2.94","VENTA *$3,40","COMPRA *$2,33x17120m","16","PAQ","19.00","7591016171806","1.0000","2022-12-12 08:22:39","2023-01-11 06:44:21"),/*soy foreach */;
("296","603554070156","AJO MOLIDO X KILO 1Kg","97.48","162.12","6.00","VENTA *$6","COMPRA *$4x26860m","0","KGS","6.00","603554070156","1.0000","2022-12-12 08:23:48","2023-06-09 14:23:50"),/*soy foreach */;
("297","7591720031021","BOMBONES DE CORAZON 1X8","8.90","86.46","3.20","VENTA *$3.2","COMPRA *$2x4450mil","0","BOM","100.00","7591720031021","1.0000","2022-12-12 08:25:36","2022-12-12 08:25:36"),/*soy foreach */;
("298","7591720032493","BOMBONES DE NAVIDAD 1X12","13.30","121.59","4.50","VENTA *$4.5","COMPRA *$3x4450mil","0","BOM","100.00","7591720032493","1.0000","2022-12-12 08:26:55","2022-12-12 08:26:55"),/*soy foreach */;
("299","7591720031328","BOMBONES DE TRUFFAS 1X8","8.90","86.46","3.20","VENTA *$3,2","COMPRA *$2x4450mil","0","BOM","100.00","7591720031328","1.0000","2022-12-12 08:28:05","2022-12-12 08:28:05"),/*soy foreach */;
("300","000006-revisar","BOMBONERA BOLON S/CAFE 1X100","6.75","54.04","2.00","VENTA *$2","COMPRA *$1,5x4500mil","0","BOM","100.00","000006-revisar","1.0000","2022-12-12 08:29:41","2023-04-25 13:08:53"),/*soy foreach */;
("301","7896066767017","BOMBONES BEL SURT.1X50","14.46","135.10","5.00","VENTA *$5","COMPRA *$3,25x1800mi","0","BOM","60.00","7896066767017","1.0000","2022-12-12 08:33:28","2022-12-12 08:33:28"),/*soy foreach */;
("302","7702025103904","GALLETAS FESTIVAL 1X12X4","13.20","107.81","3.99","VENTA *$3.99","COMPRA *$3x1800mil","0","PAQ","78.00","7702025103904","1.0000","2022-12-12 08:46:25","2023-03-21 08:31:52"),/*soy foreach */;
("303","7591316000042","DORADITOS ONCE ONCE 1X24","11.98","74.58","2.76","VENTA$3.2","O/ONCE2.19*5.47","16","EST","10.00","7591316000042","1.0000","2022-12-12 08:47:34","2022-12-12 08:47:34"),/*soy foreach */;
("304","7593278000368","SALCHICHA FONTANA MAYOR X KILO","79.19","97.27","3.60","VENTA *$3,60","COMPRA *$3,16x25060mil","0","PAQ","20.00","7593278000368","1.0000","2022-12-12 08:48:43","2023-05-08 12:14:00"),/*soy foreach */;
("305","7592208997990","TURRON BLANCO D/MANI-MONTAÑA 1X24","13.50","108.08","4.00","VENTA *$4","COMPRA *$3","0","EST","60.00","7592208997990","1.0000","2022-12-12 08:50:03","2022-12-12 08:50:03"),/*soy foreach */;
("306","011450328200","TURRON DORMILON D/AJONJOLI 1X24","23.65","149.96","5.55","VENTA *$5.55","COMPRA *$4,3","0","EST","20.00","011450328200","1.0000","2022-12-12 08:51:33","2022-12-12 08:51:33"),/*soy foreach */;
("307","7709738955820","TURRON DORMILON D/MANI 1X24","23.65","149.96","5.55","VENTA *$5.55","COMPRA *$4,3","0","EST","100.00","7709738955820","1.0000","2022-12-12 08:56:23","2022-12-12 08:56:23"),/*soy foreach */;
("308","0011450328200","TURRON DORMILON DE AVENA 1x24","23.65","149.96","5.55","VENTA *$5,55","COMPRA *$4,3X5500MI","0","EST","20.00","0011450328200","1.0000","2022-12-12 08:57:42","2022-12-12 08:57:42"),/*soy foreach */;
("309","7591188552694","TURRON DORMILON MANI-PASA 1X24","0.00","149.96","5.55","VENTA *$5.55","COMPRA *$","0","EST","0.00","7591188552694","1.0000","2022-12-12 08:59:11","2022-12-12 08:59:11"),/*soy foreach */;
("310","7709738955851","TURRON LA MARMOTA COMBINADO 1X12","13.50","81.06","3.00","VENTA *$3","COMPRA *$3x300mil","0","EST","100.00","7709738955851","1.0000","2022-12-12 09:00:37","2022-12-12 09:00:37"),/*soy foreach */;
("311","7709738955875","TURRON LA MARMOTA COMBO 1X12","13.50","81.06","3.00","VENTA *$3","COMPRA *$3x300mil","0","EST","100.00","7709738955875","1.0000","2022-12-12 09:01:55","2022-12-12 09:01:55"),/*soy foreach */;
("312","7591016173473","SAMBA CHOCOLATE 1x20","210.75","265.61","9.83","VENTA *$11,4","COMPRA *$8,42x24420m","16","PAQ","9.00","7591016173473","1.0000","2022-12-12 09:04:09","2023-05-09 13:53:16"),/*soy foreach */;
("313","7591016173435","SAMBA FRESA 1X2O","210.75","265.61","9.83","VENTA *$11,4","COMPRA *$8,42x24420m","16","PAQ","5.00","7591016173435","1.0000","2022-12-12 09:05:33","2023-05-09 13:53:16"),/*soy foreach */;
("314","7591016855157","SAMBA MULTIPACK","8.19","49.72","1.84","VENTA*$2.13","SAVOY*$1.46*5.61","16","PAQ","20.00","7591016855157","1.0000","2022-12-12 09:10:38","2022-12-12 09:10:38"),/*soy foreach */;
("315","7613039352151","ESPECIALIDADES NESTLE 1X15 UND","55.47","110.78","4.10","VENTA *$4,1","COMPRA *$3,24x17120m","0","EST","20.00","7613039352151","1.0000","2022-12-12 09:41:22","2022-12-29 12:49:44"),/*soy foreach */;
("316","7891008114164","SERENATA DE AMOR 1X14","19.58","79.44","2.94","VENTA *$3,40","COMPRA *$2,34x8380mi","16","EST","20.00","7891008114164","1.0000","2022-12-12 09:43:00","2022-12-12 09:43:00"),/*soy foreach */;
("317","7591016161128","TORONTO BOLSA 1X14UNDS","99.96","135.10","5.00","VENTA *$5","COMPRA *$4,08x24420m","0","BOL","3.00","7591016161128","1.0000","2022-12-12 09:44:22","2023-04-18 08:22:10"),/*soy foreach */;
("318","7591016161111","TORONTO CAJA 1X36UND","224.63","297.22","11.00","VENTA *$12,75","COMPRA *$9,20x24420m","16","CAJ","10.00","7591016161111","1.0000","2022-12-12 09:46:16","2023-03-01 09:05:26"),/*soy foreach */;
("319","7591016154687","CHOCOLATE RIKITI MED.1X12X30","182.39","232.91","8.62","VENTA *$10","COMPRA *$7,47x24420m","16","EST","100.00","7591016154687","1.0000","2022-12-12 09:47:57","2023-03-01 08:45:35"),/*soy foreach */;
("320","7591016154977","CHOCOLATE GALAK MED.1X12X30","182.39","232.91","8.62","VENTA *$10","COMPRA *$7,47x24420m","16","EST","10.00","7591016154977","1.0000","2022-12-12 09:49:08","2023-03-01 08:53:36");/*soy foreach */;
INSERT INTO productos VALUES
("321","7591016205747","CACAO POSTRE SAVOY 1KG","4.34","349.64","12.94","VENTA *$15","COMPRA *$9.92","16","BOL","40.00","7591016205747","1.0000","2022-12-12 09:50:40","2022-12-12 09:50:40"),/*soy foreach */;
("322","7591016154649","CHOCO-CHOCO SAVOY 1X12","33.72","256.69","9.50","VENTA *$11","COMPRA *$8.43x1100mi","16","UND","100.00","7591016154649","1.0000","2022-12-12 09:52:52","2022-12-12 09:52:52"),/*soy foreach */;
("323","7591016155097","CHOCOLATE POST/OSCURO SAVOY 1X4","299.76","372.88","13.80","VENTA *$16","COMPRA *$12,24x24490m","16","EST","-3.50","7591016155097","1.0000","2022-12-12 09:54:01","2023-05-13 12:32:21"),/*soy foreach */;
("324","7591016855096","CHOCOLATE POST/OSCURO SAVOY UNDS","74.94","104.84","3.88","VENTA *$4,5","COMPRA *$3,10x24490mi","16","UND","1000.00","7591016155097","0.2500","2022-12-12 09:55:16","2023-03-31 10:20:44"),/*soy foreach */;
("325","7702174080668","FRUNAS VITA C 1x12","21.76","93.22","3.45","VENTA *$3,45","COMPRA *$2,60x8370m","0","EST","9.00","7702174080668","1.0000","2022-12-12 10:30:14","2023-05-19 08:58:03"),/*soy foreach */;
("326","7702174073257","MECHAS LOCAS 1x6","29.13","121.59","4.50","VENTAS *$4,50","COMPRA *$3,48x8370m","0","TIR","9.00","7702174073257","1.0000","2022-12-12 10:31:25","2023-01-14 10:34:38"),/*soy foreach */;
("327","7861008507822","CHICLETS AGOGO ACILIQUIDO MIX 1X24","14.59","132.40","4.90","VENTA *$4.9","COMPRA *$4,49x3250mi","0","EST","40.00","7861008507822","1.0000","2022-12-12 10:32:59","2022-12-12 10:32:59"),/*soy foreach */;
("328","7861008506030","LAMPARA LED C/CABLE 200 WATI","217.80","351.26","13.00","VENTA *$13","COMPRA *$9x24200m","0","UND","2.00","7861008506030","1.0000","2022-12-12 10:50:42","2023-03-24 06:51:21"),/*soy foreach */;
("329","7861008502452","CHICLETS KATABOOM SURT 1X60","8.77","81.06","3.00","VENTA *$3","COMPRA *$2,70x3250mi","0","EST","100.00","7861008502452","1.0000","2022-12-12 10:52:47","2022-12-12 10:52:47"),/*soy foreach */;
("330","7861008502179","CHICLETS S/H/ACIDO MANGO 1X50","9.30","81.06","3.00","VENTA *$3","COMPRA *$2,85x3250mi","0","EST","100.00","7861008502179","1.0000","2022-12-12 10:54:54","2022-12-12 10:54:54"),/*soy foreach */;
("331","7861008501424","CHICLETS S/H/ACIDO SANDIA 1X50","9.30","81.06","3.00","VENTA *$3","VENTA *$3","0","EST","100.00","7861008501424","1.0000","2022-12-12 11:03:42","2022-12-12 11:03:42"),/*soy foreach */;
("332","7861008504975","CHICLETS BARRA S/ACIDO SURT 1X40","21.55","132.40","4.90","VENTA *$4.9","COMPRA *$4,31x3250mi","0","EST","60.00","7861008504975","1.0000","2022-12-12 11:05:39","2022-12-12 11:05:39"),/*soy foreach */;
("333","7861008514073","CHICLETS BOLA ACIDO SURT 1X36","22.39","189.14","7.00","VENTA *$7","COMPRA *$6,89x3250mi","0","EST","59.00","7861008514073","1.0000","2022-12-12 11:07:05","2023-04-19 12:38:24"),/*soy foreach */;
("334","7707282387494","CHICLETS SPLOT ACIDO 1X24","14.45","90.79","3.36","VENTA *$3.9","COMPRA *$2,89x1100mi","16","EST","20.00","7707282387494","1.0000","2022-12-12 11:09:04","2022-12-12 11:09:04"),/*soy foreach */;
("335","7591016154724","SUSY CHOCO 2 1X4","12.46","72.68","2.69","VENTA$3.12","NESTLEx$2.2x5.57","16","PAQ","20.00","7591016154724","1.0000","2022-12-12 11:11:23","2022-12-12 11:11:23"),/*soy foreach */;
("336","7591016171066","SUSY MAXI 1X18","249.53","312.35","11.56","VENTA *$13,40","COMPRA *$10,22x24420m","16","PAQ","9.00","7591016171066","1.0000","2022-12-12 11:15:18","2023-05-09 13:53:16"),/*soy foreach */;
("337","7591016154946","SUSY MINI 1X18","154.80","202.65","7.50","VENTA *$8,70","COMPRA *$6,34x6090m","16","PAQ","15.00","7591016154946","1.0000","2022-12-12 11:18:42","2023-05-16 10:28:34"),/*soy foreach */;
("338","7591016173121","SUSY MULTIPACK 1X4","22.63","91.87","3.40","VENTA *$3,40","COMPRA *$2,70x8380mi","0","PAQ","28.00","7591016173121","1.0000","2022-12-12 11:20:03","2023-01-11 06:44:21"),/*soy foreach */;
("339","7591016150306","CHOCOLATE CARRE MINI/AVEL.1X16","317.21","405.30","15.00","VENTA *$15","COMPRA *$13x24420m","0","EST","9.00","7591016150306","1.0000","2022-12-12 11:21:37","2023-04-25 12:07:47"),/*soy foreach */;
("340","7591620530778","GALLETAS REVOLTOSA EST 1x12","10.13","43.23","1.60","VENTA *$1,6","COMPRA *$1,21x8370m","0","EST","20.00","7591620530778","1.0000","2022-12-12 11:23:08","2022-12-12 11:23:08"),/*soy foreach */;
("341","7591620531997","GALLETAS REVOLTOSA FUDGE 1x","18.75","75.66","2.80","VENTA *$2,80","COMPRA *$2,24x8370m","0","EST","20.00","7591620531997","1.0000","2022-12-12 11:25:51","2022-12-12 11:25:51"),/*soy foreach */;
("342","805579053118","GALLETAS REVOLTOSA SURT 1X36","25.95","90.52","3.35","VENTA *$3.35","COMPRA *$2.75x26860mi","0","BOL","15.00","805579053118","1.0000","2022-12-12 11:29:44","2023-06-10 08:04:43"),/*soy foreach */;
("343","7702174080514","YOGUE POPS SOBRE SURT 1x12","10.46","44.58","1.65","VENTA *$1,65","COMPRA *$1,25x8370m","0","BOL","23.00","7702174080514","1.0000","2022-12-12 11:34:44","2023-06-01 09:12:34"),/*soy foreach */;
("344","7591502001280","GALLETAS MINI PALMERITA 1X6","15.68","108.08","4.00","VENTA *$4","COMPRA *$3,17x4950mi","0","EST","20.00","7591502001280","1.0000","2022-12-12 11:37:07","2022-12-12 11:37:07"),/*soy foreach */;
("345","8690997121998","CHOCOLATE MAGIC 1X12","16.78","163.20","6.04","VENTA *$7","COMPRA *$6,21x2700mi","16","UND","100.00","8690997121998","1.0000","2022-12-12 11:40:05","2022-12-12 11:40:05"),/*soy foreach */;
("346","7896306618307","CHOCOLATE TRENTO SURT 1X16","30.37","202.65","7.50","VENTA *$7.5","COMPRA *$6,75x4500mi","0","EST","100.00","7896306618307","1.0000","2022-12-12 11:42:15","2022-12-12 11:42:15"),/*soy foreach */;
("347","7591720031854","CHOCO-BLANCO ST.MORIT 1X12","6.48","140.50","5.20","VENTA *$6","COMPRA *$5,4x1200mil","16","EST","100.00","7591720031854","1.0000","2022-12-12 11:43:54","2022-12-12 11:43:54"),/*soy foreach */;
("348","7591720031649","CHOCO-LATTE CRUJIENTE ST.MORIT 1X12","6.48","139.96","5.18","VENTA *$6","COMPRA *$5,4x1200mil","16","EST","150.00","7591720031649","1.0000","2022-12-12 11:52:50","2022-12-12 11:52:50"),/*soy foreach */;
("349","7591720031229","DUNGA TUBITO SURT 1X12","32.63","174.82","6.47","VENTA*$7.5","DUNGA*$7.25*1.10","16","EST","20.00","7591720031229","1.0000","2022-12-12 11:54:55","2022-12-12 11:54:55"),/*soy foreach */;
("350","8693029300637","PRINCH 1X24","10.49","162.12","6.00","VENTA *$6","COMPRA *$5,83x1800mi","0","EST","60.00","8693029300637","1.0000","2022-12-12 11:56:23","2022-12-12 11:56:23"),/*soy foreach */;
("351","8693029609815","NUSS BLANCO 1X24","10.35","159.42","5.90","VENTA *$5.9","COMPRA *$5,75x1800mi","0","EST","100.00","8693029609815","1.0000","2022-12-12 11:58:19","2022-12-12 11:58:19"),/*soy foreach */;
("352","8693029702684","CHOCOLATE SUPER 1X24","8.10","132.40","4.90","VENTA *$4.9","COMPRA *$4,5x1800","0","EST","100.00","8693029702684","1.0000","2022-12-12 11:59:29","2022-12-12 11:59:29"),/*soy foreach */;
("353","8693029600775","COCOS ELVAN 1X24","23.00","162.12","6.00","VENTA *$6","COMPRA *$5,75x1800","0","EST","100.00","8693029600775","1.0000","2022-12-12 12:00:43","2022-12-12 12:00:43"),/*soy foreach */;
("354","8032958761582","BARQUILLAS PLAY-ROLLS 150G","10.30","79.71","2.95","VENTA*$2.95","BISCUIT2.24*4.6","0","EST","20.00","8032958761582","1.0000","2022-12-12 12:02:08","2022-12-12 12:02:08"),/*soy foreach */;
("355","7891151036221","CHICLE BUZZY CROC UVA SURT 1X40X172G","9.45","88.09","3.26","VENTA*$3.26","CROC*$2.10","0","PAQ","19.00","7891151036221","1.0000","2022-12-12 12:03:07","2023-05-19 08:58:02"),/*soy foreach */;
("356","7891151033800","CHICLETS BUZZY TATUAGEM 1X100","17.08","118.08","4.37","VENTA *$5.06","COMPRA *$3,46x4940m","16","PAQ","20.00","7891151033800","1.0000","2022-12-12 12:04:08","2022-12-12 12:04:08"),/*soy foreach */;
("357","7702011128515","CHICLE BBBUM 1X50","12.05","81.60","3.02","VENTA*$3.50","BBBUM*$2.44*4.94","16","PAQ","18.00","7702011128515","1.0000","2022-12-12 12:05:14","2023-03-30 10:19:28"),/*soy foreach */;
("358","7702354948092","CARAMELO EXPLOSION 1X24","27.64","186.44","6.90","VENTA*$8","QUIPITO*$5.59*4.94","16","EST","10.00","7702354948092","1.0000","2022-12-12 12:06:14","2022-12-12 12:06:14"),/*soy foreach */;
("359","7897190307575","CHICLE GUDS 1X18","3.89","87.00","3.22","VENTA*$3.22","GUDS*$2.16","0","PAQ","40.00","7897190307575","1.0000","2022-12-12 12:07:41","2022-12-12 12:07:41"),/*soy foreach */;
("360","7000111123516","LLUVIA D/COLORES 1 KGS","11.50","94.57","3.50","VENTA*$3.5","COMPRA *$2,5x4600mil","0","UND","100.00","7000111123516","1.0000","2022-12-12 12:26:19","2022-12-12 12:26:19"),/*soy foreach */;
("361","7593311000010","LLUVIA D/CHOCOLTE 1 KG","36.70","256.69","9.50","VENTA*$11","COMPRA *$8,34x1200mi","16","UND","100.00","7593311000010","1.0000","2022-12-12 12:27:22","2022-12-12 12:27:22"),/*soy foreach */;
("362","7896286620833","BOMBONES CORY PAO DIMEL 1X10","2.50","40.53","1.50","VENTA*$1.5","COMPRA *$0,78x3150mi","0","EST","100.00","7896286620833","1.0000","2022-12-12 12:28:23","2022-12-12 12:28:23"),/*soy foreach */;
("363","603554060782","HUEVOS DINO 1X20","15.18","119.16","4.41","VENTA*$4.41","COMPRA*$3.3","0","BOL","20.00","603554060782","1.0000","2022-12-12 12:29:32","2022-12-12 12:29:32"),/*soy foreach */;
("364","7802215105838","MONEDAS AMBROFOLI 1X45","12.88","108.08","4.00","VENTA *$4","COMPRA *$2,8x4600mil","0","BOL","19.00","7802215105838","1.0000","2022-12-12 12:30:37","2023-03-29 10:52:28"),/*soy foreach */;
("365","000005930","BOLSAS P/PAN D/JAMON 1x50","75.94","351.26","13.00","VENTA *$13","COMPRA *$9,26x8200m","0","PAQ","20.00","000005930","1.0000","2022-12-12 12:32:36","2022-12-23 08:21:16"),/*soy foreach */;
("366","7702174074353","FRUTAS PLAY ORIGINAL 1X32 352G","16.49","67.55","2.50","VENTA*$2,50","COMPRA*$1,97*8370m","0","TIR","20.00","7702174074353","1.0000","2022-12-12 12:33:42","2022-12-12 12:33:42"),/*soy foreach */;
("367","7592052000280","TORTAS RIFEL VANLLA 1X6","18.30","141.86","5.25","VENTA *$6.09","COMPRA *$4,14x4420mi","16","EST","99.00","7592052000280","1.0000","2022-12-12 12:34:43","2022-12-22 08:48:32"),/*soy foreach */;
("368","7592052000457","PONQUESITOS RIFEL CHOCLTE 1X6","13.13","101.05","3.74","VENTA *$4.33","COMPRA *$2,97x4420mi","16","EST","19.00","7592052000457","1.0000","2022-12-12 12:35:55","2023-04-28 12:47:30"),/*soy foreach */;
("369","7896022204945","GALLETAS RENATA WAFFER EST","14.50","19.18","0.71","VENTA *$0.71","COMPRA *$0,58x4600mi","0","EST","77.00","7896022204945","1.0000","2022-12-12 12:37:00","2023-05-09 12:39:34"),/*soy foreach */;
("370","7594744412258","GRAGEA D/COLORES 1 KGS","36.00","297.22","11.00","VENTA*$11","COMPRA *$9x1014mil","0","UND","100.00","7594744412258","1.0000","2022-12-12 12:38:32","2022-12-12 12:38:32"),/*soy foreach */;
("371","603554027136","CHICLETS TATTOO 1x100","86.14","114.84","4.25","VENTA *$4,25","COMPRA *$3,5x24610m","0","BOL","17.00","603554027136","1.0000","2022-12-12 12:40:06","2023-05-26 09:16:10"),/*soy foreach */;
("372","7702174061414","CARAMELOS MIST SURT.1X100","32.44","48.64","1.80","VENTA *$1,80","COMPRA *$1,45x22370m","0","EST","67.00","7702174061414","1.0000","2022-12-12 12:41:19","2023-05-16 13:54:58"),/*soy foreach */;
("373","7896259417507","CARAMELOS BITES CHCLTE 1X100","21.57","81.06","3.00","VENTA *$3","COMPRA *$2,63x3150mi","0","BOL","19.00","7896259417507","1.0000","2022-12-12 12:42:39","2023-05-31 08:43:26"),/*soy foreach */;
("374","7702174082600","CARAMELOS SONETTO CHOCOLATE 1X100","8.59","53.50","1.98","VENTA$2.3","SONETTOx$1.53x5.61","16","PAQ","10.00","7702174082600","1.0000","2022-12-12 12:43:55","2023-05-31 08:43:26"),/*soy foreach */;
("375","7896731013296","CARAMELOS PIETROBON MENTA 1X70","0.00","54.04","2.00","VENTA *$","COMPRA *$","0","UND","0.00","7896731013296","1.0000","2022-12-12 12:45:33","2022-12-12 12:45:33"),/*soy foreach */;
("376","7592276540002","ALMENDRA BOLON BOLSA 1KG","0.00","93.22","3.45","VENTA*$3.45","COMPRA *$","0","BOL","18.00","7592276540002","1.0000","2022-12-12 12:47:37","2023-01-10 09:08:41"),/*soy foreach */;
("377","7896731006595","CARAMELOS PIETROBON TOFFE 1X70","7.47","54.04","2.00","VENTA *$2","COMPRA *$1,66x4500mi","0","BOL","100.00","7896731006595","1.0000","2022-12-12 12:52:47","2022-12-12 12:52:47"),/*soy foreach */;
("378","7891151024402","CARAMELOS COFFEE POCKER 1X100","12.96","54.04","2.00","VENTA *$2","COMPRA *$1,58x4400mi","0","BOL","39.00","7891151024402","1.0000","2022-12-12 12:54:26","2023-01-10 09:08:41"),/*soy foreach */;
("379","7590011891986","TANG SURTIDO 1x15","49.56","170.23","6.30","VENTA *$6,30","COMPRA *$5,55x8830m","0","EST","100.00","7590011891986","1.0000","2022-12-12 17:53:38","2022-12-12 17:53:38"),/*soy foreach */;
("380","7591039995830","GELATINA YELIGHT SOBRE 1x20","78.83","459.34","17.00","VENTA *$17","COMPRA *$14,42","0","EST","100.00","7591039995830","1.0000","2022-12-12 18:10:47","2022-12-12 18:10:47"),/*soy foreach */;
("381","7129140195513","OBLEAS EN BOLSA 1x70","15.75","108.08","4.00","VENTA *$4","COMPRA *$3,50x4500m","0","EST","18.00","7129140195513","1.0000","2022-12-12 18:15:32","2023-03-25 06:42:23"),/*soy foreach */;
("382","0571","TINA C/TAPA MDE #16 x UNDS","4.73","18.91","0.70","VENTA *$0,70","COMPRA *$0,18x4500m","0","UND","149.00","0571","1.0000","2022-12-12 18:20:14","2023-06-01 10:58:04"),/*soy foreach */;
("383","FOA03","TINA C/TAPA PEQ #08 x UNDS","13.14","14.86","0.55","VENTA *$0,55","COMPRA *$0,5x4500m","0","UND","24.00","FOA03","1.0000","2022-12-12 18:23:53","2023-06-01 10:58:04"),/*soy foreach */;
("384","000062","TINA C/TAPA SOPA #24 x Unds","5.52","20.27","0.75","VENTA *$0,75","COMPRA *$0,21x4500m","0","UND","149.00","000062","1.0000","2022-12-12 19:00:29","2023-06-01 10:58:04"),/*soy foreach */;
("385","1076","GELATINA KIKO SURT 1x12","57.00","324.24","12.00","VENTA *$12","COMPRA *$10x4420mil","0","EST","100.00","1076","1.0000","2022-12-12 19:04:03","2022-12-12 19:04:03"),/*soy foreach */;
("386","7592723000717","GELATINA KIKO X SOBRE","4.73","32.42","1.20","VENTA *$1,15","COMPRA *$0,84x4420mi","0","UND","100.00","7592723000717","1.0000","2022-12-13 03:23:07","2022-12-13 03:23:07"),/*soy foreach */;
("387","7896451904867","TANDY NARANJA 1x15x25 gms","3.59","71.06","2.63","VENTA *$3.05","COMPRA *$1,71x204mi","16","EST","100.00","7896451904867","1.0000","2022-12-13 03:26:10","2022-12-13 03:26:10"),/*soy foreach */;
("388","7591016005965","NESTEA SOBRE 1x12x90gs","44.45","351.26","13.00","VENTA *$13","COMPRA *$9,56x1800mi","0","EST","100.00","7591016005965","1.0000","2022-12-13 03:29:01","2022-12-13 03:29:01"),/*soy foreach */;
("389","7591016203033","NESTEA SURTIDO 1kgs","276.12","324.24","12.00","VENTA *$12","COMPRA *$11,41x8370m","0","UND","100.00","7591016203033","1.0000","2022-12-13 03:32:04","2023-02-11 06:34:00"),/*soy foreach */;
("390","7591016022474","NESTEA SURTIDO 450gs","120.27","148.61","5.50","VENTA *$5,50","COMPRA *$4,97x8370mi","0","UND","100.00","7591016022474","1.0000","2022-12-13 03:34:45","2023-02-11 06:43:01"),/*soy foreach */;
("391","7592212000013","AREQUIPE 3P DULCE DE LECHE 250g","14.07","93.22","3.45","VENTA *$4","COMPRA *$2,65","16","UND","100.00","7592212000013","1.0000","2022-12-13 03:37:45","2022-12-13 03:37:45"),/*soy foreach */;
("392","7592212000020","AREQUIPE 3P DULCE DE LECHE 500g","24.80","177.25","6.56","VENTA *$7,6","COMPRA *$4,67","16","UND","100.00","7592212000020","1.0000","2022-12-13 03:40:59","2022-12-13 03:40:59"),/*soy foreach */;
("393","7591625001549","AREQUIPE DULCE LECHE 250gs","134.26","153.74","5.69","VENTA *$6,6","COMPRA *$5,48x4450mi","16","UND","13.00","7591625001549","1.0000","2022-12-13 03:44:15","2023-04-25 13:04:25"),/*soy foreach */;
("394","7596086001268","AREQUIPE L/GANADERA 250gs","0.00","67.55","2.50","VENTA *$2,50","COMPRA *$1,97","0","UND","100.00","7596086001268","1.0000","2022-12-13 03:46:25","2022-12-13 03:46:25"),/*soy foreach */;
("395","7592212001881","3P PROFESIONAL AREQUIPE PREMIUM 5kg","124.94","815.46","30.18","VENTA *$35","COMPRA *$23,53","16","UND","100.00","7592212001881","1.0000","2022-12-13 03:49:04","2022-12-13 03:49:04"),/*soy foreach */;
("396","000076","COLORANTE ROJO P/CHORIZO","40.27","351.26","13.00","VENTA *$13","COMPRA *$9,05x2700mi","0","UND","100.00","000076","1.0000","2022-12-13 03:51:43","2022-12-13 03:51:43"),/*soy foreach */;
("397","7707282388156","CHICLETS SPLOT ESP/OJOS 1x60","7.63","54.04","2.00","VENTA *$2","COMPRA *$1,59x4620mi","0","EST","100.00","7707282388156","1.0000","2022-12-13 03:55:19","2022-12-13 03:55:19"),/*soy foreach */;
("398","8699462609443","BARQUILLAS MINICCO CORNET 1x24","36.17","229.67","8.50","VENTA *$8,5","COMPRA *$7,83x440","0","EST","100.00","8699462609443","1.0000","2022-12-13 03:57:47","2022-12-13 03:57:47"),/*soy foreach */;
("399","7591720029615","FLAQUITO ST MORITZ 1x12","56.62","210.76","7.80","VENTA *$7,8","COMPRA *$6,34x8830m","0","EST","98.00","7591720029615","1.0000","2022-12-13 04:00:09","2023-04-05 12:10:35"),/*soy foreach */;
("400","7591675012984","PIRULIN CHOC/AVELLANA 1x25","185.81","244.80","9.06","VENTA *$10,5","COMPRA *$7,61x24420m","16","EST","98.00","7591675012984","1.0000","2022-12-13 04:02:44","2023-04-15 08:23:51"),/*soy foreach */;
("401","7591675002145","PIRULIN EN LATA CHOCOLATE","123.26","187.79","6.95","VENTA *$6,95","COMPRA *$5,51x22370m","0","LAT","100.00","7591675002145","1.0000","2022-12-13 04:04:50","2023-03-04 08:16:33"),/*soy foreach */;
("402","7594004450280","BASE P/PASAPALO ROROS x UND","28.35","38.37","1.42","VENTA *$1,42","COMPRA *$1,15x24650m","0","SOB","130.00","7594004450280","1.0000","2022-12-13 04:07:08","2023-04-22 09:08:14"),/*soy foreach */;
("403","7591902000753","BASE P/PASAPALO FRITS x Und","10.57","33.78","1.25","VENTA *$1,25","COMPRA *$0,94x11250m","0","SOB","100.00","7591902000753","1.0000","2022-12-13 04:09:39","2022-12-13 04:09:39"),/*soy foreach */;
("404","7591221010365","COLOR FRCO IBERIA 90gs","42.93","58.36","2.16","VENTA *$2,50","COMPRA *$1,76x24390m","16","FCO","100.00","7591221010365","1.0000","2022-12-13 04:12:29","2023-03-01 07:13:40"),/*soy foreach */;
("405","7591221302392","COLOR IBERIA SOBRE 1x24","82.16","100.24","3.71","VENTA *$4,30","COMPRA *$3,23x25440mi","16","EST","5.00","7591221302392","1.0000","2022-12-13 04:16:05","2023-05-17 14:32:00"),/*soy foreach */;
("406","0490","COLOR ONOTO 1Kgs","60.92","108.08","4.00","VENTA *$4","COMPRA *$2,20x26860m","0","KGS","18.00","0490","1.0000","2022-12-13 04:18:29","2023-06-09 14:23:50"),/*soy foreach */;
("407","7597459000253","ADOBO D/TITA 100gs","2.38","17.56","0.65","VENTA *$0,75","COMPRA *$0,51x3100m","16","UND","100.00","7597459000253","1.0000","2022-12-13 04:21:55","2022-12-13 04:21:55"),/*soy foreach */;
("408","ADOR1","ADOBO D/TITA 1x24x100","56.67","420.70","15.57","VENTA *$18,06","COMPRA *$12,32x3100","16","CJA","100.00","ADOR1","1.0000","2022-12-13 04:24:21","2022-12-13 04:24:21"),/*soy foreach */;
("409","0939","ADOBO IBERIA 12x500","201.01","885.18","32.76","VENTA *$38","COMPRA *$32,01x6280m","16","CJA","100.00","0939","1.0000","2022-12-13 04:25:53","2022-12-13 04:25:53"),/*soy foreach */;
("410","7591221110614","ADOBO IBERIA 185gs","24.28","35.13","1.30","VENTA *$1,50","COMPRA *$0,99x24390m","16","UND","98.00","7591221110614","1.0000","2022-12-13 04:27:50","2023-03-25 10:58:49"),/*soy foreach */;
("411","0494","ADOBO IBERIA 1x24x185","582.68","723.06","26.76","VENTA *$31,04","COMPRA *$23,89x24390m","16","CJA","0.00","0494","1.0000","2022-12-13 04:29:41","2023-05-17 14:32:00"),/*soy foreach */;
("412","7591221110713","ADOBO IBERIA 500gs","42.24","94.30","3.49","VENTA *$4,05","COMPRA *$2,63x15770m","16","UND","98.00","7591221110713","1.0000","2022-12-13 04:32:30","2023-04-18 08:22:11"),/*soy foreach */;
("413","7591221301258","ADOBO IBERIA SOBRE 1x24","18.96","137.80","5.10","VENTA *$5,9","COMPRA *$3,87x4900mi","16","EST","100.00","7591221301258","1.0000","2022-12-13 04:34:17","2022-12-13 04:34:17"),/*soy foreach */;
("414","7594004400032","ADOBO POR KILO 1Kg","48.74","102.68","3.80","VENTA *$3,80","COMPRA *$2x26860m","0","KGS","12.00","7594004400032","1.0000","2022-12-13 04:36:02","2023-06-09 14:23:50"),/*soy foreach */;
("415","7597247001073","AJO E/GRANO x KILO","104.42","151.31","5.60","VENTA *$5.6","COMPRA *$4x25060mi","0","KGS","100.00","7597247001073","1.0000","2022-12-13 04:37:48","2023-05-19 07:11:51"),/*soy foreach */;
("416","7591221090022","AJO IBERIA SOBRE 1x24","21.41","154.01","5.70","VENTA *$6,6","COMPRA *$4,37x4900mi","16","EST","100.00","7591221090022","1.0000","2022-12-13 04:39:27","2022-12-13 04:39:27"),/*soy foreach */;
("417","0000059","AJO POR KILO 1Kgs","108.00","155.37","5.75","VENTA *$5,75","COMPRA *$4,43x24400m","0","KGS","99.75","0000059","1.0000","2022-12-13 04:41:24","2023-03-30 09:38:05"),/*soy foreach */;
("418","7591221301159","PIMIENTA NEGRA SOBRE IBERIA PEQ 1x24","19.55","159.42","5.90","VENTA *$5,9","COMPRA *$3,99x4900mi","0","EST","100.00","7591221301159","1.0000","2022-12-13 04:43:55","2022-12-13 04:43:55"),/*soy foreach */;
("419","7597459000420","COMINO FRCO DOÑA TITA 50gs","4.22","36.75","1.36","VENTA *$1,57","COMPRA *$0,94x1900mi","16","FCO","100.00","7597459000420","1.0000","2022-12-13 04:46:19","2022-12-13 04:46:19"),/*soy foreach */;
("420","7591221010396","COMINO FRCO IBERIA 65gs","7.25","58.36","2.16","VENTA *$2,50","COMPRA *$1,61x4490mi","16","FCO","98.00","7591221010396","1.0000","2022-12-13 04:51:49","2023-04-19 11:17:46");/*soy foreach */;
INSERT INTO productos VALUES
("421","0493","COMINO POR KILO 1/2kgs","97.48","81.06","3.00","VENTA *$3","COMPRA *$2x26860m","0","KGS","3.00","0493","1.0000","2022-12-13 04:54:23","2023-06-09 14:23:50"),/*soy foreach */;
("422","7591221090398","COMINO IBERIA sobre 1x24","118.70","145.64","5.39","VENTA *$6,25","COMPRA *$4,67x2544mi","16","EST","5.00","7591221090398","1.0000","2022-12-13 04:56:51","2023-05-17 14:32:00"),/*soy foreach */;
("423","SACA16","MAIZ EN CONCHA x Kgs","10.05","15.13","0.56","VENTA *$0,56","COMPRA *$0,40x25120m","0","KIL","49.50","SACA16","1.0000","2022-12-13 06:49:58","2023-05-23 13:50:05"),/*soy foreach */;
("424","0496","PIMIENTA POR KILO 1Kgs","97.48","162.12","6.00","VENTA *$6","COMPRA *$4x26860m","0","KGS","2.00","0496","1.0000","2022-12-13 07:02:57","2023-06-09 14:23:50"),/*soy foreach */;
("425","0041","CALDO D/POLLO X KILO 1Kg","73.11","108.08","4.00","VENTA *$4","COMPRA *$3x26860m","0","KGS","9.00","0041","1.0000","2022-12-13 07:10:40","2023-06-09 14:23:50"),/*soy foreach */;
("426","7591188000379","CURRY POR KILO 1Kgs","42.36","113.48","4.20","VENTA *$4,20","COMPRA *$3x26860m","0","KGS","7.00","7591188000379","1.0000","2022-12-13 07:13:24","2023-06-09 14:23:50"),/*soy foreach */;
("427","1199","SABROSEADOR X KILO 1Kg","73.11","108.08","4.00","VENTA *$4","COMPRA *$3x26860m","0","KGS","8.00","1199","1.0000","2022-12-13 07:24:24","2023-06-09 14:23:50"),/*soy foreach */;
("428","0191","VASOS PLASTI #5-L/LLANO 1X1OO","28.60","44.58","1.65","VENTA *$1,65","COMPRA *$1,18x24240m","0","PAQ","1000.00","7592149100060","0.0400","2022-12-13 08:24:26","2023-03-23 10:13:21"),/*soy foreach */;
("429","0192","VASOS PLASTI #7-L/LLANO 1X1OO","30.06","45.93","1.70","VENTA *$1,70","COMPRA *$1,15x26860m","0","PAQ","1000.00","606890011104","0.0400","2022-12-13 08:26:01","2023-06-09 12:47:30"),/*soy foreach */;
("430","7592149100060","VASOS PLASTI #5-L/LLANO 1X25X1OO","715.08","945.70","35.00","VENTA *$35","COMPRA *$29,5x24240m","0","BTO","-3.16","7592149100060","1.0000","2022-12-13 08:52:59","2023-06-09 14:23:51"),/*soy foreach */;
("431","606890011104","VASOS PLASTI #7-L/LLANO 1X25X1OO","751.44","945.70","35.00","VENTA *$35","COMPRA *$28.61x26860m","0","BTO","-3.56","606890011104","1.0000","2022-12-13 08:58:10","2023-06-09 14:23:51"),/*soy foreach */;
("432","606890011302","VASOS PLASTI #10-M/PLAS 1X5O","23.03","35.13","1.30","VENTA *$1,30","COMPRA *$0,82x26860m","0","PAQ","1000.00","STVPN1000001","0.0500","2022-12-13 09:24:29","2023-06-09 12:53:40"),/*soy foreach */;
("433","STVPN1000001","VASOS PLASTI #10-M/PLAS 1X2OX5O","460.56","567.42","21.00","VENTA *$21","COMPRA *$16.38x26860m","0","BTO","-1.20","STVPN1000001","1.0000","2022-12-13 09:30:17","2023-06-09 14:23:51"),/*soy foreach */;
("434","606890011401","VASOS PLASTI #12-ZUPLA 1X5O","29.09","44.58","1.65","VENTA *$1,65","COMPRA *$1,20x24240m","0","PAQ","1000.00","VTVHZ1200000","0.0500","2022-12-13 09:35:49","2023-03-23 11:07:38"),/*soy foreach */;
("435","0994","CUCHARILLAS PLAST.GDE.1X2O","1.99","17.56","0.65","VENTA *$0,65","COMPRA *$0,48x4150mi","0","UND","98.00","0994","1.0000","2022-12-13 09:41:07","2022-12-27 09:27:23"),/*soy foreach */;
("436","0000135","CUCHARILLAS PLAST.GDE.1X5OX2O","240.04","594.44","22.00","VENTA *$22","COMPRA *$17x14120m","0","BTO","100.00","0000135","1.0000","2022-12-13 09:51:12","2022-12-13 09:51:12"),/*soy foreach */;
("437","0875","CUCHARILLAS PLAST.PEQ.1X100X2O","200.00","1621.20","60.00","VENTA *$60","COMPRA *$48x4150mi","0","BTO","100.00","0875","1.0000","2022-12-13 09:53:15","2022-12-13 09:53:15"),/*soy foreach */;
("438","0876","CUCHARILLAS PLAST.PEQ.1X2O","2.00","17.56","0.65","VENTA *$0,65","COMPRA *$0,48x4150mi","0","EST","100.00","0876","1.0000","2022-12-13 09:57:23","2022-12-13 09:57:23"),/*soy foreach */;
("439","1262","TENEDORES PLAST.GDE.1X2O","7.62","14.32","0.53","VENTA *$0,53","COMPRA *$0,36x21170m","0","PAQ","89.00","1262","1.0000","2022-12-13 10:00:28","2023-03-28 12:08:43"),/*soy foreach */;
("440","1261","TENEDORES PLAST.GDE.1X50X2O","381.06","594.44","22.00","VENTA *$22","COMPRA *$18x21170m","0","BTO","100.00","1261","1.0000","2022-12-13 10:03:23","2023-01-25 13:01:49"),/*soy foreach */;
("441","0877","TENEDORES PLAST.PEQ.1X1OOX2O","176.50","486.36","18.00","VENTA *$18","COMPRA *$12,5x14120m","0","BTO","100.00","0877","1.0000","2022-12-13 10:07:25","2022-12-13 10:07:25"),/*soy foreach */;
("442","0878","TENEDORES PLAST.PEQ.1X2O","1.77","5.94","0.22","VENTA *$0,22","COMPRA *$0,13x14120m","0","PAQ","100.00","0878","1.0000","2022-12-13 10:09:34","2022-12-13 10:09:34"),/*soy foreach */;
("443","7591031000983","REFRESCO PEPSI 1 LTS","8.06","30.26","1.12","VENTA *$1,30","COMPRA *$0,96x8410m","16","UND","100.00","7591031000983","1.0000","2022-12-13 11:10:12","2022-12-13 11:10:12"),/*soy foreach */;
("444","7591031003250","REFRESCO PEPSI 1,5CC","9.73","39.72","1.47","VENTA *$1,70","COMPRA *$1,18x8230mi","16","UND","100.00","7591031003250","1.0000","2022-12-13 11:13:11","2022-12-13 11:13:11"),/*soy foreach */;
("445","0690","REFRESCO PEPSI 1X6X1.5","131.88","232.91","8.62","VENTA *$10","COMPRA *$8,02x16450m","16","CAJ","10.00","0690","1.0000","2022-12-13 11:14:36","2023-01-24 11:14:44"),/*soy foreach */;
("446","1475","REFRESCO PEPSI 1X6X1LT","43.24","163.20","6.04","VENTA *$7","COMPRA *$5,53x5790mi","16","CAJ","100.00","1475","1.0000","2022-12-13 11:16:18","2022-12-13 11:16:18"),/*soy foreach */;
("447","0692","REFRESCO PEPSI 1X6X2","81.15","291.28","10.78","VENTA *$12,50","COSTO *$9,86x8230mi","16","CAJ","100.00","0692","1.0000","2022-12-13 11:19:03","2022-12-13 11:19:03"),/*soy foreach */;
("448","7591031003267","REFRESCO PEPSI 2LTS","13.53","53.77","1.99","VENTA *$2,30","COMPRA *$1,64x8230mi","16","UND","100.00","7591031003267","1.0000","2022-12-13 11:20:14","2022-12-13 11:20:14"),/*soy foreach */;
("449","0661","REFRESCO PEPSI BOTLLA 1X24X350","88.51","300.46","11.12","VENTA *$12,90","COMPRA *$10,08x8780m","16","CAJ","100.00","0661","1.0000","2022-12-13 11:21:46","2022-12-13 11:21:46"),/*soy foreach */;
("450","606890020113","PLATOS PLAST JUMBO #5-1X1O","6.34","10.81","0.40","VENTA *$0,40","COMPRA *$0,23x26860m","0","PAQ","1000.00","0302","0.0200","2022-12-13 12:09:16","2023-06-09 13:20:34"),/*soy foreach */;
("451","0302","PLATOS PLAST JUMBO #5-5OX1O","317.20","405.30","15.00","VENTA *$15","COMPRA *$11.55x26860m","0","BTO","-8.28","0302","1.0000","2022-12-13 12:20:40","2023-06-09 14:23:51"),/*soy foreach */;
("452","1160","PLATOS PLAST JUMBO #6-5OX1O","451.40","567.42","21.00","VENTA *$21","COMPRA *$15.75x26860m","0","BTO","-1.04","1160","1.0000","2022-12-13 12:22:55","2023-06-09 14:23:51"),/*soy foreach */;
("453","7591000210023","PLATOS PLAST JUMBO #6-1X1O","9.03","14.05","0.52","VENTA *$0,52","COMPRA *$0,32x26860m","0","UND","1000.00","1160","0.0200","2022-12-13 12:32:20","2023-06-09 13:25:01"),/*soy foreach */;
("454","606890020311","PLATOS PLAST JUMBO #7-1X1O","6.50","21.62","0.80","VENTA *$0,80","COMPRA *$0,46x14120m","0","PAQ","1000.00","0304","0.0200","2022-12-13 12:35:14","2023-03-25 11:53:30"),/*soy foreach */;
("455","0304","PLATOS PLAST JUMBO #7-5OX1O","561.20","783.58","29.00","VENTA *$29","COMPRA *$23x14120m","0","BTO","-1.06","0304","1.0000","2022-12-13 12:37:28","2023-06-09 14:23:52"),/*soy foreach */;
("456","0303","PLATOS PLAST JUMBO #8-1X5OX1O.","707.60","945.70","35.00","VENTA *$35","COMPRA *$29x14120m","0","BTO","-1.06","0303","1.0000","2022-12-13 12:39:01","2023-06-09 14:23:52"),/*soy foreach */;
("457","606890020410","PLATOS PLAST JUMBO #8-1X1O","14.15","26.21","0.97","VENTA *$0,97","COMPRA *$0,58x14120m","0","PAQ","1000.00","0303","0.0200","2022-12-13 12:42:57","2023-03-25 11:56:01"),/*soy foreach */;
("458","7591397061192","QUESO C/GABY CHEESE 250gs","39.25","109.43","4.05","VENTA *$4,70","COMPRA *$2,78x12,66m","16","POT","100.00","7591397061192","1.0000","2022-12-14 06:59:41","2022-12-14 06:59:41"),/*soy foreach */;
("459","7591081771024","JAMON ENDIABL.FIESTA 115GS","21.69","58.36","2.16","VENTA *$2,50","COMPRA *$1,71x14120m","16","UND","100.00","7591081771024","1.0000","2022-12-14 07:04:40","2022-12-14 07:04:40"),/*soy foreach */;
("460","1125","JAMON ESP FIESTA ENT","163.57","204.27","7.56","VENTA *$8.76","COMPRA *$6,26x26130m","16","KGS","38.00","1125","1.0000","2022-12-14 07:09:02","2023-05-29 14:10:14"),/*soy foreach */;
("461","0000128","JAMON ESP FIESTA REB","163.57","221.83","8.21","VENTA *$9.52","COMPAR *$6,26x26130m","16","KGS","1000.00","1125","1.0000","2022-12-14 07:13:48","2023-05-29 13:45:50"),/*soy foreach */;
("462","7591081771116","SALCHICHA CARNE FIESTA 225GS","57.76","67.55","2.50","VENTA*$2,90","COMPRA*$2,21x26130m","16","UND","39.00","7591081771116","1.0000","2022-12-14 07:17:32","2023-05-29 13:40:30"),/*soy foreach */;
("463","7591081771192","SALCHICHA CARNE FIESTA 400GS","94.39","115.38","4.27","VENTA*$4.95","COMPRA*$3.61x26130m","16","UND","8.00","7591081771192","1.0000","2022-12-14 07:22:15","2023-05-29 13:40:30"),/*soy foreach */;
("464","7591081771253","SALCHICHA POLLO FIESTA 225GS","52.56","67.55","2.50","VENTA *$2,90","COMPRA *$2,01x26130m","16","UND","34.00","7591081771253","1.0000","2022-12-14 07:34:26","2023-05-29 13:40:31"),/*soy foreach */;
("465","7591081771130","SALCHICHA CARNE FIESTA X KILO","184.22","221.29","8.19","VENTA *$9,50","COMPRA *$7,05x24170m","16","KIL","6.00","7591081771130","1.0000","2022-12-14 07:44:26","2023-05-29 13:40:30"),/*soy foreach */;
("466","7591081030015","SALCHICHA DELI ALEMANA 1X5","115.51","139.96","5.18","VENTA *$6","COMPRA *$4,42x26130m","16","UND","5.00","7591081030015","1.0000","2022-12-14 07:49:44","2023-05-29 13:40:30"),/*soy foreach */;
("467","7591081030442","SALCHICHA DELI FRANKFURT 1X5","115.49","139.96","5.18","VENTA *$6","COMPRA *$4,42x26130m","16","UND","14.00","7591081030442","1.0000","2022-12-14 07:54:13","2023-05-29 13:40:30"),/*soy foreach */;
("468","0000120","JAMON AREPERO DON DIEGO ENT","113.82","139.96","5.18","VENTA *$6","COMPRA *$4,41x24170m","16","KGS","74.00","0000120","1.0000","2022-12-14 07:58:07","2023-05-18 13:30:24"),/*soy foreach */;
("469","0319","JAMON AREPERO DON DIEGO REB","113.82","163.20","6.04","VENTA *$7","COMPRA *$4,41x24170m","16","KGS","1000.00","0000120","1.0000","2022-12-14 08:01:39","2023-05-18 12:31:21"),/*soy foreach */;
("470","0000144","CHORIZO DE AJO MONSERRATINA 1X5","35.84","93.22","3.45","VENTA *$4","COMPRA *$2,83x12,66m","16","PAQ","100.00","0000144","1.0000","2022-12-14 08:05:55","2022-12-14 08:05:55"),/*soy foreach */;
("471","0535","CHORIZO AHUM.MONSERRATINA 1X5","35.84","93.22","3.45","VENTA *$4","COMPRA *$2,83x12,66m","16","PAQ","100.00","0535","1.0000","2022-12-14 08:09:02","2022-12-14 08:09:02"),/*soy foreach */;
("472","0358","MORCILLA MONTSERRATINA x Unds","24.56","58.36","2.16","VENTA *$2,5","COMPRA *$1,94x12,66m","16","PAQ","100.00","0358","1.0000","2022-12-14 08:13:06","2022-12-14 08:13:06"),/*soy foreach */;
("473","TOC001","TOCINETA PLUMRO ENTE","282.48","535.81","19.83","VENTA *$23","COMPRA *$16,5x16450m","16","KGS","100.00","TOC001","1.0000","2022-12-14 08:16:28","2022-12-29 08:59:12"),/*soy foreach */;
("474","00009","TOCINETA PLUMRO REBA","282.48","652.26","24.14","VENTA *$28","COMPRA *$16,5x1266m","16","KGS","100.00","00009","1.0000","2022-12-14 08:19:57","2022-12-29 09:00:53"),/*soy foreach */;
("475","0000081","JAMON AHUMADO BOLA x kilo","144.58","349.37","12.93","VENTA *$15","COMPRA *$11,42x1266m","16","KGS","100.00","0000081","1.0000","2022-12-14 08:27:59","2022-12-14 08:27:59"),/*soy foreach */;
("476","0329","JAMON PIERNA PLUMROSE ENT","241.22","293.71","10.87","VENTA *$12,6","COMPRA *$9,98x24170m","16","KGS","46.00","0329","1.0000","2022-12-14 08:34:58","2023-05-18 13:30:25"),/*soy foreach */;
("477","0330","JAMON PIERNA PLUMROSE REB","241.22","326.13","12.07","VENTA *$14","COMPRA *$9,98x24170m","16","KGS","1000.00","0329","1.0000","2022-12-14 08:38:58","2023-03-14 10:52:10"),/*soy foreach */;
("478","0000067","FIAMBRE DON DIEGO ENT","114.97","139.96","5.18","VENTA *$6","COMPRA *$4,40x26130m","16","KGS","178.00","0000067","1.0000","2022-12-14 08:42:12","2023-05-29 14:10:14"),/*soy foreach */;
("479","0000195","FIAMBRE DON DIEGO REB","114.97","156.18","5.78","VENTA *$6.7","COMPRA *$4.40x26130m","16","KGS","1000.00","0000067","1.0000","2022-12-14 08:45:25","2023-05-29 14:00:04"),/*soy foreach */;
("480","0000241","JAMON PIERNA DON DIEGO ENT","131.17","163.20","6.04","VENTA *$7","COMPRA *$5.02x26130m","16","KGS","49.00","0000241","1.0000","2022-12-14 08:47:59","2023-05-29 14:10:14"),/*soy foreach */;
("481","0000237","JAMON PIERNA DON DIEGO REB","131.17","191.03","7.07","VENTA *$8.20","COMPRA *$5,02x26130m","16","KGS","1000.00","0000241","1.0000","2022-12-14 08:50:09","2023-05-29 13:49:54"),/*soy foreach */;
("482","JAM01","JAMON ESP PLUMROSE ENT","205.02","254.80","9.43","VENTA *$11","COMPRA *$8,50x1266mi","16","KGS","48.00","JAM01","1.0000","2022-12-14 08:52:43","2023-05-18 13:30:25"),/*soy foreach */;
("483","JAM02","JAMON ESP PLUMROSE REB","205.02","279.66","10.35","VENTA *$12","COMPRA *$8,5x1645m","16","KGS","1000.00","JAM01","1.0000","2022-12-14 08:54:50","2023-03-14 11:53:04"),/*soy foreach */;
("484","000044","JAMON PIERNA FIESTA ENT","187.61","229.40","8.49","VENTA *$9,85","COMPRA *$7,18x24170m","16","KGS","45.00","000044","1.0000","2022-12-14 08:57:21","2023-05-29 14:10:14"),/*soy foreach */;
("485","7591081220416","JAMON PIERNA FIESTA REB","187.61","256.42","9.49","VENTA *$11","COMPRA *$7,18x24170m","16","KGS","1000.00","000044","1.0000","2022-12-14 08:59:38","2023-05-29 13:51:52"),/*soy foreach */;
("486","0338","FIAMBRE E/FIESTA ENTE","117.32","151.58","5.61","VENTA *$6.5","COMPRA *$4.49x26130m","16","KGS","58.00","0338","1.0000","2022-12-14 09:02:24","2023-05-29 14:23:38"),/*soy foreach */;
("487","0339","FIAMBRE E/FIESTA REBA","117.27","170.23","6.30","VENTA *$7,30","COMPRA *$4.49x26130m","16","KGS","1000.00","0338","1.0000","2022-12-14 09:04:40","2023-05-29 14:15:25"),/*soy foreach */;
("488","7591680000150","PLATOS CARTON EMP #5 1X2O","13.18","23.24","0.86","VENTA *$0,86","COMPRA *$0,54x14760m","0","PAQ","29.00","7591680000150","1.0000","2022-12-14 09:06:28","2023-03-25 12:22:06"),/*soy foreach */;
("489","7591680000174","PLATOS CARTON EMP #7 1X2O","23.18","36.48","1.35","VENTA *$1,35","COMPRA *$0,95x14760m","0","PAQ","34.00","7591680000174","1.0000","2022-12-14 09:09:03","2023-03-25 12:22:06"),/*soy foreach */;
("490","1307","SALCHICHA B/MANA 5KG X BOLSA","518.70","599.84","22.20","VENTA *$22.20","COMPRA *$19,5x2660m","0","PAQ","7.00","1307","1.0000","2022-12-14 09:14:43","2023-06-05 10:36:03"),/*soy foreach */;
("491","00002","SALCHICHA B/MANA X KILO","103.74","129.70","4.80","VENTA *$4,80","COMPRA *$3,90x2660m","0","KIL","1000.00","1307","0.2000","2022-12-14 09:17:54","2023-06-05 10:37:24"),/*soy foreach */;
("492","0247","BANDEJA ANIME 1/2 POLLO CT-4x2OO","318.50","551.21","20.40","VENTA *$20,4","COMPRA *$13x24500m","0","BTO","15.00","0247","1.0000","2022-12-14 09:20:42","2023-04-14 11:39:17"),/*soy foreach */;
("493","000097","BANDEJA ANIME 1-POLLO CT-2x200","411.49","675.50","25.00","VENTA *$25","COMPRA *$16,42x24500m","0","BTO","14.00","000097","1.0000","2022-12-14 09:22:08","2023-05-30 13:32:39"),/*soy foreach */;
("494","0578-COPY","BANDEJA ANIME CHARC (A)1X500","152.04","675.50","25.00","VENTA *$25","COMPRA *$17,70x8000m","0","BTO","100.00","0578","1.0000","2022-12-14 09:23:37","2023-05-08 11:34:11"),/*soy foreach */;
("495","0740-COPY","BANDEJA ANIME CHARC (C) 1X500","395.90","675.50","25.00","VENTA *$25","COMPRA *$16,4x24140m","0","BTO","5.00","0740-COPY","1.0000","2022-12-14 09:24:32","2023-05-08 11:28:41"),/*soy foreach */;
("496","000118","BANDEJA ANIME HAMBURGUES CT-1 1X2OO","102.00","486.36","18.00","VENTA *$18","COMPRA *$12x4050mi","0","BTO","100.00","000118","1.0000","2022-12-14 09:25:46","2022-12-14 09:25:46"),/*soy foreach */;
("497","000064","BANDEJA ANIME P/PERRO CTK-1 1X200","153.00","648.48","24.00","VENTA *$24","COMPRA *$18x1800mi","0","BTO","100.00","000064","1.0000","2022-12-14 09:26:57","2022-12-14 09:26:57"),/*soy foreach */;
("498","0127","BOLIGRAFOS KILOMETRICO 1X24","30.50","191.84","7.10","VENTA *$7,1","COMPRA *$5x6100mi","0","TIR","100.00","0127","1.0000","2022-12-14 09:46:56","2022-12-14 09:46:56"),/*soy foreach */;
("499","7592492000017","OBLEAS EN CAJA 1x20","28.35","109.43","4.05","VENTA *$4,05","COMPRA *$3,50x4500mi","0","EST","100.00","7592492000017","1.0000","2022-12-14 09:48:32","2022-12-14 09:48:32"),/*soy foreach */;
("500","7896306614880","CHOCOLATE CRO-ROLL 1X30","25.00","162.12","6.00","VENTA *$6","COMPRA *$5x500mil","0","EST","100.00","7896306614880","1.0000","2022-12-14 09:50:56","2022-12-14 09:50:56"),/*soy foreach */;
("501","7591620531461","GALLETAS DANI CHIPS 1x10","16.99","68.90","2.55","VENTA *$2,55","COMPRA *$2,03x8370m","0","EST","100.00","7591620531461","1.0000","2022-12-14 09:52:33","2022-12-14 09:52:33"),/*soy foreach */;
("502","7591620530969","GALLETAS PALITO WAFER 1X24","40.25","162.12","6.00","VENTA *$6","COMPRA *$5x4450mil","0","EST","100.00","7591620530969","1.0000","2022-12-14 09:53:38","2023-01-30 11:27:11"),/*soy foreach */;
("503","7591620010317","GALLETAS PALITO CHCLTE 1X18","58.89","148.61","5.50","VENTA *$5.5","COMPRA *$4.72x26860mi","0","EST","93.00","7591620010317","1.0000","2022-12-14 09:54:55","2023-06-10 08:04:43"),/*soy foreach */;
("504","9556023674526","PAPAS JACKER E/POTE 160GS","75.20","95.38","3.53","VENTA *$3,53","COMPRA *$2,95x4450m","0","POT","7.00","9556023674526","1.0000","2022-12-14 09:56:47","2023-05-16 11:30:17"),/*soy foreach */;
("505","7896321013231","CARAMELOS ZUGGI MASTI.1X12","5.50","97.27","3.60","VENTA *$3.6","COMPRA *$2,33x210","0","EST","100.00","7896321013231","1.0000","2022-12-14 09:58:17","2022-12-14 09:58:17"),/*soy foreach */;
("506","8055790341552","GALLETAS PEPITAS 1X24","28.56","162.12","6.00","VENTA *$6","COMPRA *$5,10x5150mi","0","BOL","100.00","8055790341552","1.0000","2022-12-14 10:00:12","2022-12-14 10:00:12"),/*soy foreach */;
("507","7591620530891","SAMY-NAVIDAD 1X24","17.16","114.29","4.23","VENTA *$4.9","COMPRA *$3,9x700mil","16","EST","100.00","7591620530891","1.0000","2022-12-14 10:01:30","2022-12-14 10:01:30"),/*soy foreach */;
("508","7896321017390","CARAMELOS BARRA COFFEE 1X10","9.04","81.06","3.00","VENTA *$3","COMPRA *$2,01x4500","0","EST","100.00","7896321017390","1.0000","2022-12-14 10:05:20","2022-12-14 10:05:20"),/*soy foreach */;
("509","7896321011497","CARAMELOS ITS TIME TUBO 1X16","7.30","129.70","4.80","VENTA *$4.8","COMPRA *$3,17x210mil","0","EST","100.00","7896321011497","1.0000","2022-12-14 10:07:40","2022-12-14 10:07:40"),/*soy foreach */;
("510","7591620503956","GALLETAS WAFER SIMPATIA 1x36","55.37","75.66","2.80","VENTA *$2,80","COMPRA *$2,26x24500m","0","BOL","8.00","7591620503956","1.0000","2022-12-14 10:09:29","2023-05-05 10:19:09"),/*soy foreach */;
("511","7591620531171","GALLETAS SIMPATIA CHOLTE 1X36","65.17","91.87","3.40","VENTA *$3,40","COMPRA *$2,66x24500m","0","BOL","9.00","7591620531171","1.0000","2022-12-14 10:10:40","2023-03-31 11:16:20"),/*soy foreach */;
("512","7702354950347","PANELADA X EST","5.93","8.38","0.31","VENTA *$0,31","PANE(64)$0,24x24490m","0","EST","100.00","7702354950347","1.0000","2022-12-14 10:12:17","2023-03-30 08:54:15"),/*soy foreach */;
("513","0859","CHULETA AHUM PLUMROSE ENT","196.80","256.42","9.49","VENTA *$11","COMPRA *$8,14x24170m","16","KIL","20.00","0859","1.0000","2022-12-14 10:55:40","2023-03-13 10:41:15"),/*soy foreach */;
("514","0860","CHULETA AHUM PLUMROSE REB","196.80","279.66","10.35","VENTA *$12","COMPRA *$8,14x24170m","16","KGS","1000.00","0859","1.0000","2022-12-14 10:58:20","2023-03-13 10:46:43"),/*soy foreach */;
("515","001","ACEITE BRASIL 1X20X900","1005.86","1161.86","43.00","VENTA *$43","COMPRA *$38x24730m","0","CAJ","30.65","001","1.0000","2022-12-14 11:54:08","2023-06-02 13:25:46"),/*soy foreach */;
("516","7891107101621","ACEITE BRASIL SOYA 900","50.29","59.44","2.20","VENTA*$2,20","COMPRA*$1,9x24630m","0","UND","1000.00","001","0.0500","2022-12-14 11:55:44","2023-06-02 13:25:26"),/*soy foreach */;
("517","7591002000745","ACEITE MAZEITE 1 LTS","75.53","118.89","4.40","VENTA*$4,40","COMPRA*$3,79x25060m","0","UND","12.00","7591002000745","1.0000","2022-12-14 11:57:19","2023-05-06 11:12:57"),/*soy foreach */;
("518","8004275058775","ACEITE OLIVA CIRIO EXT/V 500ML","0.00","243.18","9.00","VENTA*$9","COMPRA*$6.30","0","UND","100.00","8004275058775","1.0000","2022-12-14 11:59:08","2022-12-14 11:59:08"),/*soy foreach */;
("519","8436544133959","ACEITE OLIVA RICOS EXT/V 1LTS","0.00","291.28","10.78","VENTA*$12.5","COMPRA*$7.65","16","UND","100.00","8436544133959","1.0000","2022-12-14 12:00:46","2022-12-14 12:00:46"),/*soy foreach */;
("520","0837","PASAS A GRANEL X KILO","50.85","135.10","5.00","VENTA *$5","COMPRA *$3,39x11690m","0","KGS","97.63","0837","1.0000","2022-12-14 12:10:05","2022-12-31 09:26:52");/*soy foreach */;
INSERT INTO productos VALUES
("521","0835","ALCAPARRAS GRANEL X KILO","54.00","135.10","5.00","VENTA*$5","COMPRA*$3,60x8930m","0","KGS","98.06","0835","1.0000","2022-12-14 12:11:54","2022-12-31 09:26:52"),/*soy foreach */;
("522","0839","ENCURTIDO GRANEL X KILO","37.50","135.10","5.00","VENTA *$5","COMPRA *$2,50x8100m","0","KGS","98.70","0839","1.0000","2022-12-14 12:13:11","2022-12-28 08:13:34"),/*soy foreach */;
("523","1525","ACEITUNA AGRANEL C/S X KGS","39.00","135.10","5.00","VENTA *$5","COMPRA *$2,59x8530m","0","KGS","97.12","1525","1.0000","2022-12-14 12:15:26","2022-12-31 07:48:41"),/*soy foreach */;
("524","1295","ACEITUNA RELLENA X KILO","41.65","216.16","8.00","VENTA *$8","COMPRA *$4,86x8530m","0","KGS","99.80","1295","1.0000","2022-12-14 12:16:47","2022-12-31 09:26:52"),/*soy foreach */;
("525","7591211001526","GUT DE POLLO 1x18","121.13","175.90","6.51","VENTA*$7,55","COMPRA*$5,90x5060m","16","TRA","100.00","7591211001526","1.0000","2022-12-15 06:24:32","2023-01-23 08:39:46"),/*soy foreach */;
("526","7591211001540","GUT SABROSEADOR 1X18","121.13","175.90","6.51","VENTA*$7,55","COMPRA*$5,90x5060m","16","TRA","100.00","7591211001540","1.0000","2022-12-15 06:25:39","2023-01-23 08:42:38"),/*soy foreach */;
("527","805579020042","PLANTILLASA S/SURTIDAS 1X16","9.49","81.06","3.00","VENTA *$3","COMPRA *$2,92x700mil","0","EST","100.00","805579020042","1.0000","2022-12-15 06:26:39","2022-12-15 06:26:39"),/*soy foreach */;
("528","000006","ALMENDRA EN BOLSA 1X60","24.00","31.07","1.15","VENTA *$1.15","COMPRA *$1x4600m","0","BOL","40.00","000006","1.0000","2022-12-15 06:28:21","2023-04-25 13:11:01"),/*soy foreach */;
("529","8681125095174","BONGYS 1x24x16","15.79","56.74","2.10","VENTA *$2,10","COMPRA *$1,80x8770mi","0","EST","98.00","8681125095174","1.0000","2022-12-15 06:29:42","2023-01-20 07:58:28"),/*soy foreach */;
("530","7896383073839","DUCREM NAPOLITANO 1x12","5.72","36.21","1.34","VENTA$1.55","N/BANDJ*$1.03","16","UND","100.00","7896383073839","1.0000","2022-12-15 06:31:37","2022-12-15 06:31:37"),/*soy foreach */;
("531","7896383073846","DUCREM NUCITA 1X12","5.72","41.88","1.55","VENTA *$1.55","COMPRA *$1,03x5570mi","0","EST","100.00","7896383073846","1.0000","2022-12-15 06:34:08","2022-12-15 06:34:08"),/*soy foreach */;
("532","7896383000620","DUCREM NUCITA CORAZON 1x18","33.69","143.21","5.30","VENTA *$5,30","COMPRA *$4,22x7980mi","0","EST","100.00","7896383000620","1.0000","2022-12-15 06:37:50","2022-12-15 06:37:50"),/*soy foreach */;
("533","7896383074027","COLORETI FESTA 1x18","37.85","162.12","6.00","VENTA *$6","COMPRA *$4,74x7980mi","0","EST","100.00","7896383074027","1.0000","2022-12-15 06:38:50","2022-12-15 06:38:50"),/*soy foreach */;
("534","805579000174","TRONQUITO 1X24","12.37","108.08","4.00","VENTA *$4","COMPRA *$2,69x4600mi","0","EST","100.00","805579000174","1.0000","2022-12-15 06:45:00","2022-12-15 06:45:00"),/*soy foreach */;
("535","8691720120196","COCOS ROMEO 1X24","25.00","151.31","5.60","VENTA *$5.6","COMPRA *$5x1900","0","EST","100.00","8691720120196","1.0000","2022-12-15 06:46:48","2022-12-15 06:46:48"),/*soy foreach */;
("536","805579522713","GAYETON SURTIDO 1X24","17.68","135.10","5.00","VENTA *$5","COMPRA *$4","0","BOL","100.00","805579522713","1.0000","2022-12-15 06:48:18","2022-12-15 06:48:18"),/*soy foreach */;
("537","805579324102","GALLETAS DANI-CHCLTE 1X36","78.16","94.57","3.50","VENTA *$3,50","COMPRA *$2,91x26860m","0","BOL","10.00","805579324102","1.0000","2022-12-15 06:50:01","2023-06-10 08:04:43"),/*soy foreach */;
("538","7591620530952","GALLETAS DANI-CHIPS 1X36","71.30","94.57","3.50","VENTA *$3,50","COMPRA *$2,91x26860m","0","BOL","3.00","7591620530952","1.0000","2022-12-15 06:51:16","2023-06-10 08:04:43"),/*soy foreach */;
("539","7592052001775","GALLETAS RIFEL CHOCOLATE 1x10","9.40","58.90","2.18","VENTA *$2,52","COMPRA *$1,71x4420m","16","BOL","100.00","7592052001775","1.0000","2022-12-15 06:56:51","2022-12-26 06:26:18"),/*soy foreach */;
("540","7702011122339","CHUPETAS B.B.B SURT 1X24","38.98","53.23","1.97","VENTA *$1,97","COMPRA *$1,6x24360m","0","BOL","55.00","7702011122339","1.0000","2022-12-15 06:58:14","2023-06-05 09:17:33"),/*soy foreach */;
("541","7707014908645","CHUPETAS BIG BOM XXL SURT 1X48","82.87","102.68","3.80","VENTA *$3,8","COMPRA *$3,19x26000m","0","BOL","20.00","7707014908645","1.0000","2022-12-15 06:59:23","2023-06-01 09:24:10"),/*soy foreach */;
("542","7702011118264","CHUPETAS TICO POP 1X24","6.32","46.74","1.73","VENTA *$2","COMPRA *$1,37x4620mi","16","BOL","100.00","7702011118264","1.0000","2022-12-15 07:02:06","2022-12-15 07:02:06"),/*soy foreach */;
("543","7702174070959","CHUPETAS P/POP FRESA 1X24","36.96","41.88","1.55","VENTA *$1,55","COMPRA *$1,54x8370m","0","PAQ","12.00","7702174070959","1.0000","2022-12-15 07:03:32","2023-05-09 11:06:58"),/*soy foreach */;
("544","7702174070942","CHUPETAS P/POP SURT 1X24","36.96","41.88","1.55","VENTA *$1,55","COMPRA *$1,54x8370m","0","PAQ","17.00","7702174070942","1.0000","2022-12-15 07:05:18","2023-04-28 13:50:57"),/*soy foreach */;
("545","7702174076043","CHUPETAS P/POP XXL FRESA 1X24","12.89","54.04","2.00","VENTA$2","ALDORx$1,54x8370m","0","PAQ","100.00","7702174076043","1.0000","2022-12-15 07:11:57","2022-12-15 07:11:57"),/*soy foreach */;
("546","7702174076050","CHUPETAS P/POP XXL SURT.1X24","12.89","54.04","2.00","VENTA *$2","COMPRA *$1,54x837m","0","PAQ","100.00","7702174076050","1.0000","2022-12-15 07:13:23","2022-12-15 07:13:23"),/*soy foreach */;
("547","7891151040365","CHUPETAS POP MANIA E/GRANDE MAXXI 1X48","19.60","107.54","3.98","VENTA *$3,98","COMPRA *$3,45x3500mi","0","BOL","100.00","7891151040365","1.0000","2022-12-15 07:14:31","2022-12-15 07:14:31"),/*soy foreach */;
("548","7702174073066","CHUPETAS YOGUETA CH/CARAMEL 1X24","34.48","37.29","1.38","VENTA *$1,60","COMPRA *$1,40x24420m","16","PAQ","16.00","7702174073066","1.0000","2022-12-15 07:15:33","2023-04-27 11:23:01"),/*soy foreach */;
("549","7702174073042","CHUPETAS YOGUETA FRUTALES 1X24","41.62","49.99","1.85","VENTA *$1,85","COMPRA *$1.69x4380mi","0","PAQ","15.00","7702174073042","1.0000","2022-12-15 07:16:32","2023-05-27 08:27:17"),/*soy foreach */;
("550","7896731021697","CHUPETAS FANPOP SURT 1X50","15.82","64.31","2.38","VENTA *$2,75","COMPRA *$1,89x8380m","0","BOL","100.00","7896731021697","1.0000","2022-12-15 07:17:50","2022-12-15 07:17:50"),/*soy foreach */;
("551","7861008504265","CHUPETAS PLOP SURT 1X24","9.00","48.64","1.80","VENTA *$1.8","COMPRA *$1,80x3550mi","0","BOL","81.00","7861008504265","1.0000","2022-12-15 07:18:49","2023-04-13 12:45:45"),/*soy foreach */;
("552","760203000107","MARSMELOS BOLSA GUANDY","2.82","24.32","0.90","VENTA*$0.90","COMPRA*$0.62","0","BOL","99.00","760203000107","1.0000","2022-12-15 07:21:18","2023-01-14 10:34:38"),/*soy foreach */;
("553","1055","CREMA ALIDENT 1X12X100CC","43.55","259.39","9.60","VENTA *$9.6","COMPRA *$7.88","0","EST","100.00","1055","1.0000","2022-12-15 07:59:14","2022-12-15 07:59:14"),/*soy foreach */;
("554","7597257001650","CREMA ALIDENT X UNDS","3.63","22.97","0.85","VENTA *$0,85","COMPRA *$0,66x5530","0","UND","96.00","7597257001650","1.0000","2022-12-15 08:00:49","2023-04-15 09:55:04"),/*soy foreach */;
("555","890410619356","GANCHO P/PELO-NEGRO-1X12","0.00","135.10","5.00","VENTA *$5","COMPRA *$3.2","0","EST","100.00","890410619356","1.0000","2022-12-15 08:02:24","2022-12-15 08:02:24"),/*soy foreach */;
("556","0210","SALCHICHA FONTANA DETAL X KILO","79.19","108.08","4.00","VENTA *$4","COMPRA *$3,16x25060m","0","PAQ","1000.00","7593278000368","1.0000","2022-12-15 08:04:28","2023-05-08 12:16:40"),/*soy foreach */;
("557","7591138073323","SANALO CREMA FACIAL","8.92","69.98","2.59","VENTA *$3","COMPRA *$1,5","16","UND","100.00","7591138073323","1.0000","2022-12-15 08:06:53","2022-12-15 08:06:53"),/*soy foreach */;
("558","0763","SANALO CREMA FACIAL 1X12","107.10","559.04","20.69","VENTA *$24","COMPRA *$18","16","EST","100.00","0763","1.0000","2022-12-15 08:11:37","2022-12-15 08:11:37"),/*soy foreach */;
("559","0639","METRAS (PICHAS)1X5O","0.00","27.02","1.00","VENTA *$1","COMPRA *$0.7","0","BOL","100.00","0639","1.0000","2022-12-15 08:12:35","2022-12-15 08:12:35"),/*soy foreach */;
("560","07592723105474","METRAS HUESITOS 1x50","5.50","32.42","1.20","VENTA *$1,2","COMPRA *$0,88x6280mi","0","BOL","100.00","07592723105474","1.0000","2022-12-15 08:14:06","2022-12-15 08:14:06"),/*soy foreach */;
("561","0973","RELLENO P/PIÑATA P/ADULTOS SURT","0.00","108.08","4.00","VENTA *$4","COMPRA *$2.5","0","BOL","100.00","0973","1.0000","2022-12-15 08:16:50","2022-12-15 08:16:50"),/*soy foreach */;
("562","0564","RELLENO P/PIÑATA PEQUEÑO AZUL","17.38","89.17","3.30","VENTA *$3,3","COMPRA *$2,2x4150mi","0","BOL","95.00","0564","1.0000","2022-12-15 08:18:07","2023-05-06 10:24:05"),/*soy foreach */;
("563","0486","TABACO LA PRINCESITA 1X5O","140.59","175.63","6.50","VENTA *$6,50","COMPRA *$5,8x4750m","0","PAQ","21.00","0486","1.0000","2022-12-15 08:25:58","2023-03-23 12:02:15"),/*soy foreach */;
("564","7591315115389","SALSEROS PEQUEÑOS X UNDS","11.94","28.37","1.05","VENTA *$1,05","COMPRA *$0,56x21310m","0","UND","100.00","7591315115389","1.0000","2022-12-15 08:27:00","2023-01-26 08:02:57"),/*soy foreach */;
("565","BOX01","SALSEROS GRANDE X UNDS","21.32","48.64","1.80","VENTA *$1,8","COMPRA *$1x4580m","0","UND","100.00","BOX01","1.0000","2022-12-15 08:28:50","2023-03-08 07:29:52"),/*soy foreach */;
("566","7702425807549","PROTECTOR KOTEX ANTIBACTERIAL 1x15","7.24","29.18","1.08","VENTA *$1,25","COMPRA *$0,86x8390m","16","EST","100.00","7702425807549","1.0000","2022-12-15 09:55:30","2022-12-15 09:55:30"),/*soy foreach */;
("567","7591353701490","PROTECTORES DIAR/FRINDS 1X40","0.00","32.42","1.20","VENTA *$1.2","COMPRA *$0.50","0","EST","100.00","7591353701490","1.0000","2022-12-15 10:00:23","2022-12-15 10:00:23"),/*soy foreach */;
("569","7702425807648","TOALLAS KOTEX DIA-NOCHE 1x8","13.76","55.93","2.07","VENTA *$2,40","COMPRA *$1,64x8390m","16","EST","99.00","7702425807648","1.0000","2022-12-15 10:05:41","2023-01-18 06:58:54"),/*soy foreach */;
("570","7702425803008","TOALLAS KOTEX NOCTURNA 1x8","25.15","35.13","1.30","VENTA *$1,50","COMPRA *$0,99x25350m","16","EST","11.00","7702425803008","1.0000","2022-12-15 10:07:06","2023-05-16 07:59:33"),/*soy foreach */;
("571","0538","CEPILLOS PARA LAVAR LISO UNDS","7.44","40.53","1.50","VENTA *$1,5","COMPRA *$0,93x4580mi","0","UND","100.00","0538","1.0000","2022-12-15 10:08:12","2022-12-15 10:08:12"),/*soy foreach */;
("572","018741030064","CEPILLOS PARA LAVAR PLACHA UNDS","5.36","64.85","2.40","VENTA *$2,4","COMPRA *$0,67x4580mi","0","UND","100.00","018741030064","1.0000","2022-12-15 10:09:39","2022-12-15 10:09:39"),/*soy foreach */;
("573","0643","SOCATE C/PORCELANA 1X12","72.00","135.10","5.00","VENTA *$5","COMPRA *$3x9800m","0","DOC","8.50","0643","1.0000","2022-12-15 10:10:48","2023-04-03 10:31:37"),/*soy foreach */;
("574","7591956110217","AGUA OXIGENADA 1X12X10OCC.","8.50","135.10","5.00","VENTA *$5","COMPRA *$","0","DOC","100.00","7591956110217","1.0000","2022-12-15 10:11:51","2022-12-15 10:11:51"),/*soy foreach */;
("575","6210511074047","CAMPHOR TABLETA 1X64UND","0.00","378.28","14.00","VENTA *$14","COMPRA *$8","0","EST","100.00","6210511074047","1.0000","2022-12-15 10:12:55","2022-12-15 10:12:55"),/*soy foreach */;
("576","7591163641054","LIGAS P/BILLETES PAPER MATE","0.00","54.04","2.00","VENTA *$2","COMPRA *$1","0","EST","100.00","7591163641054","1.0000","2022-12-15 10:14:04","2022-12-15 10:14:04"),/*soy foreach */;
("577","CENI01","CENICERO PLASTICO UNDS","0.00","135.10","5.00","VENTA *$5","COMPRA *$2","0","UND","100.00","CENI01","1.0000","2022-12-15 10:15:18","2022-12-15 10:15:18"),/*soy foreach */;
("578","0000192","PAPELILLOS LA CACHORRA","0.00","27.02","1.00","VENTA *$1","COMPRA *$","0","BOL","96.00","0000192","1.0000","2022-12-15 10:18:01","2023-06-01 09:12:34"),/*soy foreach */;
("579","0644","RECOLECTOR PARA HECES 1X12","3.78","51.34","1.90","VENTA *$2,20","COMPRA *$0,84x450","16","DOC","100.00","0644","1.0000","2022-12-15 10:19:57","2022-12-15 10:19:57"),/*soy foreach */;
("580","7591988000296","VELON MINI #1 SAN JOSE","17.66","28.10","1.04","VENTA *$1,20","COMPRA *$0,86x5310m","16","UND","100.00","7591988000296","1.0000","2022-12-15 10:21:37","2023-01-23 11:33:18"),/*soy foreach */;
("581","1035","ALGODON 1X12X25 MED","0.00","513.38","19.00","VENTA *$19","COMPRA *$12","0","DOC","100.00","1035","1.0000","2022-12-15 10:22:44","2022-12-15 10:22:44"),/*soy foreach */;
("582","8410816400512","LIMPIACRISTALES LUMINIA","0.00","108.08","4.00","VENTA *$4","COMPRA *$","0","UND","100.00","8410816400512","1.0000","2022-12-15 10:29:36","2022-12-15 10:29:36"),/*soy foreach */;
("583","7591309902667","GEL ANTIBACTERIAL DIOXOGEN 50MIL","0.00","37.29","1.38","VENTA *$1.6","COMPRA *$0.92","16","UND","100.00","7591309902667","1.0000","2022-12-15 11:40:58","2022-12-15 11:40:58"),/*soy foreach */;
("585","6920174751000","PLAGATOX SUPERB 1X10","8.25","64.85","2.40","VENTA *$2,4","COMPRA *$1,5x180mi","0","EST","100.00","6920174751000","1.0000","2022-12-15 12:03:52","2022-12-15 12:03:52"),/*soy foreach */;
("586","6895460010492","PEGA PARA TUBOS DE PVC","0.00","270.20","10.00","VENTA *$10","COMPRA *$","0","POT","100.00","6895460010492","1.0000","2022-12-15 12:04:59","2022-12-15 12:04:59"),/*soy foreach */;
("587","7592395001609","GEL P/CAB PINTOS 500GS","40.28","70.25","2.60","VENTA *$2,6","COMPRA *$1,67x4200m","0","UND","24.00","7592395001609","1.0000","2022-12-15 12:06:00","2023-03-14 06:36:01"),/*soy foreach */;
("588","7591309002084","GEL ANTIBACTERIAL DIOXOGEN 950MIL","0.00","174.82","6.47","VENTA *$7,5","COMPRA *$4,35x3600m","16","UND","100.00","7591309002084","1.0000","2022-12-15 12:09:18","2022-12-15 12:09:18"),/*soy foreach */;
("589","7591404003849","JABON LIQ CHLORHEXIDE 250ML","0.00","94.57","3.50","VENTA *$3.5","COMPRA *$2.43","0","UND","100.00","7591404003849","1.0000","2022-12-15 12:10:45","2022-12-15 12:10:45"),/*soy foreach */;
("590","7591165820518","BEDUCEN LOCION 400ML UND","0.00","405.30","15.00","VENTA *$15","COMPRA *$7.50","0","UND","100.00","7591165820518","1.0000","2022-12-15 12:11:57","2022-12-15 12:11:57"),/*soy foreach */;
("591","6937550149856","PEGA ESCOLAR CRISVI 120GS","6.45","40.53","1.50","VENTA *$1,50","COMPRA *$0,80x3000m","0","UND","100.00","6937550149856","1.0000","2022-12-15 12:13:17","2022-12-15 12:13:17"),/*soy foreach */;
("592","6937550149955","PEGA ESCOLAR CRISVI 1X12X120GS","77.44","432.32","16.00","VENTA *$16","COMPRA *$9,56x3000m","0","EST","100.00","6937550149955","1.0000","2022-12-15 12:14:23","2022-12-15 12:14:23"),/*soy foreach */;
("593","6937550149962","PEGA ESCOLAR CRISVI 1X12X60GS","38.07","216.16","8.00","VENTA *$8","COMPRA *$4,70x3000m","0","EST","100.00","6937550149962","1.0000","2022-12-15 12:15:37","2022-12-15 12:15:37"),/*soy foreach */;
("594","7596347793772","PEGAMARINA 1X2 UNDS","9.68","45.93","1.70","VENTA *$1,70","COMPRA *$0,88x3150m","0","EST","100.00","7596347793772","1.0000","2022-12-15 12:18:03","2022-12-15 12:18:03"),/*soy foreach */;
("595","7594011993992","PEGATANKE 1X2 UNDS","9.65","45.93","1.70","VENTA *$1,70","COMPRA *$1,17x8270m","0","EST","100.00","7594011993992","1.0000","2022-12-15 12:19:15","2022-12-15 12:19:15"),/*soy foreach */;
("596","0736","BOMBAS P/CARNAVAL 1X50","0.00","14.59","0.54","VENTA*$0.54","COMPRA *$","0","BOL","100.00","0736","1.0000","2022-12-15 12:20:35","2022-12-15 12:20:35"),/*soy foreach */;
("597","0045","GUANTE PARA ALBAÑILERIA X PAR","5.00","32.42","1.20","VENTA *$1,2","COMPRA *$0,86","0","PAR","100.00","0045","1.0000","2022-12-15 12:22:10","2022-12-15 12:22:10"),/*soy foreach */;
("598","3927862021","GUANTES CHARCUTERO 1X100","36.60","108.08","4.00","VENTA *$4","COMPRA *$1,5x4580m","0","EST","100.00","3927862021","1.0000","2022-12-15 12:23:19","2023-02-18 09:25:47"),/*soy foreach */;
("599","8420707007393","BARAJAS ESPAÑOLA 1x12","0.00","189.14","7.00","VENTA *$7","COMPRA *$4.1","0","EST","100.00","8420707007393","1.0000","2022-12-15 12:25:13","2022-12-26 06:27:17"),/*soy foreach */;
("600","0135","BARAJAS ESPAÑOLA PAQ","0.00","48.64","1.80","VENTA *$1.8","COMPRA *$0.34","0","PAQ","99.00","0135","1.0000","2022-12-15 12:28:31","2022-12-31 12:14:46"),/*soy foreach */;
("601","DICL01","CREMA P/ZAPATO MARRON 1X12","0.00","154.01","5.70","VENTA *$5.7","COMPRA *$4.1","0","EST","100.00","DICL01","1.0000","2022-12-15 12:30:13","2022-12-15 12:30:13"),/*soy foreach */;
("602","7702626202600","CREMA P/ZAPATO NEGRA 1X12","0.00","154.01","5.70","VENTA *$5.7","COMPRA *$4.1","0","EST","100.00","7702626202600","1.0000","2022-12-15 12:31:31","2022-12-15 12:31:31"),/*soy foreach */;
("603","01432","CREMA P/ZAPATO X UND","0.00","16.21","0.60","VENTA *$0.6","COMPRA *$0.34","0","UND","100.00","01432","1.0000","2022-12-15 12:32:36","2022-12-15 12:32:36"),/*soy foreach */;
("604","7501007445557","DETERG.ACE 500gs","9.59","59.44","2.20","VENTA *$2,55","COMPRA *$1,66x5790m","16","UND","100.00","7501007445557","1.0000","2022-12-15 12:33:50","2022-12-15 12:33:50"),/*soy foreach */;
("605","7590435138758","DETERG.ACE 800gs","23.56","93.22","3.45","VENTA *$4","COMPRA *$2,81x8390m","16","UND","99.00","7590435138758","1.0000","2022-12-15 12:35:06","2023-01-17 09:32:29"),/*soy foreach */;
("606","0000005966","DETERG.ALIVE 24x500","471.17","567.42","21.00","VENTA *$21","COMPRA *$17,8x20730m","0","BTO","2.96","0000005966","1.0000","2022-12-15 12:36:11","2023-06-02 14:02:00"),/*soy foreach */;
("607","7597597002041","DETERG.ALIVE 500gs","19.63","27.02","1.00","VENTA *$1","COMPRA *$0,74x24320m","0","UND","1000.00","0000005966","0.0417","2022-12-15 12:37:07","2023-06-02 13:57:33"),/*soy foreach */;
("608","1301","DETERG.BEMT-TE-VI 1X26X5OO","555.87","648.48","24.00","VENTA *$24","COMPRA *$21x24320m","0","BTO","97.80","1301","1.0000","2022-12-15 12:37:58","2023-06-10 08:52:00"),/*soy foreach */;
("609","7898031171201","DETERG.BEMT-TE-VI 5OOGS","21.38","28.37","1.05","VENTA *$1,05","COMPRA *$0,81x24320m","0","UND","1000.00","1301","0.0390","2022-12-15 12:38:54","2023-06-02 14:01:49"),/*soy foreach */;
("610","0064","CACAO E/POLVO X KIL","120.05","189.14","7.00","VENTA *$7","COMPRA *$4,90x24500mi","0","KIL","19.00","0064","1.0000","2022-12-16 07:01:29","2023-05-11 08:52:39"),/*soy foreach */;
("611","0851","HILO PABILO 1X2 UNDS","5.48","27.02","1.00","VENTA*$1","COMPRA*$0,68x4621m","0","PAQ","99.00","0851","1.0000","2022-12-16 07:03:43","2022-12-22 08:48:32"),/*soy foreach */;
("612","0850","HILO PABILO 1X96","263.25","1080.80","40.00","VENTA *$40","COMPRA *$31,2x8270m","0","SAC","100.00","0850","1.0000","2022-12-16 07:05:12","2022-12-16 07:05:12"),/*soy foreach */;
("613","0553","HILOS P/COSER CHINO 1X12","0.00","51.34","1.90","VENTA *$1.9","COMPRA *$1.2","0","DOC","100.00","0553","1.0000","2022-12-16 07:08:41","2022-12-16 07:08:41"),/*soy foreach */;
("616","7898031171065","JABON P/LAVAR FLAMENGO","55.59","70.25","2.60","VENTA *$2,60","COMPRA *$2,1x24360m","0","UND","1000.00","0653","0.1000","2022-12-16 07:12:39","2023-06-02 14:06:58"),/*soy foreach */;
("617","0653","JABON P/LAVAR FLAMENGO 1X10","555.87","648.48","24.00","VENTA *$24","COMPRA *$21x24360m","0","BAR","100.00","0653","1.0000","2022-12-16 07:16:00","2023-06-02 14:05:47"),/*soy foreach */;
("618","7702006205078","JABON P/BAÑO LUX Und 125gs","24.34","32.15","1.19","VENTA *$1,38","COMPRA *$0,96x25350m","16","UND","22.00","7702006205078","1.0000","2022-12-16 07:17:08","2023-05-16 07:22:50"),/*soy foreach */;
("619","7709209867768","JABON P/LAVAR SUPREMO 200GS","0.00","19.18","0.71","VENTA *$0.82","COMPRA *$0.56","16","UND","100.00","7709209867768","1.0000","2022-12-16 07:18:39","2022-12-16 07:18:39"),/*soy foreach */;
("620","000033","JABON P/BAÑO NATUR 75gs","10.73","14.32","0.53","VENTA *$0.53","COMPRA *$0.41x26160m","0","UND","87.00","000033","1.0000","2022-12-16 07:19:56","2023-06-03 13:27:25"),/*soy foreach */;
("621","75923815","JABON P/LAVAR LLAVE 160GS","7.36","29.18","1.08","VENTA *$1,08","COMPRA *$0,84x26866m","0","UND","47.00","75923815","1.0000","2022-12-16 07:21:16","2023-06-09 14:23:53"),/*soy foreach */;
("622","75901677","JABON P/LAVAR LLAVE 200gs","7.36","33.23","1.23","VENTA *$1,23","COMPRA *$0,97x26860m","0","UND","87.00","75901677","1.0000","2022-12-16 07:22:43","2023-06-09 14:23:53"),/*soy foreach */;
("623","7596612001090","JABON P/LAVAR KEAN 1X5X200","55.59","71.60","2.65","VENTA *$2,65","COMPRA *$2,1x24320m","0","EST","97.00","7596612001090","1.0000","2022-12-16 07:23:45","2023-06-02 14:03:27"),/*soy foreach */;
("624","7897270400745","JABON P/LAVAR KEAN 200GRS","11.12","14.86","0.55","VENTA *$0.55","COMPRA *$0,42x24320m","0","UND","83.00","7897270400745","1.0000","2022-12-16 07:24:48","2023-06-10 08:52:00");/*soy foreach */;
INSERT INTO productos VALUES
("625","7591190005270","CHAMPU BEBY FRESH 12OML","0.00","36.21","1.34","VENTA *$1.55","COMPRA *$0.90","16","UND","100.00","7591190005270","1.0000","2022-12-16 09:14:43","2022-12-16 09:14:43"),/*soy foreach */;
("626","7594001268338","DESOD.AVANTI 100CC","21.00","37.83","1.40","VENTA *$1.40","COMPRA *$0.83x3000m","0","UND","18.00","7594001268338","1.0000","2022-12-16 09:16:12","2023-05-16 07:22:50"),/*soy foreach */;
("627","7500435019958","CHAMPU H/SHOULDERS 200ML","15.56","102.68","3.80","VENTA *$4,4","COMPRA *$2,70x5790m","16","UND","9.00","7500435019958","1.0000","2022-12-16 09:17:50","2023-03-08 08:28:14"),/*soy foreach */;
("628","6913617144866","WIKI WIKI-WIKI AZUL 1X12","10.85","135.10","5.00","VENTA *$5","COMPRA *$3,5x135mil","0","EST","100.00","6913617144866","1.0000","2022-12-16 09:19:09","2022-12-16 09:19:09"),/*soy foreach */;
("629","7592340000282","WIKI WIKI-WIKI NEGRO 1X12","10.85","162.12","6.00","VENTA *$6","COMPRA *$3,5x135mil","0","EST","100.00","7592340000282","1.0000","2022-12-16 09:20:31","2022-12-16 09:20:31"),/*soy foreach */;
("630","6913617144200","WIKI WIKI-WIKI UNDS","0.00","13.51","0.50","VENTA *$0.50","COMPRA *$0.29","0","SOB","100.00","6913617144200","1.0000","2022-12-16 09:22:00","2022-12-16 09:22:00"),/*soy foreach */;
("631","7506339390292","DESOD.OLD-SPICE HOMBRE 50CC","15.83","68.90","2.55","VENTA *$2,95","COMPRA *$1,93x5790mi","16","UND","11.00","7506339390292","1.0000","2022-12-16 09:38:24","2023-05-16 07:22:50"),/*soy foreach */;
("633","78924468","DESOD.DOVE ORIGINAL 50cc","49.69","68.90","2.55","VENTA *$2.95","COMPRA *$1,96x8390m","16","UND","9.00","78924468","1.0000","2022-12-16 09:41:14","2023-05-16 07:22:50"),/*soy foreach */;
("636","7592730230022","TALCO PARA NIÑOS 200gs","4.87","32.69","1.21","VENTA *$1,40","COMPRA *$0,83x5840mi","16","UND","100.00","7592730230022","1.0000","2022-12-16 09:46:14","2022-12-16 09:46:14"),/*soy foreach */;
("637","7702006000482","CHAMPU E/SOBRE SEDAL 1x20","35.66","137.53","5.09","VENTA *$5,90","COMPRA *$4,25x8390m","16","EST","100.00","7702006000482","1.0000","2022-12-16 09:47:39","2022-12-16 09:47:39"),/*soy foreach */;
("638","01046012345678","BICARBONATO QUEEN 1X20","35.00","54.04","2.00","VENTA*$2","BICARBONATO*$1,4X25030m","0","EST","12.00","01046012345678","1.0000","2022-12-16 09:48:38","2023-05-05 10:09:18"),/*soy foreach */;
("639","7592949001758","TRATAMIENTO SLIK 350GRS","3.05","67.55","2.50","VENTA *$2.5","COMPRA *$0.67","0","UND","100.00","7592949001758","1.0000","2022-12-16 09:50:15","2022-12-16 09:50:15"),/*soy foreach */;
("640","7591949528012","REMOVEDOR P/UÑAS VALMY 50CC","4.68","29.18","1.08","VENTA *$1,08","COMPRA *$0,75x6240mi","0","UND","100.00","7591949528012","1.0000","2022-12-16 09:51:26","2022-12-16 09:51:26"),/*soy foreach */;
("641","7592943910292","CREMA CORPORAL SLIK 360CM","0.00","94.57","3.50","VENTA *$3.5","COMPRA *$2.08","0","UND","100.00","7592943910292","1.0000","2022-12-16 09:57:36","2022-12-16 09:57:36"),/*soy foreach */;
("643","7591218005445","LIGAS PARA FRENOS BURAK","12.06","54.04","2.00","VENTA *$2","COMPRA *$1,46x8270m","0","UND","100.00","7591218005445","1.0000","2022-12-16 10:00:43","2022-12-16 10:00:43"),/*soy foreach */;
("645","1167","PALOS PARA PINCHOS 1X100","0.00","35.13","1.30","VENTA *$1.3","COMPRA* 0.65","0","EST","100.00","1167","1.0000","2022-12-16 10:06:39","2022-12-16 10:06:39"),/*soy foreach */;
("646","000037","VASOS P/CAFE 4 OZ C/T X UNDS","0.00","5.40","0.20","VENTA*$0.20","COMPRA*$0.12","0","UND","100.00","000037","1.0000","2022-12-16 10:07:45","2022-12-16 10:07:45"),/*soy foreach */;
("647","PENDIENTE","VASOS P/CAFE 7 OZ C/T X UNDS","3.39","8.11","0.30","VENTA*$0.30","COMPRA*$0.14x24220m","0","UND","49.00","PENDIENTE","1.0000","2022-12-16 10:08:42","2023-03-21 13:34:06"),/*soy foreach */;
("648","7592043121468","TEIPE PEQ. COBRA 1X10","35.70","216.16","8.00","VENTA *$8","COMPRA *$6x5950mil","0","EST","100.00","7592043121468","1.0000","2022-12-16 10:10:52","2022-12-16 10:10:52"),/*soy foreach */;
("649","7591894030073","TIRROS D/PAPEL BERNICE","0.00","55.39","2.05","VENTA*$2.05","COMPRA*$1.30","0","UND","100.00","7591894030073","1.0000","2022-12-16 10:12:29","2022-12-16 10:12:29"),/*soy foreach */;
("650","0704","TEFLON BLANCO PEQ.UND","0.75","13.51","0.50","VENTA *$0.5","COMPRA *$0.17","0","UND","100.00","0704","1.0000","2022-12-16 10:14:03","2022-12-16 10:14:03"),/*soy foreach */;
("651","0000017","CHIMO EL APUREÑITO 1X12","63.44","81.06","3.00","VENTA *$3","COMPRA *$2,6x8930m","0","EST","21.92","0000017","1.0000","2022-12-16 10:16:40","2023-04-11 13:17:05"),/*soy foreach */;
("652","7594000040058","CHIMO TIGRITO GDE.1X12","70.76","86.46","3.20","VENTA *$3,20","COMPRA *$2,9x24400m","0","EST","9.00","7594000040058","1.0000","2022-12-16 10:17:38","2023-03-25 12:22:06"),/*soy foreach */;
("653","0487","CHIMO EL APUREÑITO UNDS","5.29","8.92","0.33","VENTA *$0,33","COMPRA *$0,22x8930","0","UND","1000.00","0000017","0.0840","2022-12-16 10:19:04","2023-03-25 12:18:24"),/*soy foreach */;
("654","0372","GATORADE F/TROPCA 1X12X473","300.50","405.30","15.00","VENTA *$15","COMPRA *$11,5x26130m","0","CAJ","13.00","0372","1.0000","2022-12-16 10:36:59","2023-06-02 08:02:07"),/*soy foreach */;
("655","GAT01","GATORADE X UNDS","25.04","41.34","1.53","VENTA *$1,53","COMPRA *$0.96x26130m","0","UND","1000.00","0372","0.0840","2022-12-16 10:38:19","2023-05-26 12:10:01"),/*soy foreach */;
("656","7591031005995","GATORADE PERFORM 500ML","0.00","40.80","1.51","VENTA *$1.75","COMPRA *$1.12","16","UND","100.00","7591031005995","1.0000","2022-12-16 10:39:37","2022-12-16 10:39:37"),/*soy foreach */;
("657","7591031001959","AGUA MINERAL MINALBA NEVADA 1,5","19.89","28.10","1.04","VENTA*$1,20","COMPRA*$0,75x26470m","16","UND","1000.00","MANZ04","0.0840","2022-12-16 10:40:46","2023-06-02 13:05:36"),/*soy foreach */;
("658","0700","AGUA MINERAL MINALBA 1X12X1,5","184.45","279.66","10.35","VENTA *$12","COMPRA *$11,40x8410m","16","CAJ","100.00","0700","1.0000","2022-12-16 10:41:59","2023-01-19 06:22:45"),/*soy foreach */;
("659","0710","AGUA MINERAL MINALBA 1X24X335","83.82","302.89","11.21","VENTA *$13","COMPRA *$9,55x8780mi","16","CAJ","100.00","0710","1.0000","2022-12-16 10:43:19","2022-12-16 10:43:19"),/*soy foreach */;
("660","AGU1","AGUA MINERAL MINALBA 1X24X600","106.82","384.49","14.23","VENTA*$16,5","COMPRA*$12,17x8780mi","16","CAJ","100.00","AGU1","1.0000","2022-12-16 10:57:04","2022-12-16 10:57:04"),/*soy foreach */;
("661","1095","AGUA MINERAL FRONTIER 5 LTS","62.83","93.22","3.45","VENTA *$4","COMPRA *$2,8x22440m","16","UND","6.00","1095","1.0000","2022-12-16 11:12:45","2023-03-28 10:05:29"),/*soy foreach */;
("662","7591031001980","AGUA MINERAL MINALBA 600CC","4.45","14.86","0.55","VENTA*$0,63","COMPRA*$0,51x8780mi","16","UND","100.00","7591031001980","1.0000","2022-12-16 11:13:44","2023-01-19 06:14:16"),/*soy foreach */;
("663","MANZ04","AGUA MINERAL NEVADA 1X12X1.5","238.71","439.08","16.25","VENTA *$18.85","COMPRA*$9.02x26470m","16","CAJ","7.84","MANZ04","1.0000","2022-12-16 11:14:46","2023-06-02 13:25:45"),/*soy foreach */;
("664","1208","AGUA MINERAL NEVADA 1X16X355","131.26","158.61","5.87","VENTA *$6,80","COMPRA *$4,96x26470m","16","CAJ","14.70","1208","1.0000","2022-12-16 11:16:18","2023-06-02 13:25:45"),/*soy foreach */;
("665","000108","AGUA MINERAL NEVADA 1X16X600","174.97","209.68","7.76","VENTA *$9","COMPRA *$6,61x26470m","16","CAJ","5.70","000108","1.0000","2022-12-16 11:17:19","2023-06-02 13:25:45"),/*soy foreach */;
("666","7591031100232","AGUA MINERAL NEVADA 355CC","8.20","11.62","0.43","VENTA *$0,49","COMPRA *$0,31x26470m","16","UND","1000.00","1208","0.0625","2022-12-16 11:18:07","2023-06-02 12:52:09"),/*soy foreach */;
("667","7591127363800","AGUA MINERAL NEVADA 600CC","10.94","15.13","0.56","VENTA *$0,64","COMPRA *$0,41x26470m","16","UND","1000.00","000108","0.0625","2022-12-16 11:19:04","2023-06-02 13:00:16"),/*soy foreach */;
("668","0554","AGUA MINERAL VISTA 24x330","194.96","257.23","9.52","VENTA *$9,52","COMPRA *$8x24370m","0","CJA","100.00","0554","1.0000","2022-12-16 11:19:57","2023-02-17 07:36:55"),/*soy foreach */;
("669","1057","AGUA MINERAL VISTA 24x600","114.72","405.30","15.00","VENTA *$15","COMPRA *$12x9560m","0","CJA","100.00","1057","1.0000","2022-12-16 11:20:50","2022-12-16 11:20:50"),/*soy foreach */;
("670","0013","JUGO JUSTY NARANJA 12X1,5LT","221.00","270.20","10.00","VENTA *$10","COMPRA *$8,5x26000m","0","CAJ","39.92","0013","1.0000","2022-12-16 11:23:23","2023-06-08 12:01:20"),/*soy foreach */;
("671","7592661000725","JUGO JUSTY NARANJA 1,5LT","18.42","27.02","1.00","VENTA *$1","COMPRA *$0,71x26000mi","0","UND","1000.00","0013","0.0840","2022-12-16 11:24:18","2023-05-24 10:00:51"),/*soy foreach */;
("672","1498","JUGO DEL VALLE 1x6x1,5Lt","208.30","256.42","9.49","VENTA *$11","COMPRA *$8,29x25120m","16","CAJ","-0.34","1498","1.0000","2022-12-16 11:25:40","2023-05-11 07:48:39"),/*soy foreach */;
("675","1439","REFRESCO COCA-COLA LATA 12X235","42.39","270.20","10.00","VENTA*$10","COMPRA*$8.28x5012","0","CAJ","100.00","1439","1.0000","2022-12-16 11:30:00","2022-12-16 11:30:00"),/*soy foreach */;
("676","7702535021712","REFRESCO COCA-COLA LATA UND","3.56","24.32","0.90","VENTA*$0.90","COMPRA*$0.69x5012","0","UND","100.00","7702535021712","1.0000","2022-12-16 11:30:59","2022-12-16 11:30:59"),/*soy foreach */;
("677","7709227481090","CREMA TRES LECHE MASTER TOP 1LT","79.92","98.35","3.64","VENTA *$3,64","COMPRA *$3.33x4600m","0","UND","12.00","7709227481090","1.0000","2022-12-16 11:32:17","2023-03-31 08:04:22"),/*soy foreach */;
("678","7591031012290","JUGO YUKERY SURT 1,5L","23.57","97.00","3.59","VENTA *$4,16","COMPRA *$2,80x8410mi","16","UND","100.00","7591031012290","1.0000","2022-12-16 11:33:22","2022-12-16 11:33:22"),/*soy foreach */;
("679","1026","JUGO YUKERY SURT BTLLA 12X250","70.54","256.42","9.49","VENTA*$11","COMPRA*$8,39x8410mi","16","CAJ","100.00","1026","1.0000","2022-12-16 11:34:39","2022-12-16 11:34:39"),/*soy foreach */;
("680","75920913","JUGO YUKERY SURTI 250C","5.88","23.78","0.88","VENTA *$1,02","COMPRA *$0,70x8410mi","16","UND","100.00","75920913","1.0000","2022-12-16 11:35:41","2022-12-16 11:35:41"),/*soy foreach */;
("681","7592396000359","JUGO YUKERY SURTI 500C","5.98","37.29","1.38","VENTA *$1.60","COMPRA *$1.05","16","UND","100.00","7592396000359","1.0000","2022-12-16 11:36:38","2022-12-16 11:36:38"),/*soy foreach */;
("682","MASA","MASA CUADRADA 1X18UND","24.37","35.13","1.30","VENTA *$1,30","COMPRA *$1x24370m","0","UND","32.00","MASA","1.0000","2022-12-16 11:37:46","2023-03-17 10:10:41"),/*soy foreach */;
("683","7592396001455","JUGO NATULAC SURT 1x3","16.37","64.85","2.40","VENTA *$2,40","COMPRA *$1,81x9030m","0","EST","100.00","7592396001455","1.0000","2022-12-16 11:38:39","2022-12-16 11:38:39"),/*soy foreach */;
("686","7896005403501","JUGO DAFRUTA SURT.1,5L","0.00","78.36","2.90","VENTA*$2.90","COMPRA*$2.86","0","UND","100.00","7896005403501","1.0000","2022-12-16 11:43:59","2022-12-16 11:43:59"),/*soy foreach */;
("687","7896005403402","JUGO DAFRUTA SURT 1x3","12.16","51.34","1.90","VENTA *$1,90","COMPRA *$1,28x7980mi","0","EST","100.00","7896005403402","1.0000","2022-12-16 11:45:31","2022-12-16 11:45:31"),/*soy foreach */;
("688","0126","LECHE PURISIMA LIQ 12X900gs","151.70","580.93","21.50","VENTA *$21,5","COMPRA *$18,5x8200m","0","CAJ","100.00","0126","1.0000","2022-12-16 11:46:42","2022-12-16 11:46:42"),/*soy foreach */;
("689","7591210000209","LECHE PURISIMA LIQ 900gs","12.74","54.04","2.00","VENTA *$2","COMPRA *$1,54x8200m","0","UND","98.00","7591210000209","1.0000","2022-12-16 11:47:58","2023-06-08 12:01:20"),/*soy foreach */;
("690","00000001","PERRARINA K-NINA 2kg","140.15","198.06","7.33","VENTA *$8,5","COMPRA *$5,74x24420m","16","SCO","97.00","00000001","1.0000","2022-12-16 11:51:17","2023-03-21 08:43:15"),/*soy foreach */;
("691","0000005","PERRARINA K-NINA 4kg","228.05","326.13","12.07","VENTA *$14","COMPRA *$9,34x24420m","16","SCO","100.00","0000005","1.0000","2022-12-16 11:52:20","2023-03-01 09:39:55"),/*soy foreach */;
("692","7591102020476","PERRARINA SUPER CAN 1X4KG","264.06","351.26","13.00","VENTA*$13","COMPRA*$10,84x24360m","0","SCO","100.00","7591102020476","1.0000","2022-12-16 11:53:18","2023-03-01 06:50:32"),/*soy foreach */;
("693","7591102032417","PERRARINA SUPER CAN X KILO","45.41","66.47","2.46","VENTA *$2,46","COMPRA *$1,86x24360m","0","KIL","97.50","7591102032417","1.0000","2022-12-16 11:54:29","2023-05-11 08:04:50"),/*soy foreach */;
("694","0383","PAN ARABE GDE","29.94","40.53","1.50","VENTA *$1,50","COMPRA *$1,20x24200m","0","UND","9.00","0383","1.0000","2022-12-16 11:58:16","2023-03-18 08:19:27"),/*soy foreach */;
("695","1405","PAN DULCE 1X18","20.02","27.02","1.00","VENTA *$1","COMPRA *$0,8x25030m","0","UND","3.00","1405","1.0000","2022-12-16 11:59:14","2023-05-05 08:39:34"),/*soy foreach */;
("696","0387","PAN RAYADO UN KILO","46.87","58.09","2.15","VENTA*$2.15","COMPRA*$1,8x26040m","0","BOL","14.00","0387","1.0000","2022-12-16 12:02:12","2023-05-25 08:22:07"),/*soy foreach */;
("697","1386","PANELA 1X24X500","221.72","378.28","14.00","VENTA *$14","COMPRA *$11,5x11860m","0","BTO","17.00","1386","1.0000","2022-12-16 12:03:08","2023-03-14 09:52:59"),/*soy foreach */;
("698","1387","PANELA X UNDS","9.24","18.91","0.70","VENTA *$0,70","COMPRA *$0,48x11860m","0","UND","1000.00","1386","0.0420","2022-12-16 12:04:09","2023-03-14 09:55:09"),/*soy foreach */;
("699","7591894030066","TIRROS MARRON X Unds","24.23","40.53","1.50","VENTA *$1,5","COMPRA *$0,91x15570m","0","UND","90.00","7591894030066","1.0000","2022-12-16 12:11:00","2023-06-08 13:15:19"),/*soy foreach */;
("700","7591112059015","PASTA AJO HEINZ 200GS","4.31","37.02","1.37","VENTA *$1,58","COMPRA *$0,96x4490mi","16","UND","100.00","7591112059015","1.0000","2022-12-16 12:53:48","2022-12-16 12:53:48"),/*soy foreach */;
("701","0207","PASTA CAPRI 12X1KG","367.50","459.34","17.00","VENTA *$17","COSTO *$15x24730m","0","PAC","24.00","0207","1.0000","2022-12-16 12:54:56","2023-05-23 13:50:04"),/*soy foreach */;
("702","1136","PASTA CAPRI 1Kgs","30.62","40.53","1.50","VENTA *$1,50","COMPRA *$1,25x24500m","0","UND","1000.00","0207","0.0840","2022-12-16 12:57:39","2023-03-31 11:15:46"),/*soy foreach */;
("703","PAPL01","PASTA PRIMOR 12x1","428.75","521.49","19.30","VENTA *$19,30","COSTO *$17,5x24500m","0","PAC","8.42","PAPL01","1.0000","2022-12-16 12:59:42","2023-03-31 09:00:25"),/*soy foreach */;
("706","1122","PASTA PAMPA 1X20X500","249.75","405.30","15.00","VENTA *$15","COMPRA *$12,5x11250m","0","PAC","16.00","1122","1.0000","2022-12-16 13:03:36","2023-03-31 08:04:23"),/*soy foreach */;
("707","8697480070603","PASTA PAMPA 500gs","12.49","21.62","0.80","VENTA *$0,80","COMPRA *$0,63x11250m","0","UND","100.00","8697480070603","1.0000","2022-12-16 13:04:34","2023-01-19 09:45:55"),/*soy foreach */;
("708","7591674000036","PASTA SINDONI 1KG","32.13","46.47","1.72","VENTA *$1,72","COSTO *$1,46x7910M","0","UND","100.00","7591674000036","1.0000","2022-12-16 13:05:45","2023-02-04 06:31:38"),/*soy foreach */;
("709","1478","PASTA SINDONI 1X12X1","385.56","513.38","19.00","VENTA *$19","COSTO *$17x22680m","0","PAC","100.00","1478","1.0000","2022-12-16 13:06:42","2023-02-04 06:27:40"),/*soy foreach */;
("710","7591112022675","PASTA TTE HEINZ 200gs","9.45","61.88","2.29","VENTA *$2,65","COMPRA *$1,78x5310mi","16","UND","100.00","7591112022675","1.0000","2022-12-16 13:07:53","2022-12-16 13:07:53"),/*soy foreach */;
("711","7591221110768","PASTA TTE IBERIA 500gs","19.24","101.33","3.75","VENTA *$4,35","COMPRA *$3,06x6280mi","16","UND","100.00","7591221110768","1.0000","2022-12-16 13:08:50","2022-12-16 13:08:50"),/*soy foreach */;
("712","0206","ESPAGUETTI CAPRI 12X1kg","367.50","459.34","17.00","VENTA *$17","COSTO *$15x24500m","0","PAC","26.09","0206","1.0000","2022-12-17 07:29:54","2023-06-07 06:53:40"),/*soy foreach */;
("713","7591151401035","ESPAGUETTI CAPRI 1KG","30.62","40.53","1.50","VENTA *$1,50","COSTO *$1,25x24500m","0","UND","1000.00","0206","0.0840","2022-12-17 07:32:41","2023-03-31 07:41:37"),/*soy foreach */;
("714","0751","ESPAGUETTI CAPRI 24x500gs","444.00","526.89","19.50","VENTA *$19.5","COMPRA *$18,50x8200m","0","PAC","8.00","0751","1.0000","2022-12-17 07:34:27","2023-04-04 14:09:31"),/*soy foreach */;
("716","0000031","REFRESCO SUN-COLA 12x1","170.41","197.25","7.30","VENTA *$7,30","COMPRA *$6,8x25060m","0","CAJ","12.00","0000031","1.0000","2022-12-17 07:37:28","2023-05-31 09:09:09"),/*soy foreach */;
("717","STVHZ0600002","ESPAGUETTI MARY 12X1kg","355.25","459.34","17.00","VENTA *$17","COSTO *$14,5x24500m","0","PAC","14.60","STVHZ0600002","1.0000","2022-12-17 07:38:45","2023-05-17 12:08:01"),/*soy foreach */;
("718","7591473004174","ESPAGUETTI MARY 1kg","29.60","40.53","1.50","VENTA *$1,50","COSTO *$1,21x24500m","0","UND","1000.00","STVHZ0600002","0.0840","2022-12-17 07:42:28","2023-03-31 07:30:51"),/*soy foreach */;
("719","7702540012057","ESPAGUETTI SAVANA 20X500","100.04","405.30","15.00","VENTA *$15","COMPRA *$12,2x8200mi","0","CAJ","92.50","7702540012057","1.0000","2022-12-17 07:44:08","2023-05-17 12:08:01"),/*soy foreach */;
("720","7896423701005","ESPAGUETTI SAVANA 500g (0,65)","5.00","21.62","0.80","VENTA *$0,80","COMPRA *$0,61x8200mi","0","UND","73.00","7896423701005","1.0000","2022-12-17 07:45:32","2023-06-03 13:06:33"),/*soy foreach */;
("721","7503022983335","ESPAGUETTI SINDONI 1KG","32.13","46.47","1.72","VENTA *$1,72","COSTO *$1,42x9560mi","0","PAC","100.00","7503022983335","1.0000","2022-12-17 07:47:11","2023-02-04 06:29:49"),/*soy foreach */;
("722","0746","ESPAGUETTI SINDONI 1X12X1","385.56","513.38","19.00","VENTA *$19","COSTO *$17x22680m","0","PAC","99.00","0746","1.0000","2022-12-17 07:48:30","2023-02-03 12:31:29"),/*soy foreach */;
("723","0656","REFRESCO GLUP 6x2","78.85","162.12","6.00","VENTA *$6","COMPRA *$5x15770m","0","CAJ","97.00","0656","1.0000","2022-12-17 07:56:39","2022-12-31 10:20:32"),/*soy foreach */;
("724","0074","ARROZ AGUA BLANCA 1KG","26.77","33.78","1.25","VENTA *$1,25","COSTO *$1,03x25380m","0","UND","1000.00","AR01","0.0420","2022-12-17 08:12:29","2023-05-25 13:00:35"),/*soy foreach */;
("725","AR01","ARROZ AGUA BLANCA 1X24X1","642.32","756.56","28.00","VENTA *$28","COSTO *$24,8x25380m","0","PAC","18.00","AR01","1.0000","2022-12-17 08:13:59","2023-05-25 12:59:24"),/*soy foreach */;
("726","0214","ARROZ SABROZON 24x1Kg","509.60","621.46","23.00","VENTA *$23","COMPRA *$20,8x23150m","0","PAC","2.00","0214","1.0000","2022-12-17 08:15:28","2023-04-15 12:15:09"),/*soy foreach */;
("729","1482","ARROZ CONGRI 24x1Kg","564.81","697.12","25.80","VENTA *$25.8","COMPRA *$21,5x24730m","0","PAC","8.72","1482","1.0000","2022-12-17 08:23:01","2023-06-03 13:06:33"),/*soy foreach */;
("730","7594000370278","ARROZ CONGRI 1kgs","23.54","29.72","1.10","VENTA *$1,10","COSTO *$0,90x24730m","0","UND","1000.00","1482","0.0420","2022-12-17 08:24:33","2023-05-29 10:38:15"),/*soy foreach */;
("731","BOLS03","BOLSA 30 KGS N/G","0.60","7.57","0.28","VENTA *$0.28","COMPRA *$0.11","0","UND","83.00","BOLS03","1.0000","2022-12-17 08:59:43","2023-01-16 07:17:38"),/*soy foreach */;
("732","BOLS04","BOLSA 40 KGS N/G","0.94","9.73","0.36","VENTA *$0,36","COMPRA *$0,17","0","UND","100.00","BOLS04","1.0000","2022-12-17 09:02:24","2022-12-17 09:02:24"),/*soy foreach */;
("733","0398","BOLSAS PAPEL 1/2 KGS","0.00","59.71","2.21","VENTA *$2,21","COMPRA *$1,68x447mi","0","PAQ","100.00","0398","1.0000","2022-12-17 09:04:51","2022-12-17 09:04:51"),/*soy foreach */;
("734","0406","BOLSAS PAPEL 1/4 KGS","5.70","37.83","1.40","VENTA *$1,40","COMPRA *$1x4580mi","0","PAQ","100.00","0406","1.0000","2022-12-17 09:43:42","2022-12-17 09:43:42"),/*soy foreach */;
("735","0412","BOLSAS PLAST 1 KG","13.70","18.91","0.70","VENTA *$0,70","COMPRA *$0,56x24420mi","0","PAQ","999.00","0412","1.0000","2022-12-17 09:47:43","2023-03-29 13:39:13"),/*soy foreach */;
("736","0410","BOLSAS PLAST 1/2 KG","9.16","13.51","0.50","VENTA *$0,50","COMPRA *$0,40x22910m","0","PAQ","100.00","0410","1.0000","2022-12-17 09:50:50","2023-02-06 11:48:29"),/*soy foreach */;
("737","0424","BOLSAS PLAST 15 KG","50.04","66.20","2.45","VENTA *$2,45","COMPRA *$2,05x24420mil","0","PAQ","1000.00","0423","0.1000","2022-12-17 09:52:39","2023-03-30 06:37:01"),/*soy foreach */;
("738","0422","BOLSAS PLAST 1O KG","31.75","54.04","2.00","VENTA *$2","COMPRA *$1,30x5500mi","0","PAQ","1000.00","0421","0.1000","2022-12-17 09:54:32","2023-03-30 06:28:43");/*soy foreach */;
INSERT INTO productos VALUES
("739","0411","BOLSAS PLAST 1X1000X1","137.00","175.63","6.50","VENTA *$6,50","COMPRA *$5,61x24420mi","0","MIL","8.70","0411","1.0000","2022-12-17 09:56:54","2023-03-29 13:39:13"),/*soy foreach */;
("740","0409","BOLSAS PLAST 1X1000X1/2","91.64","129.70","4.80","VENTA *$4,80","COMPRA *$4x22910m","0","MIL","100.00","0409","1.0000","2022-12-17 09:59:10","2023-02-06 12:25:23"),/*soy foreach */;
("741","0421","BOLSAS PLAST 1X1000X10","317.46","459.34","17.00","VENTA *$17","COMPRA *$11x5500mi","0","MIL","2.80","0421","1.0000","2022-12-17 10:00:44","2023-05-10 11:26:44"),/*soy foreach */;
("742","0423","BOLSAS PLAST 1X1000X15","500.37","621.46","23.00","VENTA *$23","COMPRA *$20,5x24420mi","0","MIL","1.90","0423","1.0000","2022-12-17 10:02:15","2023-03-30 07:26:31"),/*soy foreach */;
("743","0413","BOLSAS PLAST 1X1000X2 C/ASA","30.25","189.14","7.00","VENTA *$7","COMPRA *$5,5x5500mi","0","MIL","100.00","0413","1.0000","2022-12-17 10:04:03","2022-12-17 10:04:03"),/*soy foreach */;
("744","0415","BOLSAS PLAST 1X1000X2 S/ASA","35.75","216.16","8.00","VENTA *$8","COMPRA *$6,5x4950mil","0","MIL","100.00","0415","1.0000","2022-12-17 10:06:11","2022-12-17 10:06:11"),/*soy foreach */;
("745","0417","BOLSAS PLAST 1X1000X3KS","190.23","229.67","8.50","VENTA *$8,50","COMPRA *$7,79x24400m","0","MIL","4.00","0417","1.0000","2022-12-17 10:07:48","2023-03-29 13:39:14"),/*soy foreach */;
("746","0419","BOLSAS PLAST 1X1000X5","235.90","299.92","11.10","VENTA *$11,1","COMPRA *$9,66x24420m","0","MIL","2.90","0419","1.0000","2022-12-17 10:09:25","2023-03-30 07:26:31"),/*soy foreach */;
("747","0414","BOLSAS PLAST 2 KG-C/ASA","13.99","21.62","0.80","VENTA *$0,80","COMPRA *$0,57x24420m","0","PAQ","998.00","0414","1.0000","2022-12-17 10:10:46","2023-03-29 13:39:14"),/*soy foreach */;
("748","0416","BOLSAS PLAST 2 KG-S/ASA","15.86","21.62","0.80","VENTA *$0,80","COMPRA *$0,65x24400m","0","PAQ","998.00","0416","1.0000","2022-12-17 10:12:28","2023-06-08 08:37:13"),/*soy foreach */;
("749","0418","BOLSAS PLAST 3 KG-PAQ","19.02","27.02","1.00","VENTA *$1","COMPRA *$0,78x24400m","0","PAQ","999.00","0418","1.0000","2022-12-17 10:15:19","2023-03-29 13:39:14"),/*soy foreach */;
("750","0420","BOLSAS PLAST 5 KG-PAQ","23.59","32.42","1.20","VENTA *$1,20","COMPRA *$0,97x24420m","0","PAQ","1000.00","0419","0.1000","2022-12-17 10:16:32","2023-03-30 06:24:41"),/*soy foreach */;
("751","0408","BOLSAS PLAST P/COMBO 30KGS","0.83","9.46","0.35","VENTA*$0,35","COMPRA*$0,10x4580m","0","UND","100.00","0408","1.0000","2022-12-17 10:18:25","2022-12-17 10:18:25"),/*soy foreach */;
("752","0425","BOLSAS PLAST VERDURERA","172.08","661.99","24.50","VENTA *$24,50","COMPRA *$18x9290mil","0","ROY","100.00","0425","1.0000","2022-12-17 10:20:08","2022-12-17 10:20:08"),/*soy foreach */;
("753","0289","PORTA PERROS Peq-1X50","65.00","101.87","3.77","VENTA *$3,77","COMPRA *$2,5x26000m","0","EST","14.00","0289","1.0000","2022-12-19 07:23:02","2023-05-24 09:53:14"),/*soy foreach */;
("754","0092","CASABE LLANERO Gde X TORTA","23.81","32.42","1.20","VENTA *$1,20","COMPRA *$0,95x25060m","0","TOR","150.00","0092","1.0000","2022-12-19 07:48:53","2023-05-08 12:18:12"),/*soy foreach */;
("755","7460000025039","VENENO P/RATAS RATAX","1.50","11.35","0.42","VENTA *$0,42","COMPRA *$0,25x5980mi","0","SOB","100.00","7460000025039","1.0000","2022-12-19 09:02:20","2022-12-19 09:02:20"),/*soy foreach */;
("756","0539","EXTRA 1x10x20","56.70","216.16","8.00","VENTA *$8","COMPRA *$7x8100mi","0","PAQ","100.00","0539","1.0000","2022-12-19 09:04:43","2022-12-19 09:04:43"),/*soy foreach */;
("757","615953902303","COSTERO 1x10x20","171.82","229.67","8.50","VENTA *$8,5","COMPRA *$7,5x8100mi","0","PAQ","100.00","615953902303","1.0000","2022-12-19 09:10:05","2023-02-06 12:32:04"),/*soy foreach */;
("758","7597644000020","VIGO 1x10x20","171.82","229.67","8.50","VENTA *$8,50","COMPRA *$7,5x8100m","0","PAQ","100.00","7597644000020","1.0000","2022-12-19 09:31:07","2023-02-06 12:27:55"),/*soy foreach */;
("759","7592742000095","MAYONESA BOLSA L/VIÑA 3,35kg","150.29","178.33","6.60","VENTA *$6.60","COMPRA *$5.68x2646m","0","BOL","37.00","7592742000095","1.0000","2022-12-19 10:16:03","2023-06-06 11:54:10"),/*soy foreach */;
("760","7592742000071","MOSTAZA BOLSA L/VIÑA 1kgs","63.50","76.20","2.82","VENTA *$2.82","COMPRA *$2.40x26460m","0","BOL","11.00","7592742000071","1.0000","2022-12-19 10:53:07","2023-06-07 10:36:38"),/*soy foreach */;
("761","7590006200144","MARGA MAVESA 1kilo","101.47","132.40","4.90","VENTA *$4,90","COMPRA *$4,14x26860m","0","UND","1000.00","0000073","0.1670","2022-12-19 11:27:58","2023-06-09 14:14:16"),/*soy foreach */;
("762","1474","MARGA MAVESA 12X5OO","627.20","787.09","29.13","VENTA *$29,13","COMPRA *$25,60x26860m","0","CJA","0.76","1474","1.0000","2022-12-19 11:31:28","2023-06-09 14:23:53"),/*soy foreach */;
("763","0000073","MARGA MAVESA 1X6X1","608.83","783.58","29.00","VENTA *$29","COMPRA *$24,85x26860m","0","CJA","1.83","0000073","1.0000","2022-12-19 11:33:05","2023-06-09 14:23:53"),/*soy foreach */;
("764","7590006200137","MARGA MAVESA 5OOg","52.26","67.55","2.50","VENTA *$2,50","COMPRA *$2,13x26860m","0","UND","1000.00","1474","0.0840","2022-12-19 11:35:13","2023-06-09 14:17:15"),/*soy foreach */;
("765","1559","MARGA NELLY 12X454G","575.75","675.50","25.00","VENTA*$25","COMPRA*$22x24730m","0","CAJ","4.92","1559","1.0000","2022-12-19 11:36:28","2023-04-29 09:38:58"),/*soy foreach */;
("766","1029","MARGA NELLY 24X25OG","612.50","675.50","25.00","VENTA*$25","COMPRA*$22x24730m","0","CAJ","4.16","1029","1.0000","2022-12-19 11:46:15","2023-06-10 08:52:00"),/*soy foreach */;
("767","75971816","MARGA NELLY 250gs","25.52","29.72","1.10","VENTA *$1,10","COMPRA *$1,04x24500m","0","UND","1000.00","1029","0.0420","2022-12-19 11:55:07","2023-04-29 08:34:48"),/*soy foreach */;
("768","7590006200489","MARGA NELLY 454GS","47.98","59.44","2.20","VENTA*$2,20","COMPRA*$1,83x24730m","0","UND","1000.00","1559","0.0840","2022-12-19 11:56:11","2023-04-29 08:32:56"),/*soy foreach */;
("769","7591181000413","PITILLOS C/CARAMELOS BOLSA","9.00","27.02","1.00","VENTA *$1","COMPRA *$0,8x11250m","0","BOL","81.00","7591181000413","1.0000","2022-12-20 07:50:40","2023-05-13 12:32:21"),/*soy foreach */;
("770","826580000236","SAL EN SAL 1KGS(0,4)","1.96","9.46","0.35","VENTA *$0,35","COMPRA *$0,22x8930m","0","UND","88.00","826580000236","1.0000","2022-12-20 08:32:58","2023-05-04 07:59:19"),/*soy foreach */;
("771","00007","SAL EN SAL 1X25X1","49.12","167.52","6.20","VENTA *$6,2","COMPRA *$5,5x8930mil","0","PAC","98.00","00007","1.0000","2022-12-20 08:34:45","2023-03-10 13:17:40"),/*soy foreach */;
("772","00000192","PAPEL ENVO/DECORADO 1x100","120.20","162.12","6.00","VENTA *$6","COMPRA *$4,6x26130m","0","1/4","16.00","00000192","1.0000","2022-12-20 11:45:34","2023-05-26 07:44:59"),/*soy foreach */;
("773","7707238815330","MAYONESA BOLSA DIFFER 3kg","132.82","162.12","6.00","VENTA *$6","COMPRA *$5,3x24490m","0","GAL","12.00","7707238815330","1.0000","2022-12-20 12:04:20","2023-05-13 11:34:27"),/*soy foreach */;
("774","7591902001453","MAYONESA FRITZ 850gs","43.16","151.31","5.60","VENTA *$5,60","COMPRA *$4,83x8930m","0","UND","100.00","7591902001453","1.0000","2022-12-20 12:07:48","2022-12-20 12:07:48"),/*soy foreach */;
("775","7593823001154","MAYONESA GALON ALBRO 3,45g","38.88","270.20","10.00","VENTA *$10","COMPRA *$8,53","0","GAL","100.00","7593823001154","1.0000","2022-12-20 12:12:02","2022-12-20 12:12:02"),/*soy foreach */;
("776","7707238815316","MAYONESA GALON DIFFER 4kgs","170.10","243.18","9.00","VENTA *$9","COMPRA *$7,5x22680m","0","GAL","100.00","7707238815316","1.0000","2022-12-20 12:21:15","2023-02-03 07:38:57"),/*soy foreach */;
("777","719503030062","MAYONESA GALON MAVESA 3,6","691.34","783.58","29.00","VENTA *$29","COMPRA *$25,39x26860m","0","GAL","6.00","719503030062","1.0000","2022-12-20 12:28:37","2023-06-09 14:23:52"),/*soy foreach */;
("778","7594003321284","MAYONESA GALON QUIDY 3,350","231.31","351.26","13.00","VENTA *$13","COMPRA *$11,40x9980m","0","GAL","100.00","7594003321284","1.0000","2022-12-20 12:30:32","2023-01-20 11:28:11"),/*soy foreach */;
("779","0262","MAYONESA KRAFT 1X12X445","907.33","1215.90","45.00","VENTA *$45","COMPRA *$40,56x22370","0","CAJ","100.00","0262","1.0000","2022-12-20 12:32:45","2023-02-01 12:45:25"),/*soy foreach */;
("780","7591114040042","MAYONESA KRAFT 445GS","75.61","106.73","3.95","VENTA *$3,95","COMPRA *$3,38x22370m","0","UND","100.00","7591114040042","1.0000","2022-12-20 12:34:26","2023-02-01 12:48:32"),/*soy foreach */;
("781","000032","CAFE AMANECER 10x5OO","1042.07","1242.92","46.00","VENTA *$46","COMPRA *$40,63x25650m","0","PCA","1.80","000032","1.0000","2022-12-21 06:54:50","2023-05-18 11:35:04"),/*soy foreach */;
("782","1247","CAFE AMANECER 24x2OO","1000.50","1188.88","44.00","VENTA *$44","COMPRA *$39x25650m","0","PAC","1.92","1247","1.0000","2022-12-21 07:04:22","2023-05-18 11:35:04"),/*soy foreach */;
("783","7595461000049","CAFE AMANECER 200gs","41.68","53.77","1.99","VENTA *$1,99","COMPRA *$1,63x25650m","0","UND","1000.00","1247","0.0417","2022-12-21 07:08:54","2023-05-18 11:16:28"),/*soy foreach */;
("784","7595461000032","CAFE AMANECER 500gs","104.21","133.75","4.95","VENTA *$4,95","COMPRA *$4,06x25650m","0","UND","1000.00","000032","0.1000","2022-12-21 07:12:37","2023-05-18 11:17:46"),/*soy foreach */;
("785","7593990000257","PLAFON DE PORCELANAS X UNDS","12.14","40.53","1.50","VENTA *$1,50","COMPRA *$0,77x15770m","0","UND","100.00","7593990000257","1.0000","2022-12-21 08:11:36","2022-12-21 08:11:36"),/*soy foreach */;
("786","0906","MORTADELA PERDIGON PAVO 3,5-PZA","365.75","426.92","15.80","VENTA *$15.8","COMPRA *$13.75x2660m","0","PZA","6.50","0906","1.0000","2022-12-21 08:56:05","2023-06-05 10:32:54"),/*soy foreach */;
("787","0000118","MORTADELA PERDIGON PAVO REBA","104.50","129.70","4.80","VENTA *$4.8","COMPRA *$3,93x2660m","0","KGS","1000.00","0906","1.0000","2022-12-21 08:57:44","2023-06-05 10:34:25"),/*soy foreach */;
("788","7591221106273","SABROSEADOR IBERIA 180GS","38.51","52.42","1.94","VENTA *$2,25","COMPRA *$1,51x25440m","16","UND","999.00","7591221106273","1.0000","2022-12-21 09:06:38","2023-05-17 14:32:00"),/*soy foreach */;
("789","0340","PAPEL ALUMI M,K 1x24x5mts","328.82","675.50","25.00","VENTA *$25","COMPRA *$20,5x16040m","0","CAJ","100.00","0340","1.0000","2022-12-21 09:28:39","2022-12-21 09:28:39"),/*soy foreach */;
("790","6921131605817","PAPEL ALUMI M,K.Und 5mts","13.81","33.78","1.25","VENTA *$1,25","COMPRA *$0,85x16040m","0","UND","100.00","6921131605817","1.0000","2022-12-21 09:38:50","2022-12-21 09:38:50"),/*soy foreach */;
("791","7591221010679","OREGANO MOLIDO IBERIA FRASCO","26.79","60.52","2.24","VENTA *$2,6","COMPRA *$1,67x15770m","16","EST","100.00","7591221010679","1.0000","2022-12-21 09:42:29","2022-12-21 09:42:29"),/*soy foreach */;
("792","7591221010785","PIMIENTA N/IBERIA FRASCO","42.00","93.22","3.45","VENTA *$4","COMPRA *$2,67x15770m","16","EST","100.00","7591221010785","1.0000","2022-12-21 10:18:54","2022-12-21 10:18:54"),/*soy foreach */;
("793","7707385979015","SALSA TTE BOLSA DIFFER 3kg","108.07","135.10","5.00","VENTA *$5","COMPRA *$4,31x25060m","0","BOL","9.00","7707385979015","1.0000","2022-12-22 06:50:54","2023-05-08 12:45:08"),/*soy foreach */;
("794","7708969766038","SALSA TTE BOLSA L/IDEAL 4KG","178.88","216.16","8.00","VENTA *$8","COMPRA *$6,88x26mil","0","BOL","16.00","7708969766038","1.0000","2022-12-22 06:52:24","2023-05-23 08:18:33"),/*soy foreach */;
("795","02464101","SALSA TTE D/MONTE 680gs","19.35","77.01","2.85","VENTA *$3,30","COMPRA *$2,31x8390mi","16","UND","100.00","02464101","1.0000","2022-12-22 06:55:08","2022-12-22 06:55:08"),/*soy foreach */;
("796","7591902000104","SALSA TTE FRITZ 1kg","23.84","86.46","3.20","VENTA *$3,20","COMPRA *$2,67x8930m","0","UND","100.00","7591902000104","1.0000","2022-12-22 07:07:01","2022-12-22 07:07:01"),/*soy foreach */;
("797","7596817001079","SALSA TTE GALON DI NONNA","93.72","375.58","13.90","VENTA *$13,90","COMPRA *$11,5x5800mi","0","GAL","100.00","7596817001079","1.0000","2022-12-22 07:41:16","2022-12-22 07:41:16"),/*soy foreach */;
("798","7707238815118","SALSA TTE GALON DIFFER 4kg","146.28","182.39","6.75","VENTA *$6,75","COMPRA *$5,75x25440m","0","GAL","9.00","7707238815118","1.0000","2022-12-22 07:42:52","2023-05-13 11:34:27"),/*soy foreach */;
("799","7590006100024","SALSA TTE GALON PAMPERO","411.63","472.85","17.50","VENTA *$17,50","COMPRA *$15,32x26860m","0","GAL","7.00","7590006100024","1.0000","2022-12-22 07:44:17","2023-06-09 14:23:52"),/*soy foreach */;
("800","7594003321277","SALSA TTE GALON QUIDY 4KGS","182.61","279.66","10.35","VENTA *$12","COMPRA *$9x8930m","16","GAL","100.00","7594003321277","1.0000","2022-12-22 07:45:33","2023-01-20 11:30:51"),/*soy foreach */;
("801","0124","SALSA TTE HEINZ 1x24x198gs","47.81","472.85","17.50","VENTA *$20,3","COMPRA *$14,71x3250m","16","CAJ","100.00","0124","1.0000","2022-12-22 07:49:07","2022-12-22 07:49:07"),/*soy foreach */;
("802","01249","SALSA TTE L/CUMBRE 1X24X380G","105.79","605.79","22.42","VENTA *$26","COMPRA *$17,93x4490m","16","CAJ","100.00","01249","1.0000","2022-12-22 07:51:25","2022-12-22 07:51:25"),/*soy foreach */;
("803","7591112023061","SALSA TTE L/CUMBRE 380GS","102.15","32.69","1.21","VENTA *$1,40","COMPRA *$0,75x4490m","16","UND","100.00","7591112023061","1.0000","2022-12-22 07:53:00","2022-12-22 07:53:00"),/*soy foreach */;
("804","7891032011224","SALSA TTE OLE CATCHUP 1,1KG","157.63","104.03","3.85","VENTA *$3,85","COMPRA *$2,63x4020mi","0","UND","100.00","7891032011224","1.0000","2022-12-22 07:54:49","2022-12-22 07:54:49"),/*soy foreach */;
("805","0591","SALSA TTE BOLSA L/VIÑA 1kgs","67.03","79.17","2.93","VENTA *$2.93","COMPRA *$2,53x2646m","0","BOL","11.00","0591","1.0000","2022-12-22 07:56:20","2023-06-07 10:37:46"),/*soy foreach */;
("806","1318","SALSA TTE OLE CATCHUP 1X24X340G","122.28","756.56","28.00","VENTA *$28","COMPRA *$22,56x4640m","0","CAJ","100.00","1318","1.0000","2022-12-22 08:00:00","2022-12-22 08:00:00"),/*soy foreach */;
("807","7891032015796","SALSA TTE OLE CATCHUP 340GS","22.33","27.02","1.00","VENTA *$1","COMPRA *$0,92x4640m","0","UND","94.00","7891032015796","1.0000","2022-12-22 08:01:40","2023-03-30 08:33:37"),/*soy foreach */;
("808","7891032015109","MAYONESA BOLSA L/VIÑA 1kgs","78.94","93.22","3.45","VENTA *$3.45","COMPRA *$2.98x2660mi","0","BOL","11.00","7891032015109","1.0000","2022-12-22 08:03:08","2023-06-07 10:37:17"),/*soy foreach */;
("809","75919184","SALSA TTE PAMPERO 198gs","23.67","33.78","1.25","VENTA *$1,25","COMPRA *$1,04x26860m","0","UND","1000.00","1434","0.0420","2022-12-22 08:06:02","2023-06-09 14:01:56"),/*soy foreach */;
("810","1434","SALSA TTE PAMPERO 1X24X198GS","568.13","756.56","28.00","VENTA *$28","COMPRA *$25,05x26860","0","CAJ","-0.04","1434","1.0000","2022-12-22 08:10:41","2023-06-09 14:23:53"),/*soy foreach */;
("811","0151","SALSA TTE PAMPERO 1X24X397gs","961.63","1188.88","44.00","VENTA *$44","COMPRA *$39,25x26860m","0","CAJ","-0.24","0151","1.0000","2022-12-22 08:11:52","2023-06-10 08:52:00"),/*soy foreach */;
("812","75919191","SALSA TTE PAMPERO 397gs","40.07","53.77","1.99","VENTA *$1,99","COMPRA *$1,64x26860m","0","UND","1000.00","0151","0.0420","2022-12-22 08:13:06","2023-06-09 13:59:23"),/*soy foreach */;
("813","0000184","SALSA TTE T/FLORES 1X24X397GS","184.76","955.16","35.35","VENTA *$41","COMPRA *$31,91x5790m","16","BTO","100.00","0000184","1.0000","2022-12-22 08:14:34","2022-12-22 08:14:34"),/*soy foreach */;
("814","75919740","SALSA TTE T/FLORES 397GS","7.75","43.23","1.60","VENTA *$1,85","COMPRA *$1,33x5790mi","16","UND","100.00","75919740","1.0000","2022-12-22 08:16:13","2022-12-22 08:16:13"),/*soy foreach */;
("815","7591098800694","SERVILLETAS \"Z\" GDE 1X250","3.51","39.72","1.47","VENTA *$1,70","COMPRA *$1,18x5970mi","16","UND","100.00","7591098800694","1.0000","2022-12-22 08:27:24","2022-12-22 08:27:24"),/*soy foreach */;
("816","SER64","SERVILLETAS \"Z\" GDE.1X16X250","56.08","582.55","21.56","VENTA *$25","COMPRA *$18,87x5970m","16","BTO","100.00","SER64","1.0000","2022-12-22 08:29:27","2022-12-22 08:29:27"),/*soy foreach */;
("817","1327","SERVILLETAS BRILUX 1X12X250","29.65","207.51","7.68","VENTA *$8,9","COMPRA *$6,66x4458mi","16","BTO","100.00","1327","1.0000","2022-12-22 08:55:34","2022-12-22 08:55:34"),/*soy foreach */;
("818","7591922002232","SERVILLETAS BRILUX PEQ.1X250","2.47","28.10","1.04","VENTA *$1,2","COMPRA *$0,56x4450mi","16","UND","100.00","7591922002232","1.0000","2022-12-22 08:57:26","2022-12-22 08:57:26"),/*soy foreach */;
("819","0000002","SERVILLETAS GDE HOUSEHOLD 1X12X12O","382.98","442.59","16.38","VENTA *$19","COMPRA *$14,73x5970m","16","BTO","1.00","0000002","1.0000","2022-12-22 08:59:10","2023-05-22 10:36:36"),/*soy foreach */;
("820","7591098330382","SERVILLETAS GDE.HOUSEHOLD UNDS","31.91","45.66","1.69","VENTA *$1,95","COMPRA *$1,23x5970mi","16","UND","1000.00","0000002","0.0840","2022-12-22 09:00:39","2023-05-22 10:39:14"),/*soy foreach */;
("821","7591127503527","JUGO DEL VALLE 1,5lts","34.72","45.66","1.69","VENTA *$1,95","COMPRA *$1,38x25120m","16","CAJ","1000.00","1498","0.1670","2022-12-22 12:34:00","2023-05-10 13:00:53"),/*soy foreach */;
("822","0009","LECHE VILLA LACTEA 24x400","1471.88","1837.36","68.00","VENTA *$68","COMPRA *$61,15x24070m","0","BTO","0.42","0009","1.0000","2022-12-22 13:00:16","2023-03-28 12:08:44"),/*soy foreach */;
("823","7592433001981","LECHE VILLA LACTEA 400gs","61.33","81.06","3.00","VENTA *$3","COMPRA *$2,55x24070m","0","UND","1000.00","0009","0.0417","2022-12-22 13:05:09","2023-03-21 13:24:00"),/*soy foreach */;
("824","0271","JUGO DEL VALLE 12x500","230.49","279.66","10.35","VENTA *$12","COMPRA *$9,18x25120m","16","CAJ","-1.16","0271","1.0000","2022-12-23 06:35:52","2023-05-11 07:48:39"),/*soy foreach */;
("825","7591127501868","JUGO DEL VALLE 500","19.21","25.13","0.93","VENTA *$1,07","COMPRA *$0,76x25120m","16","UND","1000.00","0271","0.0840","2022-12-23 06:40:41","2023-05-10 13:02:54"),/*soy foreach */;
("826","7896593500026","HARINA TRIGO D/MARIA 1KG","31.76","39.18","1.45","VENTA*$1,45","COMPRA*$1,15x24730m","0","UND","1000.00","1422","0.1000","2022-12-23 09:58:51","2023-06-02 13:22:57"),/*soy foreach */;
("827","719503030123","MAYONESA MAVESA 445g","77.99","103.76","3.84","VENTA *$3,84","COMPRA *$3,18x26860m","0","UND","1000.00","0258","0.0840","2022-12-23 10:14:12","2023-06-09 13:53:24"),/*soy foreach */;
("828","7702993030073","CARAMELOS LOKIÑO SURT.1X100","43.42","56.74","2.10","VENTA*$2,10","COMPRA*$1,67x26000m","0","BOL","20.00","7702993030073","1.0000","2022-12-23 12:32:28","2023-06-01 09:24:10"),/*soy foreach */;
("829","7702993017456","CARAMELOS LOKIÑO EN BARRA 1X50","47.87","58.09","2.15","VENTA*$2,15","COMPRA *$1,56x24300m","0","BOL","6.00","7702993017456","1.0000","2022-12-23 12:36:13","2023-06-01 09:24:10"),/*soy foreach */;
("830","7591016008690","NESCAFE VAINILLA 1,3kg","842.19","1053.78","39.00","VENTA *$39","COMPRA *$33,22x25350m","0","BOL","3.00","7591016008690","1.0000","2022-12-23 12:59:34","2023-05-16 07:22:50"),/*soy foreach */;
("831","1371","PAPEL (BOBINA)P/EMPAQUETADORA","601.68","945.70","35.00","VENTA *$35","COMPRA *$23x26160m","0","ROY","31.00","1371","1.0000","2022-12-24 07:47:38","2023-06-03 13:27:25"),/*soy foreach */;
("832","7591559000366","PAPEL ALUMI ALNAFOL Unds. 6,7mts","0.00","41.88","1.55","VENTA *$1,55","COMPRA *$1,17x5900m","0","UND","100.00","7591559000366","1.0000","2022-12-24 07:51:36","2022-12-24 07:51:36"),/*soy foreach */;
("833","1480","PAPEL ENVOLVER 1 KILO","74.36","108.08","4.00","VENTA *$4","COMPRA *$3,03x24500m","0","KIL","1000.00","0880","0.2500","2022-12-24 07:56:42","2023-04-14 11:47:43"),/*soy foreach */;
("834","0880","PAPEL ENVOLVER BTO 1X4kgs","297.43","405.30","15.00","VENTA *$15","COMPRA *$12,14x24500m","0","BTO","30.00","0880","1.0000","2022-12-24 08:03:45","2023-04-14 11:49:51"),/*soy foreach */;
("835","7591371290099","PAPEL ENVO-PLAST ALUMWARE 30mts","12.04","93.22","3.45","VENTA *$4","COMPRA *$2,15x5610mi","16","PAQ","100.00","7591371290099","1.0000","2022-12-24 08:06:11","2022-12-24 08:06:11"),/*soy foreach */;
("836","0405","PAPEL HIG HORECA 1X16X2","110.34","351.26","13.00","VENTA *$13","COMPRA *$6x4600mil","0","EST","100.00","0405","1.0000","2022-12-24 08:09:36","2023-01-10 11:19:26"),/*soy foreach */;
("837","7898934651046","PAPEL HIG HORECA 1X2","1.73","27.02","1.00","VENTA *$1","COMPRA *$0,81x4580mi","0","EST","88.00","7898934651046","1.0000","2022-12-24 08:15:17","2023-05-08 11:11:58"),/*soy foreach */;
("838","LEC02","PAPEL HIG PERLA 12X4","30.35","205.08","7.59","VENTA *$8,80","COMPRA *$6,67x4400mi","16","BTO","100.00","LEC02","1.0000","2022-12-24 08:29:25","2022-12-24 08:29:25");/*soy foreach */;
INSERT INTO productos VALUES
("839","7591098180215","PAPEL HIG PERLA 1X4","2.53","17.83","0.66","VENTA *$0,77","COMPRA *$0,56x4400mi","16","EST","100.00","7591098180215","1.0000","2022-12-24 08:47:28","2022-12-24 08:47:28"),/*soy foreach */;
("840","01211","PAPEL HIG ROSAL VI/TINTO 12X4","80.80","419.35","15.52","VENTA *$18","COMPRA *$13,53x5970m","16","BTO","100.00","01211","1.0000","2022-12-24 08:54:56","2022-12-24 08:54:56"),/*soy foreach */;
("841","7591098170279","PAPEL HIG ROSAL VI/TINTO 1x4","0.00","39.72","1.47","VENTA *$1,7","COMPRA *$1,13x5970mi","16","PAQ","99.00","7591098170279","1.0000","2022-12-24 08:56:39","2023-05-09 08:15:11"),/*soy foreach */;
("842","1411","PAPEL HIG SPRING SOFT 1X12X4","71.65","465.82","17.24","VENTA *$20","COMPRA *$15,58x4600m","16","BTO","100.00","1411","1.0000","2022-12-24 08:57:55","2022-12-24 08:57:55"),/*soy foreach */;
("843","7591098800656","PAPEL HIG SPRING SOFT 1X4","5.97","45.39","1.68","VENTA *$1,95","COMPRA *$1,30x4600mi","16","PAQ","99.00","7591098800656","1.0000","2022-12-24 09:12:33","2023-06-07 08:05:43"),/*soy foreach */;
("844","0258","MAYONESA MAVESA 1X12X445","689.26","1188.88","44.00","VENTA *$44","COMPRA *$38,20x26860m","0","CAJ","1.68","0258","1.0000","2022-12-24 11:32:56","2023-06-09 14:23:52"),/*soy foreach */;
("845","0528","MAYONESA MAVESA 1X6X91O","879.55","1107.82","41.00","VENTA *$41","COMPRA *$35,9x26860m","0","CJA","0.83","0528","1.0000","2022-12-24 11:40:58","2023-06-09 14:23:52"),/*soy foreach */;
("846","719503030185","MAYONESA MAVESA 91Ogs","146.59","202.65","7.50","VENTA *$7,50","COMPRA *$5,98x26860m","0","UND","1000.00","0528","0.1670","2022-12-24 11:43:44","2023-06-09 13:43:44"),/*soy foreach */;
("847","7591002300074","PERRARINA SUPER CAN 1X18KG","817.28","1053.78","39.00","VENTA *$39","COMPRA *$33,55x24360m","0","SCO","100.00","7591002300074","1.0000","2022-12-24 11:50:28","2023-03-01 06:43:36"),/*soy foreach */;
("848","1358","QUESO BLANCO LLANERO","125.15","113.48","4.20","VENTA *$4.2","COMPRA *$3.9x26000m","0","KIL","32.39","1358","1.0000","2022-12-24 12:38:02","2023-06-10 08:52:00"),/*soy foreach */;
("849","7709285313579","PAPAS Big Burger 200gs","11.51","16.75","0.62","VENTA *$0,62","COMPRA *$0,73x5800","0","PAQ","10.00","7709285313579","1.0000","2022-12-26 06:29:59","2023-03-10 11:14:44"),/*soy foreach */;
("850","7709981315778","PAPAS BIG BURGER 500gs","11.48","48.64","1.80","VENTA *$1,80","COMPRA *$1,40x8200m","0","PAQ","100.00","7709981315778","1.0000","2022-12-26 06:31:14","2023-02-07 06:51:58"),/*soy foreach */;
("851","7709981315792","PAPAS BIG BURGER 900gs","17.34","98.62","3.65","VENTA *$3,65","COMPRA *$3x5500mil","0","PAQ","100.00","7709981315792","1.0000","2022-12-26 06:32:17","2022-12-26 06:32:17"),/*soy foreach */;
("852","5412508015690","PAPAS CONGELADA x 1KILO","80.27","108.08","4.00","VENTA *$4","COMPRA *$3,32x24170m","0","BOL","9.00","5412508015690","1.0000","2022-12-26 06:33:37","2023-03-13 11:40:27"),/*soy foreach */;
("853","7592763000258","PAPAS P/P-MARLY 160GS","35.00","40.80","1.51","VENTA *$1,51","COMPRA *$1,75x5420mi","0","PAQ","14.00","7592763000258","1.0000","2022-12-26 06:35:52","2023-05-16 11:28:46"),/*soy foreach */;
("854","7592763000500","PAPAS P/P-MARLY 1KG","25.74","148.61","5.50","VENTA *$5,50","COMPRA *$4,75x5420mi","0","PAQ","100.00","7592763000500","1.0000","2022-12-26 06:37:05","2022-12-26 06:37:05"),/*soy foreach */;
("855","7592763000227","PAPAS P/P-MARLY 500GS","12.45","108.08","4.00","VENTA *$4","COMPRA *$3x4150mil","0","PAQ","100.00","7592763000227","1.0000","2022-12-26 06:38:47","2022-12-26 06:38:47"),/*soy foreach */;
("858","0000011","QUESO AMARILLO SELLO ROJO ENT","67.39","270.20","10.00","VENTA *$10","COMPRA *$8,32x8000mi","0","KGS","100.00","0000011","1.0000","2022-12-26 07:24:20","2022-12-26 07:24:20"),/*soy foreach */;
("859","6895460003326","QUESO C/GABY QUENACA 250GS","22.41","97.81","3.62","VENTA *$4,20","COMPRA *$2,61x8590m","16","UND","100.00","6895460003326","1.0000","2022-12-26 07:27:44","2022-12-26 07:27:44"),/*soy foreach */;
("860","0277","QUESO CREMA GABY A/GRANEL 24x250","351.36","1810.34","67.00","VENTA *$67","COMPRA *$43,92x8000m","0","CAJ","100.00","0277","1.0000","2022-12-26 07:31:43","2022-12-26 07:31:43"),/*soy foreach */;
("861","18045680724","QUESO D/AÑO EL ROROS 180g","63.45","99.70","3.69","VENTA *$3,69","COMPRA *$2,92x21730m","0","POT","95.00","18045680724","1.0000","2022-12-26 07:35:01","2023-05-13 11:34:27"),/*soy foreach */;
("862","7591902001354","QUESO D/AÑO FRITZ 18OGS","16.28","79.71","2.95","VENTA *$2,95","COMPRA *$2x8140m","0","POT","100.00","7591902001354","1.0000","2022-12-26 07:37:04","2022-12-26 07:37:04"),/*soy foreach */;
("863","0313","QUESO D/AÑO ZEDEÑO X KIL","200.26","378.28","14.00","VENTA *$14","COMPRA *$8,13x24630m","0","KIL","13.00","0313","1.0000","2022-12-26 07:41:20","2023-04-29 12:27:16"),/*soy foreach */;
("864","1221","QUESO DE MANO X kg","109.76","116.19","4.30","VENTA *$4.3","COMPRA *$4x26000m","0","KIL","19.00","1221","1.0000","2022-12-26 07:43:31","2023-06-01 10:58:04"),/*soy foreach */;
("865","0845","DETERG.TRES ENE 1x12x1kg","449.86","559.04","20.69","VENTA *$24","COMPRA *$18,25x24565m","16","BTO","3.00","0845","1.0000","2022-12-26 07:45:31","2023-04-25 07:32:19"),/*soy foreach */;
("866","1083","QUESO PARMESANO E/TINA 100GS","17.82","99.97","3.70","VENTA *$3,70","COMPRA *$2,20x8100m","0","TIN","100.00","1083","1.0000","2022-12-26 07:48:33","2022-12-26 07:48:33"),/*soy foreach */;
("867","000107","QUESO AMARILLO ENMANEL ENT","218.73","270.20","10.00","VENTA *$10","COMPRA *$8,88x24730m","0","KGS","30.00","000107","1.0000","2022-12-26 07:52:01","2023-04-29 12:15:19"),/*soy foreach */;
("870","8411916072517","PIÑAS E/RUEDAS MIMO 560GS","18.52","157.26","5.82","VENTA *$6,75","COMPRA *$4,07x460mil","16","UND","100.00","8411916072517","1.0000","2022-12-26 09:11:23","2022-12-26 09:11:23"),/*soy foreach */;
("871","024000167143","MELOCOTONES D/MONTE 432gs","14.89","103.76","3.84","VENTA *$4,45","COMPRA *$2,91x5012mi","16","UND","100.00","024000167143","1.0000","2022-12-26 09:12:57","2022-12-26 09:12:57"),/*soy foreach */;
("872","7596245000019","PALMITOS E/TROZO PALMO 400GS","11.51","102.68","3.80","VENTA *$4,4","COMPRA *$2,74x4200mi","16","UND","100.00","7596245000019","1.0000","2022-12-26 09:15:17","2022-12-26 09:15:17"),/*soy foreach */;
("873","7596245000040","PALMITOS ENTERO PALMO 400GS","11.51","102.68","3.80","VENTA *$4,4","COMPRA *$2,74x460mi","16","UND","100.00","7596245000040","1.0000","2022-12-26 09:16:46","2022-12-26 09:16:46"),/*soy foreach */;
("874","7592723104330","CARAOTAS NEGRAS LATA 220GS","5.16","40.53","1.50","VENTA *$1,5","COMPRA *$1,11x4080mi","0","UND","100.00","7592723104330","1.0000","2022-12-26 09:18:26","2022-12-26 09:18:26"),/*soy foreach */;
("875","024000013150","GUISANTES D/MONTE 240gs","42.47","59.44","2.20","VENTA *$2,55","COMPRA *$1,73x24490mi","16","UND","14.00","024000013150","1.0000","2022-12-26 09:21:25","2023-03-31 11:16:20"),/*soy foreach */;
("876","024000013204","GUISANTES C/ZANAHO D/MONTE 241g","11.78","77.55","2.87","VENTA *$3,32","COMPRA *$2,30x5012mi","16","CAJ","100.00","024000013204","1.0000","2022-12-26 09:23:47","2022-12-26 09:23:47"),/*soy foreach */;
("877","024000014409","MAIZ ENTERO D/MONTE 248gs","34.04","45.66","1.69","VENTA *$1,95","COMPRA *$1,39x24490mi","16","UND","14.00","024000014409","1.0000","2022-12-26 09:25:49","2023-03-31 11:16:20"),/*soy foreach */;
("878","7595826005207","ACEITUNA OSOLE C/S 240gs","28.80","36.48","1.35","VENTA *$1,35","COMPRA *$1,19x4020m","0","UND","100.00","7595826005207","1.0000","2022-12-26 09:27:53","2023-02-11 07:11:12"),/*soy foreach */;
("879","0099","ACEITUNA OSOLE RELLENA 1X12X34O","82.25","621.46","23.00","VENTA *$23","COMPRA *$17,88x4020m","0","CJA","100.00","0099","1.0000","2022-12-26 09:29:02","2022-12-26 09:29:02"),/*soy foreach */;
("880","7595826005276","ACEITUNA OSOLE RELLENA 34OGS","36.06","51.34","1.90","VENTA *$1,9","COMPRA *$1,49x4020mi","0","UND","100.00","7595826005276","1.0000","2022-12-26 09:30:48","2023-02-11 07:13:19"),/*soy foreach */;
("881","7595826004781","FRIJOL BLANCO E/LATA OSOLE 380gs","4.07","29.72","1.10","VENTA *$1,10","COMPRA *$0,75x5420mi","0","PAQ","100.00","7595826004781","1.0000","2022-12-26 09:32:07","2022-12-26 09:32:07"),/*soy foreach */;
("882","7595826004798","FRIJOL ROJO E/LATA OSOLE 380g","4.07","29.72","1.10","VENTA *$1,10","COMPRA *$0,75x5420mi","0","PAQ","100.00","7595826004798","1.0000","2022-12-26 09:33:24","2022-12-26 09:33:24"),/*soy foreach */;
("883","7595826004774","GARBANZO E/LATA OSOLE 380gs","4.07","29.72","1.10","VENTA *$1,10","COMPRA *$0,75x5420mi","0","PAQ","100.00","7595826004774","1.0000","2022-12-26 09:57:22","2022-12-26 09:57:22"),/*soy foreach */;
("884","0153","GUISANTES C/ZANAHO OSOLE 24X300G","78.62","864.64","32.00","VENTA *$32","COMPRA *$17,28x3150m","0","CJA","100.00","0153","1.0000","2022-12-26 09:58:23","2022-12-26 09:58:23"),/*soy foreach */;
("885","7595826004750","GUISANTES C/ZANAHO OSOLE 300G","4.48","41.88","1.55","VENTA *$1,55","COMPRA *$0,87x4600mi","0","CAJ","100.00","7595826004750","1.0000","2022-12-26 09:59:35","2022-12-26 09:59:35"),/*soy foreach */;
("886","000061","GUISANTES OSOLE 24X300","107.53","783.58","29.00","VENTA *$29","COMPRA *$20,88x4600m","0","CAJ","100.00","000061","1.0000","2022-12-26 10:00:52","2022-12-26 10:00:52"),/*soy foreach */;
("887","7595826004675","GUISANTES OSOLE 300GS","0.00","41.88","1.55","VENTA *$1,55","COMPRA *$0,87x4600mi","0","CAJ","99.00","7595826004675","1.0000","2022-12-26 10:02:00","2022-12-31 07:55:32"),/*soy foreach */;
("888","7595826004811","LENTEJAS E/LATA OSOLE 380gs","4.07","29.72","1.10","VENTA *$1,10","COMPRA *$0,74x5420mi","0","PAQ","100.00","7595826004811","1.0000","2022-12-26 10:03:11","2022-12-26 10:03:11"),/*soy foreach */;
("889","7595826004736","MAIZ C/GUISANTE OSOLE 300GS","3.40","44.58","1.65","VENTA *$1,65","COMPRA *$0,74x3150mi","0","UND","100.00","7595826004736","1.0000","2022-12-26 10:04:15","2022-12-26 10:04:15"),/*soy foreach */;
("890","1091","MAIZ ENTERO OSOLE 24X300GS","104.23","783.58","29.00","VENTA *$29","COMPRA *$22,56x4620m","0","CAJ","100.00","1091","1.0000","2022-12-26 10:05:26","2022-12-26 10:05:26"),/*soy foreach */;
("891","7595826004705","MAIZ ENTERO OSOLE 300GS","34.15","47.56","1.76","VENTA *$1,76","COMPRA *$1,40x24390m","0","UND","100.00","7595826004705","1.0000","2022-12-26 10:07:18","2023-02-18 09:00:01"),/*soy foreach */;
("892","1193","SALSA P/PASTA OSOLE 1X24X340GS","140.49","810.60","30.00","SALSA P/PASTA OSOLE 1X24X340GS","COMPRA *$25,92x5420m","0","CAJ","100.00","1193","1.0000","2022-12-26 10:08:25","2022-12-26 10:08:25"),/*soy foreach */;
("893","7595826003951","SALSA P/PASTA OSOLE 340GS","140.49","37.83","1.40","VENTA *$1,40","COMPRA *$1,08x5420mi","0","UND","96.00","7595826003951","1.0000","2022-12-26 10:09:28","2023-05-16 09:35:36"),/*soy foreach */;
("894","GALL22","SALSA P/PZZA OSOLE 1X24X340GS","743.41","918.68","34.00","VENTA *$34","COMPRA *$30,48x24390","0","CAJ","100.00","GALL22","1.0000","2022-12-26 10:10:33","2023-02-18 08:19:59"),/*soy foreach */;
("895","7891032015734","SALSA P/PZZA OSOLE 340GS","30.98","43.23","1.60","VENTA*$1,60","P/PIZZA*$1,27x24390m","0","UND","100.00","7891032015734","1.0000","2022-12-26 10:11:39","2023-02-18 08:23:50"),/*soy foreach */;
("896","1352","VEGETALES MIXTOS OSOLE 24X300G","104.68","756.56","28.00","VENTA *$28","COMPRA *$22,56x4640m","0","CAJ","100.00","1352","1.0000","2022-12-26 10:12:50","2022-12-26 10:12:50"),/*soy foreach */;
("897","7595826004743","VEGETALES MIXTOS OSOLE 300GS","4.36","43.23","1.60","VENTA *$1,60","COMPRA *$0,94x4640mi","0","UND","100.00","7595826004743","1.0000","2022-12-26 10:14:03","2022-12-26 10:14:03"),/*soy foreach */;
("898","7591016204764","NESTUN ARROZ SOBRE 225gs","45.01","51.34","1.90","VENTA *$2,20","COMPRA *$1,86x4380mi","16","UND","100.00","7591016204764","1.0000","2022-12-26 11:17:18","2023-02-11 06:45:13"),/*soy foreach */;
("899","7891000107263","LECHE COND NESTLE 397GR","11.28","89.17","3.30","VENTA *$3,30","COMPRA *$2,51x4490mi","0","UND","82.00","7891000107263","1.0000","2022-12-26 11:20:02","2023-04-28 13:50:58"),/*soy foreach */;
("900","0091952051974","LECHE COND WEPA 397gs","11.42","82.41","3.05","VENTA *$3,05","COMPRA *$2,15x5310mi","0","UND","97.00","0091952051974","1.0000","2022-12-26 11:21:53","2023-05-27 08:27:17"),/*soy foreach */;
("901","7613036653404","LECHE EVAPORADA NESTLE 371gs","56.53","71.60","2.65","VENTA *$2,65","COMPRA *$2,23x25350mi","0","UND","12.00","7613036653404","1.0000","2022-12-26 11:23:27","2023-05-16 07:22:50"),/*soy foreach */;
("902","7591016205280","LECHE LA CAMPESINA 800GS","250.20","297.22","11.00","VENTA *$11","COMPRA *$9,87x25350m","0","UND","3.00","7591016205280","1.0000","2022-12-26 11:25:01","2023-05-16 07:22:50"),/*soy foreach */;
("903","7591014011661","LECHE LA CAMPIÑA 900GS","48.67","299.11","11.07","VENTA *$11,07","COMPRA *$9,45x5150mi","0","UND","100.00","7591014011661","1.0000","2022-12-26 11:41:32","2022-12-26 11:41:32"),/*soy foreach */;
("904","7591695002095","LACTOVIGOR 900gs","88.25","135.10","5.00","VENTA *$5","COMPRA *$3,67x24070m","0","UND","1000.00","0019","0.0840","2022-12-26 11:42:44","2023-03-21 13:33:56"),/*soy foreach */;
("905","7591016203606","LECHE S/DESCREMADA SVELTY 400GS","37.30","193.19","7.15","VENTA *$7,15","COMPRA *$6,12x6180mi","0","UND","100.00","7591016203606","1.0000","2022-12-26 11:45:36","2022-12-26 11:45:36"),/*soy foreach */;
("906","CACH7","LECHE S/SIMON 12x400","327.11","1215.90","45.00","VENTA *$45","COMPRA *$39,94x8190m","0","BTO","100.00","CACH7","1.0000","2022-12-26 11:46:49","2022-12-26 11:46:49"),/*soy foreach */;
("907","0556","LECHE S/SIMON 12x900","735.95","2702.00","100.00","VENTA *$100","COMPRA *$89,86x8190m","0","BTO","100.00","0556","1.0000","2022-12-26 11:47:56","2022-12-26 11:47:56"),/*soy foreach */;
("908","7596914000371","LECHE S/SIMON 400gs","27.47","108.08","4.00","VENTA *$4","COMPRA *$3,33x8190m","0","UND","100.00","7596914000371","1.0000","2022-12-26 11:49:03","2022-12-26 11:49:03"),/*soy foreach */;
("909","7596914000388","LECHE S/SIMON 900gs","61.81","245.88","9.10","VENTA *$9,10","COMPRA *$7,49x8190m","0","UND","100.00","7596914000388","1.0000","2022-12-26 11:51:21","2022-12-26 11:51:21"),/*soy foreach */;
("910","0733","CEPILLOS P/BARRER GDE C/P 1X12","630.00","918.68","34.00","VENTA*$34","COMPRA*$29,8x8000mi","0","CAJ","100.00","0733","1.0000","2022-12-27 06:23:48","2023-02-01 07:20:37"),/*soy foreach */;
("911","7703763100194","CEPILLOS P/BARRER GDE C/P UNDS","52.51","83.76","3.10","VENTA *$3,10","COMPRA *$2,48x8000mi","0","UND","96.00","7703763100194","1.0000","2022-12-27 06:25:55","2023-04-03 10:28:47"),/*soy foreach */;
("912","0585","CEPILLOS P/BARRER PEQ.C/P 1X12","0.00","702.52","26.00","VENTA*$26","COMPRA*$17.76","0","CAJ","100.00","0585","1.0000","2022-12-27 06:28:19","2022-12-27 06:28:19"),/*soy foreach */;
("913","7591189000538","CEPILLOS P/BARRER PEQ.C/P UNDS","0.00","62.96","2.33","VENTA*$2.33","COMPRA*$1.48","0","UND","100.00","7591189000538","1.0000","2022-12-27 06:29:39","2022-12-27 06:29:39"),/*soy foreach */;
("914","0734","RASTRILLO GDE.C/PALO 1X12","580.19","864.64","32.00","VENTA *$32","COMPRA *$26,7x10810m","0","DOC","1.92","0734","1.0000","2022-12-27 06:33:50","2023-03-29 13:39:13"),/*soy foreach */;
("915","7591072001581","RASTRILLO GDE.C/PALO UNDS","48.35","81.06","3.00","VENTA *$3","COMPRA *$2,22x10810m","0","UND","100.00","0734","0.0840","2022-12-27 06:35:32","2023-03-29 13:30:24"),/*soy foreach */;
("916","00001","RASTRILLO PEQ.C/PALO 1X12","268.86","378.28","14.00","VENTA *$14","COMPRA *$11x24420mi","0","DOC","-0.32","00001","1.0000","2022-12-27 07:07:14","2023-04-11 10:11:23"),/*soy foreach */;
("917","7591206013213","RASTRILLO PEQ.C/PALO UNDS","22.40","35.13","1.30","VENTA *$1,30","COMPRA *$0,92x24420m","0","UND","1000.00","00001","0.0840","2022-12-27 07:08:22","2023-03-29 13:20:55"),/*soy foreach */;
("918","0000045","RICA CHICHA NESTLE 24X400","184.60","2004.88","74.20","VENTA *$74,2","COMPRA *$57,69x3200m","0","CAJ","100.00","0000045","1.0000","2022-12-27 07:37:29","2022-12-27 07:37:29"),/*soy foreach */;
("919","759101620253","RICA CHICHA NESTLE 400GS","7.62","70.25","2.60","VENTA *$2,6","COMPRA *$2,40x3200mi","0","UND","100.00","759101620253","1.0000","2022-12-27 07:38:51","2023-02-11 06:47:59"),/*soy foreach */;
("920","7591016203729","CERELAC 1X400GS","34.48","139.15","5.15","VENTA *$5,15","COMPRA *$4,12x8370mi","0","UND","100.00","7591016203729","1.0000","2022-12-27 07:40:22","2022-12-27 07:40:22"),/*soy foreach */;
("921","7591141221445","TELISTO 400gs","83.01","102.68","3.80","VENTA *$3,80","COMPRA *$3,43x4500mi","0","UND","100.00","7591141221445","1.0000","2022-12-27 07:41:37","2023-02-11 06:50:54"),/*soy foreach */;
("922","7591112061896","GELATINA SONRISA 66gs","6.09","36.75","1.36","VENTA *$1,36","COMPRA *$1,05x5800mi","0","UND","100.00","7591112061896","1.0000","2022-12-27 07:44:06","2022-12-27 07:44:06"),/*soy foreach */;
("923","0026","TODDY 1X12X2OO","712.95","891.66","33.00","VENTA *$33","COMPRA *$29,1x24500m","0","CJA","-0.08","0026","1.0000","2022-12-27 07:45:34","2023-03-31 12:55:16"),/*soy foreach */;
("924","7590006700019","TODDY 2OOGS","59.41","83.76","3.10","VENTA *$3,10","COMPRA *$2,43x24500m","0","UND","1000.00","0026","0.0840","2022-12-27 07:46:48","2023-03-31 12:53:50"),/*soy foreach */;
("925","0455","CAFE ANZOATEGUI 10x500","442.00","1486.10","55.00","VENTA *$55","COMPRA *$49,60x8930m","0","PAC","100.00","0455","1.0000","2022-12-27 07:49:33","2022-12-27 07:49:33"),/*soy foreach */;
("926","CACA","CAFE ANZOATEGUI 20x250","442.93","1486.10","55.00","VENTA *$55","COMPRA *$49,60x8830m","0","PAC","100.00","CACA","1.0000","2022-12-27 07:51:11","2022-12-27 07:51:11"),/*soy foreach */;
("927","7591052000627","CAFE ANZOATEGUI 250gs","22.14","79.71","2.95","VENTA *$2,95","COMPRA *$2,48x8930m","0","UND","100.00","7591052000627","1.0000","2022-12-27 07:52:37","2022-12-27 07:52:37"),/*soy foreach */;
("928","7591052000634","CAFE ANZOATEGUI 500gs","44.20","167.52","6.20","VENTA *$6,20","COMPRA *$4,96x8930m","0","UND","100.00","7591052000634","1.0000","2022-12-27 07:55:02","2022-12-27 07:55:02"),/*soy foreach */;
("929","CARTULINA1","CLORO KIK CLEAN 12x1","261.60","351.26","13.00","VENTA *$13","COMPRA *$10x26160m","0","CJA","4.00","CARTULINA1","1.0000","2022-12-27 08:01:55","2023-06-03 13:27:25"),/*soy foreach */;
("930","7591473005072","CARAOTAS NEGRAS MARY 250GS","2.55","18.91","0.70","VENTA *$0,70","COMPRA *$0,57x447mil","0","PAQ","100.00","7591473005072","1.0000","2022-12-27 08:04:33","2022-12-27 08:04:33"),/*soy foreach */;
("931","7591473005003","CARAOTAS NEGRAS MARY 400gs","8.93","35.13","1.30","VENTA *$1,30","COMPRA *$1x8730m","0","PAQ","100.00","7591473005003","1.0000","2022-12-27 08:08:26","2022-12-27 08:08:26"),/*soy foreach */;
("933","8005121006605","FRIJOL E/LATA DIVELLA 400gs","7.07","48.64","1.80","VENTA *$1,80","COMPRA *$1,38x5012mi","0","PAQ","100.00","8005121006605","1.0000","2022-12-27 10:25:00","2022-12-27 10:25:00"),/*soy foreach */;
("934","8005121006643","LENTEJAS LATA DIVELLA 400gs","7.07","48.64","1.80","VENTA *$1,80","COMPRA *$1,38x5012mi","0","PAQ","100.00","8005121006643","1.0000","2022-12-27 10:26:30","2022-12-27 10:26:30"),/*soy foreach */;
("935","7591016204504","SAZONATODO MAGGI 200GS","14.14","94.57","3.50","VENTA *$3,50","COMPRA *$2,32x6090mi","0","UND","100.00","7591016204504","1.0000","2022-12-27 10:28:48","2022-12-27 10:28:48"),/*soy foreach */;
("936","7591039601540","MAIZINA AMERICANA 4OOGS","53.24","66.47","2.46","VENTA *$2,85","COMPRA *$2,10x25350m","16","UND","5.00","7591039601540","1.0000","2022-12-27 10:30:09","2023-05-13 11:34:26"),/*soy foreach */;
("937","7591039657110","MAIZINA AMERICANA 2OOGS","31.58","40.53","1.50","VENTA *$1,50","COMPRA *$1,3x24300m","0","UND","9.00","7591039657110","1.0000","2022-12-27 10:31:27","2023-03-24 12:39:54"),/*soy foreach */;
("938","7591058250347","MANTECA COPOSA 400gs","9.69","67.55","2.50","VENTA *$2,50","COMPRA *$2,08x4650mi","0","UND","100.00","7591058250347","1.0000","2022-12-27 10:34:27","2022-12-27 10:34:27"),/*soy foreach */;
("939","719503006029","MANTEQUILLA BR/PRIMOR 1X12X5OO","113.05","567.42","21.00","VENTA *$21","COMPRA *$19x5950mil","0","CAJ","100.00","719503006029","1.0000","2022-12-27 10:36:03","2022-12-27 10:36:03"),/*soy foreach */;
("940","0555","MANTEQUILLA BR/PRIMOR 1X24X25O","149.15","567.42","21.00","VENTA *$21","COMPRA *$19x5950mi","0","CJA","100.00","0555","1.0000","2022-12-27 10:39:20","2022-12-27 10:39:20"),/*soy foreach */;
("941","7891080400605","MANTEQUILLA BR/PRIMOR 250gs","6.26","27.02","1.00","VENTA *$1","COMPRA *$0,79x5950mi","0","UND","100.00","7891080400605","1.0000","2022-12-27 10:40:41","2022-12-27 10:40:41"),/*soy foreach */;
("942","7891080400599","MANTEQUILLA BR/PRIMOR 500gs","9.49","52.69","1.95","VENTA *$1,95","COMPRA *$1,58x5950mi","0","UND","97.00","7891080400599","1.0000","2022-12-27 10:41:53","2022-12-31 10:20:32"),/*soy foreach */;
("943","7591854000887","MOSTAZA BOLSA L/VILLA 3,8kg","150.29","178.33","6.60","VENTA *$6.6","COMPRA *$5.68x26460m","0","BOL","19.00","7591854000887","1.0000","2022-12-27 10:43:16","2023-06-06 11:54:11");/*soy foreach */;
INSERT INTO productos VALUES
("944","7891000005422","CREMA D/LECHE NESTLE 300GS","62.11","79.44","2.94","VENTA *$3.4","COMPRA *$2,45x25350mi","16","UND","12.00","7891000005422","1.0000","2022-12-27 10:45:02","2023-05-16 07:22:50"),/*soy foreach */;
("945","7592433000991","CHOCO-COOL 400gs","20.01","71.06","2.63","VENTA *$3,05","COMPRA *$2,53x7910mi","16","UND","94.00","7592433000991","1.0000","2022-12-27 10:47:27","2023-04-11 09:14:38"),/*soy foreach */;
("946","7591695000855","CHOCO-RICO S/SIMON 400GS","18.73","77.01","2.85","VENTA *$3,30","COMPRA *$2,29x8180m","16","UND","100.00","7591695000855","1.0000","2022-12-27 10:48:48","2022-12-27 10:48:48"),/*soy foreach */;
("947","7591039997872","NATILLA A/RIVAS 250gs","13.67","93.22","3.45","VENTA *$3,45","COMPRA *$2,67x5012mi","0","UND","100.00","7591039997872","1.0000","2022-12-27 10:49:55","2022-12-27 10:49:55"),/*soy foreach */;
("948","7592450000189","AVENA AVELINA ENTER 800gs","52.96","75.66","2.80","VENTA *$2,80","COMPRA *$2,36x8730m","0","UND","0.00","7592450000189","1.0000","2022-12-27 10:51:20","2023-04-11 09:42:53"),/*soy foreach */;
("949","7591184000977","AVENA ENTER QUAKER 4OOGS","36.17","54.04","2.00","VENTA *$2","COMPRA *$1,59x22680m","0","UND","100.00","7591184000977","1.0000","2022-12-27 10:52:49","2023-02-04 06:55:37"),/*soy foreach */;
("950","7591184002056","AVENA MOLIDA QUAKER 4OOGS","33.03","54.04","2.00","VENTA *$2","COMPRA *$1,56x8660m","0","UND","100.00","7591184002056","1.0000","2022-12-27 10:54:25","2023-01-25 11:46:32"),/*soy foreach */;
("951","7591473006734","CREMA D/ARROZ MARY 45OGS","18.13","22.97","0.85","VENTA *$0,85","COMPRA *$0,74x24500m","0","UND","5.00","7591473006734","1.0000","2022-12-27 10:55:50","2023-03-31 08:04:23"),/*soy foreach */;
("952","7591002100117","CREMA D/ARROZ PRIMOR 45OGR","24.76","35.13","1.30","VENTA *$1,30","COMPRA *$1,09x22680m","0","UND","100.00","7591002100117","1.0000","2022-12-27 10:57:38","2023-02-04 06:57:41"),/*soy foreach */;
("953","7591902001460","PICANTINA FRITZ 25OGR","5.00","43.77","1.62","VENTA *$1,88","COMPRA *$1,22x3300","16","UND","100.00","7591902001460","1.0000","2022-12-27 10:59:19","2022-12-27 10:59:19"),/*soy foreach */;
("954","7591902001927","SALSA AHUMADITA FRITZ 24OGS","21.90","67.55","2.50","VENTA *$2,50","COMPRA *$1,95x11250m","0","UND","100.00","7591902001927","1.0000","2022-12-27 11:00:53","2022-12-27 11:00:53"),/*soy foreach */;
("955","7591902001477","SALSA CHEDDAR FRITZ 24OGS","18.98","74.30","2.75","VENTA *$2,75","COMPRA *$2,32x8180m","0","UND","100.00","7591902001477","1.0000","2022-12-27 11:02:00","2022-12-27 11:02:00"),/*soy foreach */;
("956","7591902001200","SALSA ROSADA FRITZ 260GS","15.52","48.10","1.78","VENTA *$1,78","COMPRA *$1,38x11250m","0","UND","100.00","7591902001200","1.0000","2022-12-27 11:04:29","2022-12-27 11:04:29"),/*soy foreach */;
("957","7707385970012","MOSTAZA BOLSA DIFFER 3kg","112.77","140.50","5.20","VENTA *$5,2","COMPRA *$4,50x25060m","0","BOL","10.00","7707385970012","1.0000","2022-12-27 11:05:40","2023-05-08 12:48:22"),/*soy foreach */;
("958","7591155000180","MOSTAZA GALON D/PEDRO 3,790GS","387.04","513.38","19.00","VENTA *$19","COMPRA *$15,87x24390","0","GAL","100.00","7591155000180","1.0000","2022-12-27 11:07:31","2023-02-17 22:18:00"),/*soy foreach */;
("959","7707385978056","MOSTAZA GALON DIFFER 4kg","39.35","162.12","6.00","VENTA *$6","COMPRA *$4,63x5800m","0","GAL","100.00","7707385978056","1.0000","2022-12-27 11:08:29","2022-12-27 11:08:29"),/*soy foreach */;
("960","7594003324100","MOSTAZA GALON QUIDYS 4KG","414.00","513.38","19.00","VENTA *$19","COMPRA *$18x6180m","0","UND","100.00","7594003324100","1.0000","2022-12-27 11:09:48","2023-02-09 11:29:11"),/*soy foreach */;
("961","7591112041041","MOSTAZA HEINZ 492GS","25.03","95.65","3.54","VENTA *$4,10","COMPRA *$2,98x8390mi","16","UND","100.00","7591112041041","1.0000","2022-12-27 11:11:26","2022-12-27 11:11:26"),/*soy foreach */;
("962","7591221106600","MOSTAZA IBERIA 185gs","27.63","37.02","1.37","VENTA *$1,59","COMPRA *$1.09x25440mi","16","UND","28.00","7591221106600","1.0000","2022-12-27 11:12:30","2023-05-17 14:32:00"),/*soy foreach */;
("963","7591221111468","MOSTAZA IBERIA TETER.250gs","35.27","47.83","1.77","VENTA *$2.05","COMPRA *$1,39x25440m","16","UND","99.00","7591221111468","1.0000","2022-12-27 11:48:46","2023-05-17 14:32:00"),/*soy foreach */;
("964","7594003323035","MOSTAZA QUIDYS 180gs","11.12","40.53","1.50","VENTA *$1,50","COMPRA *$1,39x6180mi","0","UND","100.00","7594003323035","1.0000","2022-12-27 11:49:50","2022-12-27 11:49:50"),/*soy foreach */;
("965","7594003324094","MOSTAZA QUIDYS 500gs","43.71","92.14","3.41","VENTA *$3,95","COMPRA *$2.64x16570m","16","UND","100.00","7594003324094","1.0000","2022-12-27 11:51:09","2022-12-30 07:38:25"),/*soy foreach */;
("966","7594003323059","MOSTAZA QUIDYS TETER. 260gs","6.34","46.74","1.73","VENTA *$2","COMPRA *$1,32x4800mi","16","CJA","100.00","7594003323059","1.0000","2022-12-27 11:52:34","2022-12-27 11:52:34"),/*soy foreach */;
("967","7501058640482","COMPOTAS GERBER Pqña 113gs","2.16","17.56","0.65","VENTA *$0,75","COMPRA *$0,49x4380mi","16","UND","100.00","7501058640482","1.0000","2022-12-28 07:28:25","2022-12-28 07:28:25"),/*soy foreach */;
("968","0001","COMPOTAS GERBER Pqña 1x24","51.43","345.86","12.80","VENTA *$14,84","COMPRA *$11,74x4380m","16","CAJ","100.00","0001","1.0000","2022-12-28 07:30:28","2022-12-28 07:30:28"),/*soy foreach */;
("969","7501058640758","COMPOTAS HEINZ PQEñA 113GS","2.72","19.72","0.73","VENTA *$0,84","COMPRA *$0,61x4490mi","16","UND","100.00","7501058640758","1.0000","2022-12-28 07:32:36","2022-12-28 07:32:36"),/*soy foreach */;
("970","PAST","PASTICHO SINDONI 1X12X250","133.40","499.87","18.50","VENTA *$18,5","COMPRA *$15,9x8390mi","0","BTO","100.00","PAST","1.0000","2022-12-28 07:39:13","2022-12-28 07:39:13"),/*soy foreach */;
("971","7591674001231","PASTICHO SINDONI 250GS","11.12","45.93","1.70","VENTA *$1,70","COMPRA *$1,33x8390mi","0","UND","100.00","7591674001231","1.0000","2022-12-28 07:41:52","2022-12-28 07:41:52"),/*soy foreach */;
("972","7592104000053","VAINILLA CALIFORNIA 1Lts","11.50","104.57","3.87","VENTA *$3,87","COMPRA *$2,5x4600mil","0","UND","100.00","7592104000053","1.0000","2022-12-28 07:43:39","2022-12-28 07:43:39"),/*soy foreach */;
("973","1317","VAINILLA GARDENIA 150GS","11.00","41.88","1.55","VENTA *$1,55","COMPRA *$1,12","0","UND","100.00","1317","1.0000","2022-12-28 07:45:06","2022-12-28 07:45:06"),/*soy foreach */;
("974","7594003321857","VINAGRE GALON QUIDY 4lts","38.68","142.13","5.26","VENTA *$6,10","COMPRA *$4,54x6180mi","16","GAL","100.00","7594003321857","1.0000","2022-12-28 07:47:33","2022-12-28 07:47:33"),/*soy foreach */;
("975","719503061035","VINAGRE MAVESA 1Lts","17.24","48.64","1.80","VENTA *$1,8","COMPRA *$1,52x11250","0","CAJ","100.00","719503061035","1.0000","2022-12-28 07:50:46","2022-12-28 07:50:46"),/*soy foreach */;
("976","0000052","VINAGRE MAVESA 1x12x1","205.31","540.40","20.00","VENTA *$20","COMPRA *$18,25x11250","0","CAJ","100.00","0000052","1.0000","2022-12-28 07:52:59","2022-12-28 07:52:59"),/*soy foreach */;
("977","1268","VINAGRE QUIDY 12X1","119.28","432.32","16.00","VENTA *$16","COMPRA *$14x8520m","0","CJA","100.00","1268","1.0000","2022-12-28 07:55:31","2022-12-28 07:55:31"),/*soy foreach */;
("978","7594003321840","VINAGRE QUIDY 1Lts","16.09","35.13","1.30","VENTA *$1,50","COMPRA *$0,94x16570m","16","UND","1000.00","1268","0.0840","2022-12-28 07:58:20","2023-03-30 08:46:59"),/*soy foreach */;
("979","1433","VINAGRE T/FLORES 1X24X5OO","75.88","489.33","18.11","VENTA *$21","COMPRA *$14x4490mil","16","CJA","100.00","1433","1.0000","2022-12-28 08:00:16","2022-12-28 08:00:16"),/*soy foreach */;
("980","7591112049016","VINAGRE T/FLORES 5OOGS","3.16","23.24","0.86","VENTA *$0,99","COMPRA *$0,59x4490mi","16","UND","100.00","7591112049016","1.0000","2022-12-28 08:01:18","2022-12-28 08:01:18"),/*soy foreach */;
("981","000035","ALIÑO CONCENTRADO D/CAMPO 1X24X200","129.58","915.44","33.88","VENTA *$39,3","COMPRA *$28,17x2862m","16","CAJ","100.00","000035","1.0000","2022-12-28 08:02:29","2022-12-28 08:02:29"),/*soy foreach */;
("982","7592458003038","ALI-O CONCENTRADO D/CAMPO 500GS","10.81","88.63","3.28","VENTA *$3,80","COMPRA *$2,35x2862mi","16","UND","100.00","7592458003038","1.0000","2022-12-28 08:03:41","2022-12-28 08:03:41"),/*soy foreach */;
("983","7592458003021","ALI-O CONCENTRADO D/CAMPO 200GS","5.44","44.31","1.64","VENTA *$1,90","COMPRA *$1,17x2862mi","16","UND","100.00","7592458003021","1.0000","2022-12-28 08:07:25","2022-12-28 08:07:25"),/*soy foreach */;
("984","7594003321420","SALSA D/AJO GALON QUIDY 3,65LT","183.50","232.91","8.62","VENTA *$10","COMPRA *$7,52x24420mi","16","GAL","1.00","7594003321420","1.0000","2022-12-28 08:11:13","2023-03-29 13:39:13"),/*soy foreach */;
("985","7591112037020","SALSA D/AJO HEINZ 300GR","4.50","37.56","1.39","VENTA *$1,61","COMPRA *$1,01x4490mi","16","UND","100.00","7591112037020","1.0000","2022-12-28 08:24:55","2022-12-28 08:24:55"),/*soy foreach */;
("986","0000083","SALSA D/AJO IBERIA 1X12X3OO","104.72","466.09","17.25","VENTA *$20","COMPRA *$16,68x6280m","16","CJA","100.00","0000083","1.0000","2022-12-28 08:26:04","2022-12-28 08:26:04"),/*soy foreach */;
("987","7591221281123","SALSA D/AJO IBERIA 300GR","38.87","50.26","1.86","VENTA *$2.15","COMPRA *$1,53x25440mi","16","UND","999.00","7591221281123","1.0000","2022-12-28 08:27:41","2023-05-17 14:32:00"),/*soy foreach */;
("988","7591141320100","SALSA D/AJO MAcCORMICK 150gs","8.83","35.13","1.30","VENTA *$1,30","COMPRA *$1x8830m","0","UND","100.00","7591141320100","1.0000","2022-12-28 08:28:57","2022-12-28 08:28:57"),/*soy foreach */;
("989","0000040","MAIZ P/COTUFA 1X20X500","211.70","351.26","13.00","VENTA *$13","COMPRA *$10x10230m","0","PAC","100.00","0000040","1.0000","2022-12-28 08:32:32","2023-02-14 10:07:07"),/*soy foreach */;
("990","7898324021152","MAIZ P/COTUFA 500gs","10.59","18.91","0.70","VENTA *$0,70","COMPRA *$0,50x10230m","0","UND","100.00","7898324021152","1.0000","2022-12-28 08:34:36","2023-02-14 10:04:19"),/*soy foreach */;
("991","7591141221315","SAL P/CARNES FRCO MACKORMI 105gs","10.53","79.71","2.95","VENTA *$2,95","COMPRA *$2,29x4600mi","0","FCO","100.00","7591141221315","1.0000","2022-12-28 08:35:37","2022-12-28 08:35:37"),/*soy foreach */;
("992","7591221031346","SAL P/CARNES FRCO IBERIA 125gs","6.24","55.39","2.05","VENTA *$2,37","COMPRA *$1,61x4490mi","16","FCO","100.00","7591221031346","1.0000","2022-12-28 08:36:54","2022-12-28 08:36:54"),/*soy foreach */;
("993","7591221010679","OREGANO MOLIDO IBERIA FRASCO","26.79","60.52","2.24","VENTA *$2,6","COMPRA *$1,67x15770m","16","EST","100.00","7591221010679","1.0000","2022-12-29 06:34:50","2022-12-29 06:34:50"),/*soy foreach */;
("994","0052","SABROSEADOR IBERIA 24X180","207.48","908.68","33.63","VENTA *$39","COMPRA *$33,04x6280m","16","CJA","100.00","0052","1.0000","2022-12-29 06:49:56","2022-12-29 06:49:56"),/*soy foreach */;
("995","8886467052781","SABROSEADOR KNORR 200gs","17.62","71.06","2.63","VENTA *$3,05","COMPRA *$2,10x8390m","16","UND","100.00","8886467052781","1.0000","2022-12-29 06:51:23","2022-12-29 06:51:23"),/*soy foreach */;
("996","7591221000052","SALSA P/PASTA IBERIA 190GS","29.50","39.72","1.47","VENTA *$1,7","COMPRA *$1,16x25440mi","16","UND","23.00","7591221000052","1.0000","2022-12-29 06:52:37","2023-05-17 14:32:01"),/*soy foreach */;
("998","7592723102527","PASSATA NATURALYST 530GS","9.59","81.60","3.02","VENTA *$3,50","COMPRA *$2,18x203m","16","UND","100.00","7592723102527","1.0000","2022-12-29 06:55:21","2022-12-29 06:55:21"),/*soy foreach */;
("999","1422","HARINA TRIGO D/MARIA 1X10X1","317.64","367.47","13.60","VENTA*$13.6","COMPRA*$11,5x24730m","0","PAC","55.30","1422","1.0000","2022-12-29 06:58:27","2023-06-02 13:25:46"),/*soy foreach */;
("1000","0573","HARINA TRIGO FINA 10x1","355.25","405.30","15.00","VENTA*$15","COMPRA*$14,5x20730mi","0","PAC","2.00","0573","1.0000","2022-12-29 06:59:59","2023-05-17 12:08:01"),/*soy foreach */;
("1001","1079","GUASACACA EVAPRI-CRIOLLA X12X150","75.77","430.97","15.95","VENTA *$18,5","COMPRA *$14x5420","16","CJA","100.00","1079","1.0000","2022-12-29 07:05:52","2022-12-29 07:05:52"),/*soy foreach */;
("1002","0758","GUASACACA EVAPRI-PICTE 12X150","75.77","430.97","15.95","VENTA *$18,5","COMPRA *$14x5420mil","16","CAJ","100.00","0758","1.0000","2022-12-29 07:07:15","2022-12-29 07:07:15"),/*soy foreach */;
("1003","7597031000497","GUASACACA EVAPRI-PICTE 150gs","13.71","40.80","1.51","VENTA *$1,75","COMPRA *$1,16x5420","16","UND","100.00","7597031000497","1.0000","2022-12-29 07:12:07","2022-12-29 07:12:07"),/*soy foreach */;
("1004","7591221044735","SALSA DE JENJIBRE IBERIA 150CM","3.06","27.02","1.00","VENTA *$1,15","COMPRA *$0,68x1800mi","16","UND","100.00","7591221044735","1.0000","2022-12-29 07:18:22","2022-12-29 07:18:22"),/*soy foreach */;
("1005","0000039","SALSA AMOSTAZADA  IBERIA 1X12X3OOC","218.04","256.42","9.49","VENTA *$11","COMPRA *$9,01x3133mi","16","CJA","100.00","0000039","1.0000","2022-12-29 07:20:21","2023-02-11 07:01:50"),/*soy foreach */;
("1006","0000198","SALSA AMOSTAZADA IBERIA 15OC","9.09","11.89","0.44","VENTA *$0,50","COMPRA *$0,38x3133mi","16","UND","100.00","0000198","1.0000","2022-12-29 07:22:10","2023-02-11 06:56:32"),/*soy foreach */;
("1007","MO-08","SALSA AMOSTAZADA IBERIA 1X24X15OC","218.04","256.42","9.49","VENTA *$11","COMPRA *$9,01x3133mi","16","CJA","100.00","MO-08","1.0000","2022-12-29 07:24:57","2023-02-11 06:59:21"),/*soy foreach */;
("1008","7591221054697","SALSA AMOSTAZADA IBERIA 3OOGR","18.17","23.51","0.87","VENTA *$1","COMPRA *$0,75x3133mi","16","UND","100.00","7591221054697","1.0000","2022-12-29 07:28:34","2023-02-11 06:52:53"),/*soy foreach */;
("1009","7594003321444","SALSA INGLESA GALON QUIDY 3,65LT","150.43","232.91","8.62","VENTA *$10","COMPRA *$6,16x8930m","16","GAL","1.00","7594003321444","1.0000","2022-12-29 07:30:00","2023-03-29 13:39:13"),/*soy foreach */;
("1010","0000084","SALSA INGLESA IBERIA 1X12X300","116.40","500.95","18.54","VENTA *$21,5","COMPRA *$18,54x6280m","16","CJA","100.00","0000084","1.0000","2022-12-29 07:31:27","2022-12-29 07:31:27"),/*soy foreach */;
("1011","7591141300102","SALSA INGLESA MAcCORMICK 150gs","8.83","35.13","1.30","VENTA *$1,30","COMPRA *$1x8830m","0","UND","100.00","7591141300102","1.0000","2022-12-29 07:32:30","2022-12-29 07:32:30"),/*soy foreach */;
("1012","7591221271100","SALSA INGLESA IBERIA 15OGR","19.59","27.02","1.00","VENTA *$1,15","COMPRA *$0,80x24360m","16","UND","100.00","7591221271100","1.0000","2022-12-29 07:35:43","2023-03-01 07:48:53"),/*soy foreach */;
("1013","0000064","SALSA INGLESA IBERIA 1X24X15O","470.24","582.55","21.56","VENTA *$25","COMPRA *$19,28x24390m","16","CJA","100.00","0000064","1.0000","2022-12-29 07:37:04","2023-03-01 07:53:49"),/*soy foreach */;
("1014","7591221120514","SALSA INGLESA IBERIA 3OOGR","9.70","46.74","1.73","VENTA *$2","COMPRA *$1,55x6280m","16","UND","100.00","7591221120514","1.0000","2022-12-29 07:38:23","2022-12-29 07:38:23"),/*soy foreach */;
("1015","7707385975529","SALSA BBQ BOLSA DIFFER 4kg","25.37","162.12","6.00","VENTA *$6","COMRA *$4,38","0","BOL","100.00","7707385975529","1.0000","2022-12-29 07:40:57","2022-12-29 07:40:57"),/*soy foreach */;
("1016","7591141102034","SALSA BBQ MAKCORMI 230ml","9.37","66.20","2.45","VENTA *$2,45","COMPRA *$1,83x5012mi","0","UND","100.00","7591141102034","1.0000","2022-12-29 07:44:17","2022-12-29 07:44:17"),/*soy foreach */;
("1017","7594003323073","SALSA BBQ QUIDY 195gs","4.54","29.18","1.08","VENTA *$1,25","COMPRA *$0,86x5310mi","16","UND","100.00","7594003323073","1.0000","2022-12-29 07:45:40","2022-12-29 07:45:40"),/*soy foreach */;
("1018","75930288","RIKESA 2OOgs","67.65","94.57","3.50","VENTA *$3,50","COMPRA *$2,76x26860mi","0","UND","16.00","75930288","1.0000","2022-12-29 07:46:49","2023-06-09 14:23:53"),/*soy foreach */;
("1019","7591221194652","SALSA SOYA GALON IBERIA 3,70LT","60.58","419.35","15.52","VENTA *$18","COMPRA *$12,37x4900m","16","GAL","100.00","7591221194652","1.0000","2022-12-29 07:47:52","2022-12-29 07:47:52"),/*soy foreach */;
("1020","GALL21","SALSA SOYA GALON QUIDY 3,65LT","150.43","232.91","8.62","VENTA *$10","COMPRA *$6,16x8930mi","16","GAL","7.00","GALL21","1.0000","2022-12-29 07:48:49","2023-03-29 13:39:13"),/*soy foreach */;
("1021","7591221271117","SALSA SOYA IBERIA 15OGS","19.54","27.02","1.00","VENTA *$1,15","COMPRA *$0,80x24390m","16","UND","99.00","7591221271117","1.0000","2022-12-29 07:50:06","2023-03-25 10:58:49"),/*soy foreach */;
("1022","0000089","SALSA SOYA IBERIA 1X12X3OO","117.66","512.57","18.97","VENTA *$22","COMPRA *$18,74x6280m","16","CJA","100.00","0000089","1.0000","2022-12-29 07:51:21","2022-12-29 07:51:21"),/*soy foreach */;
("1023","1448","SALSA SOYA IBERIA 1X24X15O","469.02","582.55","21.56","VENTA *$25","COMPRA *$19,23x24390m","16","CJA","100.00","1448","1.0000","2022-12-29 07:54:17","2023-03-01 07:59:56"),/*soy foreach */;
("1024","7591221281116","SALSA SOYA IBERIA 3OOGS","9.80","49.18","1.82","VENTA *$2,10","COMPRA *$1,56x6280mi","16","UND","99.00","7591221281116","1.0000","2022-12-29 07:55:05","2023-03-25 10:53:44"),/*soy foreach */;
("1025","7591141320209","SALSA SOYA MAcCORMICK 150gs","8.83","35.13","1.30","VENTA *$1,30","COMPRA *$1x8830m","0","UND","100.00","7591141320209","1.0000","2022-12-29 07:56:06","2022-12-29 07:56:06"),/*soy foreach */;
("1026","7594003320300","SALSA SOYA QUIDYS 300gs","29.75","42.15","1.56","VENTA *$1,8","COMPRA *$1,16X8380mi","16","UND","17.00","7594003320300","1.0000","2022-12-29 07:57:18","2023-05-17 14:32:00"),/*soy foreach */;
("1027","000029","PICANTE ARTESANAL MEDIANO","14.72","33.78","1.25","VENTA *$1,25","COMPRA *$0,8x929m","0","UND","6.00","000029","1.0000","2022-12-29 07:59:36","2023-04-01 06:52:11"),/*soy foreach */;
("1028","7591221275153","PICANTE CHIRELITO 150gs","6.21","31.61","1.17","VENTA *$1,35","COMPRA *$0,98x6280mi","16","UND","100.00","7591221275153","1.0000","2022-12-29 08:00:43","2022-12-29 08:00:43"),/*soy foreach */;
("1029","0202","PICANTE CHIRELITO 24X15O","148.06","652.26","24.14","VENTA *$28","COMPRA *$23,58x6280m","16","CJA","100.00","0202","1.0000","2022-12-29 08:02:23","2022-12-29 08:02:23"),/*soy foreach */;
("1030","7591155000067","PICANTE D/PEDRO 150GS","10.73","40.53","1.50","VENTA *$1,50","COMPRA *$1,21x8730m","0","UND","100.00","7591155000067","1.0000","2022-12-29 08:07:59","2022-12-29 08:07:59"),/*soy foreach */;
("1031","544","PICANTE D/PEDRO 1X12X150","129.31","432.32","16.00","VENTA *$16","COMPRA *$14,48x8730m","0","CJA","100.00","544","1.0000","2022-12-29 08:12:48","2022-12-29 08:12:48"),/*soy foreach */;
("1032","7891032015918","PICANTE OLE 150GS","2.42","27.02","1.00","VENTA *$1","COMPRA *$0,55x3150mi","0","UND","100.00","7891032015918","1.0000","2022-12-29 08:13:58","2022-12-29 08:13:58"),/*soy foreach */;
("1033","0000194","PICANTE QUIDY 12X3OO","33.00","326.13","12.07","VENTA *$14","VENTA *$14","16","CJA","100.00","0000194","1.0000","2022-12-29 08:14:55","2022-12-29 08:14:55"),/*soy foreach */;
("1034","7594003320614","PICANTE QUIDY 3OOGS","0.00","31.07","1.15","VENTA *$1,33","COMPRA *$0,86x3150mi","16","UND","100.00","7594003320614","1.0000","2022-12-29 08:16:10","2022-12-29 08:16:10"),/*soy foreach */;
("1036","7591081030473","SALCHICHA DELI DEBRECZINER 1X5","132.22","158.61","5.87","VENTA *$6.8","COMPRA *$5.06x26130m","16","UND","7.00","7591081030473","1.0000","2022-12-29 08:50:53","2023-05-29 13:40:30"),/*soy foreach */;
("1037","7591081030466","SALCHICHA DELI POLACA 1X5","91.25","184.01","6.81","VENTA *$7,9","COMPRA *$5,33x16450m","16","UND","100.00","7591081030466","1.0000","2022-12-29 08:56:15","2022-12-29 08:56:15"),/*soy foreach */;
("1038","TOR","TOCINETA TOCI-RICA FIESTA ENT","212.27","270.20","10.00","VENTA *$11.6","COMPRA *$8.12x26130","16","KGS","28.00","TOR","1.0000","2022-12-29 09:05:14","2023-05-29 13:40:30"),/*soy foreach */;
("1040","7702993031292","GOMITAS BOLSA TRULULU 1X15","2.40","13.51","0.50","VENTA *$0.50","COMPRA *$0,48x4600m","0","BOL","67.00","7702993031292","1.0000","2022-12-29 09:37:15","2023-05-24 10:44:21"),/*soy foreach */;
("1041","7591016151136","CHOCOLATE C/LECHE MED.1X12X30","182.42","232.91","8.62","VENTA *$10","COMPRA *$7,47x24420m","16","EST","93.00","7591016151136","1.0000","2022-12-29 12:28:02","2023-04-28 13:50:58"),/*soy foreach */;
("1042","7591016151556","CHOCOLATE CRI-CRI MED.1X12X27","182.39","232.91","8.62","VENTA *$10","COMPRA *$7,47x24420m","16","EST","92.00","7591016151556","1.0000","2022-12-29 12:39:36","2023-04-28 13:50:58"),/*soy foreach */;
("1043","7591016151112","CHOCOLATE C/LECHE EXT.GDE.1X5X13O","111.40","432.32","16.00","VENTA *$16","COMPRA *$10,72x4460m","0","EST","100.00","7591016151112","1.0000","2022-12-29 12:54:00","2022-12-29 12:54:00"),/*soy foreach */;
("1044","7591016851128","CHOCOLATE C/LECHE EXT.GDE.UNDS","0.00","81.60","3.02","VENTA*$3,50","COMPRA *$2,13x4460mi","16","UND","99.00","7591016851128","1.0000","2022-12-29 13:00:18","2023-04-18 08:22:11"),/*soy foreach */;
("1045","7591016155424","CHOCOLATE CHOCO DUO EXT.Gde 1x5x130","111.40","432.32","16.00","VENTA *$16","COMPRA *$13,31x8370m","0","EST","98.00","7591016155424","1.0000","2022-12-29 13:03:24","2023-04-11 09:14:38"),/*soy foreach */;
("1046","7591016154144","CHOCOLATE RIKITI EXT.GDE.1X5X13O","111.40","432.32","16.00","VENTA *$16","COMPRA *$10,72x4460m","0","EST","100.00","7591016154144","1.0000","2022-12-29 13:09:24","2022-12-29 13:09:24");/*soy foreach */;
INSERT INTO productos VALUES
("1047","7591016154960","CHOCOLATE GALAK EXT.GDE.1X5X13O","111.40","432.32","16.00","VENTA *$16","COMPRA *$10,72x4460m","0","EST","100.00","7591016154960","1.0000","2022-12-30 06:56:18","2022-12-30 06:56:18"),/*soy foreach */;
("1048","7591016151600","CHOCOLATE CRI-CRI GDE.1X5X13O","89.83","432.32","16.00","VENTA *$16","COMPRA *$10,72x4460m","0","EST","98.00","7591016151600","1.0000","2022-12-30 07:07:45","2023-04-11 09:14:38"),/*soy foreach */;
("1049","7591221364024","CUBITOS IBERIA GALLINA 1x48","28.92","198.06","7.33","VENTA *$8,5","COMPRA *$5,63x4490m","16","POT","0.00","7591221364024","1.0000","2022-12-30 07:15:58","2023-03-06 08:40:26"),/*soy foreach */;
("1050","7896731018963","CARAMELOS PIETROBON FRESA 1X70","22.14","54.04","2.00","VENTA *$2","COMPRA *$1,29x17120m","0","BOL","91.00","7896731018963","1.0000","2022-12-30 07:18:10","2023-05-16 10:28:34"),/*soy foreach */;
("1051","7896731019069","CARAMELOS PIETROBON MIEL 1X70","22.14","54.04","2.00","VENTA *$2","COMPRA *$1,29x17120m","0","BOL","100.00","7896731019069","1.0000","2022-12-30 07:21:44","2022-12-30 07:21:44"),/*soy foreach */;
("1052","7896731006328","CARAMELOS PIETROBON PITECO 1X70","23.57","54.04","2.00","VENTA *$2","COMPRA *$1,38x17120m","0","BOL","98.00","7896731006328","1.0000","2022-12-30 07:24:55","2023-05-27 08:27:17"),/*soy foreach */;
("1053","7591016155448","SAMBA FRESA BOLSA 1x35","233.22","279.66","10.35","VENTA *$12","COMPRA *$9,20x25350m","16","BOL","0.00","7591016155448","1.0000","2022-12-30 07:28:51","2023-05-13 12:32:21"),/*soy foreach */;
("1054","7891151039789","FREEGELLS EX/FUERTE 1X12","62.57","91.87","3.40","VENTA *$3,40","COMPRA *$2,5x25030m","0","PAQ","12.00","7891151039789","1.0000","2022-12-30 07:33:51","2023-05-09 12:07:06"),/*soy foreach */;
("1055","0000085","CONDIMENTOS SURT.EL GUSTAZO 1X24","8.10","70.25","2.60","VENTA *$2.6","COMPRA *$1,8x4500mi","0","TIR","100.00","0000085","1.0000","2022-12-30 07:48:52","2023-06-08 13:10:12"),/*soy foreach */;
("1056","7702174079174","CARAMELOS ALDOR SUPER FRUTY 1X100","32.44","48.64","1.80","VENTA *$1,8","ALDOR*$1,45x22370m","0","PAQ","81.00","7702174079174","1.0000","2022-12-30 10:33:44","2023-04-04 07:34:54"),/*soy foreach */;
("1057","1126","ESPONJA D/ALAMBRE GIRASOL 1X12","0.00","105.38","3.90","VENTA*$3.9","COMPRA*$2.3","0","TIR","100.00","1126","1.0000","2022-12-30 12:22:37","2022-12-30 12:22:37"),/*soy foreach */;
("1058","7702006205390","JABON P/BAÑO REXONA 1x3x125gs","20.24","81.60","3.02","VENTA *$3,50","COMPRA *$2,41x8390m","16","EST","100.00","7702006205390","1.0000","2022-12-31 06:44:19","2022-12-31 06:44:19"),/*soy foreach */;
("1059","7592969000519","MANI G/MARCA JAPONES FAMILIAR","52.00","75.66","2.80","VENTA *$2,80","COMPRA *$2,60x7980m","0","UND","100.00","7592969000519","1.0000","2022-12-31 11:31:32","2023-02-22 12:50:50"),/*soy foreach */;
("1060","7592969000694","MANI G/MARCA E/CONCHA FAMLIAR","0.00","89.17","3.30","VENTA *$3,30","COMPRA *$2,59x7980m","0","UND","94.00","7592969000694","1.0000","2022-12-31 11:33:43","2023-01-13 09:18:33"),/*soy foreach */;
("1061","7592969000120","MANI G/MARCA SALADO FAMILIAR","54.60","75.66","2.80","VENTA *$2,80","COMPRA *$2,73x8150m","0","UND","100.00","7592969000120","1.0000","2022-12-31 11:36:39","2023-02-22 13:00:15"),/*soy foreach */;
("1062","7591098110168","PAPEL HIG ULTRA SOFT 1x4","17.08","52.69","1.95","VENTA *$1,95","COMPRA *$1,45x11690m","0","PAQ","100.00","7591098110168","1.0000","2023-01-10 12:00:53","2023-01-10 12:00:53"),/*soy foreach */;
("1063","0000007","MORTADELA D/POLLO ALIBAL 1X10","670.36","810.60","30.00","VENTA *$30","COMPRA *$25,83x25060m","0","BTO","4.00","0000007","1.0000","2023-01-11 08:17:00","2023-05-08 09:23:06"),/*soy foreach */;
("1064","7593407001396","MORTADELA D/POLLO ALIBAL 1KG","67.04","83.76","3.10","VENTA *$3,10","COMPRA *$2,68x25060m","0","UND","1000.00","0000007","0.1000","2023-01-11 08:19:12","2023-05-08 09:21:36"),/*soy foreach */;
("1065","000019","CALABRESA SEARA x BOLSA (2.5K)","454.80","540.40","20.00","VENTA *$20","COMPRA *$18,17x25030m","0","PAQ","3.20","000019","1.0000","2023-01-11 11:12:22","2023-05-11 07:48:38"),/*soy foreach */;
("1066","CAJ02","CALABRESA SEARA x kilo","181.92","227.78","8.43","VENTA *$8,43","COMPRA *$7,27x25030m","0","KGS","1000.00","000019","0.4000","2023-01-11 11:15:01","2023-05-10 07:23:28"),/*soy foreach */;
("1067","0000025","CALABRESA PERDIGAO BOLSA","225.72","378.28","14.00","VENTA *$14","COMPRA *$12x18810m","0","PAQ","100.00","0000025","1.0000","2023-01-11 11:18:16","2023-01-11 11:18:16"),/*soy foreach */;
("1068","1103","MALTA REGIONAL 1X24","278.96","345.86","12.80","VENTA *$12,80","COMPRA *$11,40x24470m","0","CAJ","3.96","1103","1.0000","2023-01-11 12:40:37","2023-05-18 11:35:05"),/*soy foreach */;
("1069","75905156","MALTA REGIONAL x Unds","11.67","15.40","0.57","VENTA *$0,57","COMPRA *$0,48x24470m","0","UND","1000.00","1103","0.0417","2023-01-12 06:18:30","2023-05-18 11:30:21"),/*soy foreach */;
("1070","8690997184115","CHOCOLATE JIMMY BARRA 1X24","17.10","143.21","5.30","VENTA *$5,30","COMPRA *$4,17x1800m","0","EST","100.00","8690997184115","1.0000","2023-01-12 07:55:48","2023-01-12 07:55:48"),/*soy foreach */;
("1071","75971403","MAYONESA MAVESA 175gs","13.42","51.34","1.90","VENTA *$1,90","COMPRA *$1,56x26860m","0","UND","1000.00","0843","0.0420","2023-01-13 10:54:58","2023-06-09 13:56:09"),/*soy foreach */;
("1072","7593394000044","DESIN.EMBELLECEDOR 1Lts","8.64","40.53","1.50","VENTA *$1,50","COMPRA *$1,07x3000mi","0","UND","100.00","7593394000044","1.0000","2023-01-16 07:37:25","2023-01-16 07:37:25"),/*soy foreach */;
("1073","0168","DESIN.ECO-LIMPIO 12X1","80.00","351.26","13.00","VENTA *$13","COMPRA *$10x4600mi","0","CAJ","100.00","0168","1.0000","2023-01-16 07:49:33","2023-01-16 07:49:33"),/*soy foreach */;
("1074","0651","DESIN.FULY SURT.12x900c","102.19","351.26","13.00","VENTA *$13","COMPRA *$11x9290mil","0","CJA","97.00","0651","1.0000","2023-01-16 07:59:23","2023-03-28 12:08:44"),/*soy foreach */;
("1076","7591985900995","DESIN.FULY SURT.UND 1LTS","8.52","40.53","1.50","VENTA *$1,50","COMPRA *$0,92x9560mi","0","UND","100.00","7591985900995","1.0000","2023-01-16 08:01:57","2023-01-16 08:01:57"),/*soy foreach */;
("1077","7596347794151","DESIN.DAYANI 1Lts","11.26","27.02","1.00","VENTA *$1","COMPRA *$0,50x24560mi","0","UND","1000.00","0530","0.0840","2023-01-16 08:10:38","2023-04-19 12:21:49"),/*soy foreach */;
("1078","0530","DESIN.DAYANI 12x1","135.08","216.16","8.00","VENTA *$8","COMPRA *$5,5x24560m","0","CJA","3.00","00530","1.0000","2023-01-16 08:13:38","2023-04-19 12:19:11"),/*soy foreach */;
("1079","0364","MORTADELA D/POLLO CORRAL 1X12X1","783.87","972.72","36.00","VENTA *$36","COMPRA *$31,2x25120","0","CJA","5.00","0364","1.0000","2023-01-16 12:03:24","2023-05-10 11:46:21"),/*soy foreach */;
("1080","7591289609129","MORTADELA D/POLLO CORRAL 1KIL","65.32","86.46","3.20","VENTA *$3,20","COMPRA *$2,60x25120m","0","UND","1000.00","0364","0.0840","2023-01-16 12:07:44","2023-05-10 11:47:17"),/*soy foreach */;
("1081","0328","HARINA LA BARINESA 20x1","325.95","445.83","16.50","VENTA *$16,5","COMPRA *$15x21730m","0","PAC","98.00","0328","1.0000","2023-01-18 09:10:27","2023-03-30 08:33:36"),/*soy foreach */;
("1082","7591206114668","CHEETOS ANARAN.BOLIQ.1X12X45GS","155.24","198.06","7.33","VENTA *$8,5","COMPRA *$6,37x19660m","16","TRA","98.00","7591206114668","1.0000","2023-01-19 08:57:54","2023-05-16 13:54:58"),/*soy foreach */;
("1083","7591206000770","CHICHARRON JACKS PCTE 1x12","191.28","232.91","8.62","VENTA *$10","COMPRA *$7,97x19660m","16","TIR","11.00","7591206000770","1.0000","2023-01-19 09:07:34","2023-04-19 10:10:24"),/*soy foreach */;
("1084","7591206282695","DE TODITO JACKS 1X12X35G","180.55","205.62","7.61","VENTA *$8.82","COMPRA *$6,78x19660m","16","TIR","97.00","7591206282695","1.0000","2023-01-19 09:14:21","2023-06-10 07:38:13"),/*soy foreach */;
("1085","7591206003474","CHEETOS FLAMIN HOT FAMLAR","30.00","38.64","1.43","VENTA *$1,65","COMPRA *$1,23x24390m","16","UND","16.00","7591206003474","1.0000","2023-01-19 09:16:05","2023-05-13 10:29:38"),/*soy foreach */;
("1086","7591206003467","CHEETOS FLAMIN HOT 1x12x45","125.25","209.68","7.76","VENTA *$9","COMPRA *$6,37x19660m","16","TRA","100.00","7591206003467","1.0000","2023-01-19 09:20:40","2023-01-19 09:20:40"),/*soy foreach */;
("1087","7591206003498","DORITOS FLAMIN HOT FMLAR 140g","41.22","52.42","1.94","VENTA *$2,25","COMPRA *$1,69x24390m","16","UND","7.00","7591206003498","1.0000","2023-01-19 09:22:46","2023-04-04 08:34:39"),/*soy foreach */;
("1088","RALLA","POLLO ENTERO X KG","49.82","64.85","2.40","VENTA *$2,40","COMPRA *$2,07x24070m","0","KGS","20.00","RALLA","1.0000","2023-01-20 08:36:05","2023-03-16 12:17:48"),/*soy foreach */;
("1089","075110689942","VAINILLA GANDENIA 250cc","17.04","27.02","1.00","VENTA *$1","COMPRA *$0,67x20290m","0","UND","19.00","075110689942","1.0000","2023-01-20 11:31:54","2023-05-13 11:34:27"),/*soy foreach */;
("1090","7592433001073","DALVITO Q/FUNDIDO 2OOGR","41.39","68.36","2.53","VENTA *$2,93","COMPRA *$2,04x19980m","16","UND","100.00","7592433001073","1.0000","2023-01-21 07:06:25","2023-01-21 07:06:25"),/*soy foreach */;
("1091","7592433001523","TWISTI KESO 200gs","43.70","58.63","2.17","VENTA *$2,51","COMPRA *$1,80x24220m","16","UND","12.00","7592433001523","1.0000","2023-01-21 07:08:04","2023-03-28 10:14:37"),/*soy foreach */;
("1092","0863","MORTADELA CAR/DIEGO 12X500","135.00","418.81","15.50","VENTA *$15,5","COMPRA *$15x6500m","0","UND","100.00","0863","1.0000","2023-01-21 07:10:50","2023-01-21 07:10:50"),/*soy foreach */;
("1093","7591081240346","MORTADELA CAR/DIEGO 500GS","11.25","35.13","1.30","VENTA *$1,30","COMPRA *$1,25x6500m","0","UND","100.00","7591081240346","1.0000","2023-01-21 07:12:02","2023-01-21 07:12:02"),/*soy foreach */;
("1094","0317","MORTADELA CAR/ITALSALUMI 1X12X1","661.08","756.56","28.00","VENTA *$28","COMPRA *$28,7x5420","0","BTO","100.00","0317","1.0000","2023-01-21 07:13:51","2023-02-24 09:43:08"),/*soy foreach */;
("1095","7591105754088","MORTADELA CAR/ITALSALUMI 1K","55.09","64.85","2.40","VENTA *$2,40","COMPRA *$2,39x5420","0","UND","100.00","7591105754088","1.0000","2023-01-21 07:15:49","2023-02-24 09:45:44"),/*soy foreach */;
("1096","7591211001557","GUT P/ESPAGUETI 1x18","162.19","232.91","8.62","VENTA *$10","COMPRA *$7,90x5060m","16","TRA","100.00","7591211001557","1.0000","2023-01-23 08:40:54","2023-01-23 08:40:54"),/*soy foreach */;
("1097","00000142","GUT SURTIDOS X Unds","8.62","14.59","0.54","VENTA *$0,54","COMPRA *$0,42x20530m","0","SOB","98.00","00000142","1.0000","2023-01-23 08:43:39","2023-04-15 08:23:52"),/*soy foreach */;
("1098","0805","CLORO 3 ENE 12x1","491.20","559.04","20.69","VENTA *$24","COMPRA *$20x20530m","16","CJA","3.00","0805","1.0000","2023-01-23 11:26:59","2023-04-20 12:47:31"),/*soy foreach */;
("1099","7592800009022","CLORO 3 ENE 1Lts","40.93","52.42","1.94","VENTA *$2,25","COMPRA *$1,67x20530m","16","UND","1000.00","0805","0.0840","2023-01-23 11:29:18","2023-04-20 12:49:08"),/*soy foreach */;
("1100","7592800001811","VELON MINI #1 3ENE","41.06","67.55","2.50","VENTA *$2,90","COMPRA *$2x20530m","16","UND","100.00","7592800001811","1.0000","2023-01-23 11:31:07","2023-01-23 11:31:07"),/*soy foreach */;
("1101","7592800003853","LAVA LIQUIDO 3ENE 500gs","34.29","57.28","2.12","VENTA *$2,45","COMPRA *$1,67x20530m","16","UND","100.00","7592800003853","1.0000","2023-01-23 11:45:28","2023-01-23 11:45:28"),/*soy foreach */;
("1102","7592800007851","LAVA PLATO CREMA 3ENE 500gs","41.06","68.90","2.55","VENTA *$2,95","COMPRA *$2x20530m","16","UND","100.00","7592800007851","1.0000","2023-01-23 11:48:09","2023-01-23 11:48:09"),/*soy foreach */;
("1103","1191","VELAS BLACA  #1 3NE 1X80","287.42","430.97","15.95","VENTA *$18,5","COMPRA *$14x20530m","16","CJA","100.00","1191","1.0000","2023-01-23 11:49:35","2023-01-23 11:49:35"),/*soy foreach */;
("1104","00000176","VELAS BLANCA #1 3ENE Unds","3.59","6.48","0.24","VENTA *$0,27","COMPRA *$0,18x20530m","16","UND","97.00","00000176","1.0000","2023-01-23 11:50:52","2023-06-03 10:33:20"),/*soy foreach */;
("1105","0000233","PESO ELECTRONICO 30KGS.","465.74","797.09","29.50","VENTA *$29,5","COMPRA *$22x21760m","0","UND","100.00","0000233","1.0000","2023-01-25 06:58:22","2023-01-25 06:58:22"),/*soy foreach */;
("1106","6974034130887","TEIPE Peq COBRA Unds","12.70","24.32","0.90","VENTA *$0,90","COMPRA *$0,60x21170m","0","UND","99.00","6974034130887","1.0000","2023-01-25 08:11:13","2023-03-15 10:10:28"),/*soy foreach */;
("1107","041333001111","PILAS DURACELL AAA-1x2","12.91","21.62","0.80","VENTA *$0,80","COMPRA *$0,61x21170m","0","EST","100.00","041333001111","1.0000","2023-01-25 08:38:17","2023-01-25 08:38:17"),/*soy foreach */;
("1108","6920700150000","PILAS TURMAX AA-1x4","12.70","31.07","1.15","VENTA *$1,15","COMPRA *$0,6x2070m","0","EST","100.00","6920700150000","1.0000","2023-01-25 08:49:47","2023-01-25 08:49:47"),/*soy foreach */;
("1109","7591620020606","GALLETAS PIRUETA 1X24","19.32","136.45","5.05","VENTA *$5,85","COMPRA *$4,39x700m","16","EST","100.00","7591620020606","1.0000","2023-01-26 09:27:33","2023-01-26 09:27:33"),/*soy foreach */;
("1110","7707238815422","MOSTAZA BOLSA DIFFER 4KG","130.38","186.44","6.90","VENTA *$6,90","COMPRA *$6x21730m","0","BOL","100.00","7707238815422","1.0000","2023-01-27 08:44:19","2023-01-27 08:44:19"),/*soy foreach */;
("1111","6970466900371","TIRROS TRASPTE X Unds","25.83","40.53","1.50","VENTA *$1,5","COMPRA *$0.97x26630m","0","UND","40.00","6970466900371","1.0000","2023-01-27 11:31:14","2023-06-08 13:16:46"),/*soy foreach */;
("1112","0855","RECORTE SURTIDO X KILO","15.00","135.10","5.00","VENTA *$5","COMPRA *$3x500mi","0","KGS","100.00","0855","1.0000","2023-01-28 07:30:29","2023-01-28 07:30:29"),/*soy foreach */;
("1113","1239","SACO PLAST TRANSP 20 KGS","1.65","8.11","0.30","VENTA *$0,30","COMPRA *$0,20x8270m","0","UND","100.00","1239","1.0000","2023-01-30 08:22:52","2023-01-30 08:22:52"),/*soy foreach */;
("1114","0000153","SACO PLAST TRANSP 50x90 30kg","6.92","13.51","0.50","VENTA *$0,50","COMPRA *$0,28x24420m","0","UND","189.00","0000153","1.0000","2023-01-30 08:24:22","2023-03-30 07:26:32"),/*soy foreach */;
("1115","7709192950584","PAPAS MUNCHY ON FAMLAR","58.10","81.60","3.02","VENTA *$3,50","COMPRA *$2,67x21730m","16","UND","100.00","7709192950584","1.0000","2023-01-30 12:04:18","2023-01-30 12:04:18"),/*soy foreach */;
("1116","7702626361062","GALLETAS RADICAL TUBO 1X30","234.88","337.75","12.50","VENTA *$12,5","COMPRA *$10,50x22370","0","BTO","100.00","7702626361062","1.0000","2023-02-01 11:49:38","2023-02-01 11:49:38"),/*soy foreach */;
("1117","7702174079204","CARAMELOS TAMARINDO 1x100","32.44","48.64","1.80","VENTA *$1,80","COMPRA *$1,45x22370m","0","EST","99.00","7702174079204","1.0000","2023-02-01 11:59:41","2023-04-03 09:26:26"),/*soy foreach */;
("1118","7591141103017","MOSTAZA McCORMIcK TETR.260g","43.62","67.55","2.50","VENTA *$2,50","COMPRA *$1,95x22370m","0","UND","100.00","7591141103017","1.0000","2023-02-01 13:17:32","2023-02-01 13:17:32"),/*soy foreach */;
("1119","7590011217427","OREO CHOCOL 1X6X4","41.38","60.80","2.25","VENTA *$2,25","COMPRA *$1,74x24420m","0","EST","76.00","7590011217427","1.0000","2023-02-02 06:21:35","2023-04-29 07:58:05"),/*soy foreach */;
("1120","7590011216420","OREO VAINLLA 1X6X4","42.49","60.80","2.25","VENTA *$2,25","COMPRA *$1,74x24420m","0","EST","-35.00","7590011216420","1.0000","2023-02-02 06:23:55","2023-04-28 13:50:57"),/*soy foreach */;
("1121","7591081111615","JAMON ENDIABL.PLUMROSE Unds 110gs","43.22","53.77","1.99","VENTA *$2,3","COMPRA *$1,65x21950m","16","UND","1000.00","SAB1","0.0840","2023-02-02 09:42:06","2023-05-29 14:17:38"),/*soy foreach */;
("1122","7591081111608","JAMON ENDIABL.PLUMROSE EST.12X60","321.40","372.88","13.80","VENTA *$16","COMPRA *$12,30x26130m","16","EST","1.50","7591081111608","1.0000","2023-02-02 09:46:12","2023-05-29 14:23:39"),/*soy foreach */;
("1123","SAB1","JAMON ENDIABL.PLUMROSE EST 12x110","518.68","605.79","22.42","VENTA *$26","COMPRA *$19,85x8005m","16","EST","0.84","SAB1","1.0000","2023-02-02 09:49:06","2023-05-29 14:23:39"),/*soy foreach */;
("1124","8993379255374","JABON P/BAÑO HARMONY 75GS","3.23","5.67","0.21","VENTA *$0,21","COMPRA *$0,15x21720m","0","UND","82.00","8993379255374","1.0000","2023-02-02 12:25:54","2023-04-10 09:45:14"),/*soy foreach */;
("1125","7702425805187","TOALLAS HUMEDAS HUGGIES 1x80","39.27","58.36","2.16","VENTA *$2,5","COMPRA *$1,75x22440m","16","EST","100.00","7702425805187","1.0000","2023-02-03 07:30:14","2023-02-03 07:30:14"),/*soy foreach */;
("1126","7592450000103","AVENA AVELINA ENTER 400gs","20.88","27.02","1.00","VENTA *$1","COMPRA *$0,83x25060m","0","UND","20.00","7592450000103","1.0000","2023-02-03 08:33:16","2023-05-06 14:16:06"),/*soy foreach */;
("1127","7802200121591","CARAMELOS AMBROFOLI M/CHOC 1x100","52.16","77.01","2.85","VENTA *$2,85","COMPRA *$2,3x22680m","0","BOL","100.00","7802200121591","1.0000","2023-02-03 10:41:55","2023-02-03 10:41:55"),/*soy foreach */;
("1128","7802200121607","CARAMELOS AMBROFOLI MIEL 1x100","52.16","77.01","2.85","VENTA *$2,85","COMPRA *$2,3x22680m","0","BOL","94.00","7802200121607","1.0000","2023-02-03 10:43:10","2023-03-21 08:31:52"),/*soy foreach */;
("1129","7802200121508","CARAMELOS AMBROFOLI RELLENO 1x100","52.16","77.01","2.85","VENTA *$2,85","COMPRA *$2,3x22680m","0","BOL","100.00","7802200121508","1.0000","2023-02-03 10:44:55","2023-02-03 10:44:55"),/*soy foreach */;
("1130","7802200809208","CHOCOLATE CAÑONAZO 1x24","181.44","262.09","9.70","VENTA *$9,70","COMPRA *$8x22680m","0","EST","100.00","7802200809208","1.0000","2023-02-03 10:49:57","2023-02-03 10:49:57"),/*soy foreach */;
("1131","7802200132672","MENTITAS AMBROFOLIO 1x24","181.44","262.09","9.70","VENTA *$9,70","COMPRA *$8x22680m","0","EST","100.00","7802200132672","1.0000","2023-02-03 10:51:17","2023-02-03 10:51:17"),/*soy foreach */;
("1132","6954207208803","CARBON E/SACO PAPEL","11.82","20.81","0.77","VENTA *$0,77","COMPRA *$0.45x26000m","0","SAC","86.00","6954207208803","1.0000","2023-02-04 08:52:39","2023-05-23 12:58:57"),/*soy foreach */;
("1133","7896005403341","JUGO DAFRUTA CARTON 1Lts","31.02","43.23","1.60","VENTA *$1,60","COMPRA *$1,41x5420m","0","UND","99.00","7896005403341","1.0000","2023-02-06 07:25:18","2023-03-13 09:12:25"),/*soy foreach */;
("1134","7840693021769","PACIFIC 1x10x20","150.48","197.25","7.30","VENTA *$7,30","COMPRA *$6,5x22910m","0","PAQ","100.00","7840693021769","1.0000","2023-02-06 12:34:52","2023-02-07 08:49:31"),/*soy foreach */;
("1135","1021","MORTADELA REBANADA X BANDEJA","20.00","29.18","1.08","VENTA *$1,08","COMPRA *$0,87x23150m","0","BND","100.00","1021","1.0000","2023-02-07 07:39:29","2023-02-07 07:39:29"),/*soy foreach */;
("1136","1200","JAMON PECHUGA PAVO-MAGRO REB","80.71","351.26","13.00","VENTA 13$","COMPRA *$9,32x8660m","0","KGS","100.00","1200","1.0000","2023-02-07 08:38:52","2023-02-07 08:43:08"),/*soy foreach */;
("1137","7591081240285","MORTADELA CAR/PLUMROSE 1Kg","74.76","81.06","3.00","VENTA *$3","COMPRA *$2,95x5420mi","0","UND","91.00","7591081240285","1.0000","2023-02-08 06:43:25","2023-03-28 12:08:44"),/*soy foreach */;
("1138","7591081245013","MORTADELA D/POLLO PLUMROSE 1KIL","84.60","94.57","3.50","VENTA *$3,50","COMPRA *$3,40x5420m","0","UND","100.00","7591081245013","1.0000","2023-02-08 06:46:52","2023-02-24 09:51:27"),/*soy foreach */;
("1139","0363","MORTADELA D/POLLO PLUMROSE 1X12X1","1015.23","1215.90","45.00","VENTA *$45","COMPRA *$43x5420m","0","BTO","100.00","0363","1.0000","2023-02-08 06:52:51","2023-02-08 06:52:51"),/*soy foreach */;
("1140","0957","MORTADELA CAR/PLUMROSE 12X1","897.18","1080.80","40.00","VENTA *$40","COMPRA *$38x5420m","0","CJA","100.00","0957","1.0000","2023-02-08 06:55:14","2023-02-08 06:55:14"),/*soy foreach */;
("1141","MALTA","MALTA POLAR 1,5OOCC","58.07","81.06","3.00","VENTA *$3","COMPRA *$2,25x25810m","0","UND","1000.00","0699","0.1670","2023-02-08 12:31:19","2023-05-18 11:34:56"),/*soy foreach */;
("1142","0699","MALTA POLAR 1X6X1.5","348.43","418.81","15.50","VENTA *$15,50","COMPRA *$13,50x25810","0","UND","0.83","0699","1.0000","2023-02-08 12:37:52","2023-05-18 11:35:05"),/*soy foreach */;
("1143","000005","MALTA REGIONAL GAVERA 1x36","306.25","378.28","14.00","VENTA *$14","COMPRA *$12,5x18810m","0","CAJ","1.00","000005","1.0000","2023-02-08 12:42:51","2023-05-18 11:35:05"),/*soy foreach */;
("1144","01220223","CHIMO EL CHACARO 1x12","170.80","216.16","8.00","VENTA *$8","COMPRA *$7x23810m","0","EST","1.00","01220223","1.0000","2023-02-09 09:45:26","2023-03-25 12:22:06"),/*soy foreach */;
("1145","7592723105740","SALSA P/GUISOS NATURALYS 500gs","32.40","46.74","1.73","VENTA *$2","COMPRA *$1.35x24000m","16","UND","99.00","7592723105740","1.0000","2023-02-09 10:44:03","2023-05-17 14:32:01"),/*soy foreach */;
("1146","1005","GALLETA M/PUIG TUBO 1x12x9","269.04","349.37","12.93","VENTA *$15","COMPRA *$11,30x23810","16","BTO","100.00","1005","1.0000","2023-02-09 11:34:24","2023-02-09 11:34:24"),/*soy foreach */;
("1147","0450","FRIJOL BAYO X Kilos","26.00","36.48","1.35","VENTA*$1,35","COMPRA*$1x24200m","0","KIL","99.00","0450","1.0000","2023-02-11 09:25:39","2023-05-30 13:42:41");/*soy foreach */;
INSERT INTO productos VALUES
("1148","7896050427521","REBANADAS C/FRUTAS 1X6","21.93","31.07","1.15","VENTA *$1,15","COMPRA *$0,9x24370m","0","UND","99.00","7896050427521","1.0000","2023-02-16 10:04:47","2023-03-30 10:19:28"),/*soy foreach */;
("1149","JUR01","CATALINAS NEGRAS PEQ 1X16","41.43","54.04","2.00","VENTA*$2","COMPRA*$1,7x24370m","0","PAQ","100.00","JUR01","1.0000","2023-02-16 10:07:41","2023-02-16 10:07:41"),/*soy foreach */;
("1150","7592679000458","SARDINA VALLE TTE 170gs","14.70","18.91","0.70","VENTA *$0,70","COMPRA *$0,56x26130m","0","CJA","1000.00","9111","0.0417","2023-02-16 11:26:21","2023-05-27 09:37:05"),/*soy foreach */;
("1151","7595997000261","MOSTAZA GALON JEMI 4kg","396.01","513.38","19.00","VENTA *$19","COMPRA *$16,25x24370","0","UND","100.00","7595997000261","1.0000","2023-02-16 11:32:20","2023-02-16 11:32:20"),/*soy foreach */;
("1152","7595997000155","SALSA TTE JEMI TTR 300g","34.61","47.56","1.76","VENTA *$1,76","COMPRA *$1,42x24370m","0","UND","100.00","7595997000155","1.0000","2023-02-16 11:54:25","2023-02-16 11:54:25"),/*soy foreach */;
("1153","7595997000186","MOSTAZA JEMI TTER 270g","44.68","62.15","2.30","VENTA *$2,30","COMPRA *$1,83x24370m","0","UND","100.00","7595997000186","1.0000","2023-02-16 12:12:46","2023-02-16 12:12:46"),/*soy foreach */;
("1154","7595997000254","SALSA TTE GALON JEMI 3,80gs","304.62","399.90","14.80","VENTA *$14,80","COMPRA *$12,5x24370m","0","GAL","100.00","7595997000254","1.0000","2023-02-16 12:29:49","2023-02-16 12:29:49"),/*soy foreach */;
("1155","7707337520906","RAKETAZO SURT 1x12","45.76","55.39","2.05","VENTA *$2.05","COMPRA *$1,76x26mil","0","BOL","31.00","7707337520906","1.0000","2023-02-17 22:12:51","2023-06-02 08:02:07"),/*soy foreach */;
("1156","7622210426963","HALLS TUBO SURT 1x12","114.71","162.12","6.00","VENTA *$6","COMPRA *$4,70x24200m","0","PAQ","98.00","7622210426963","1.0000","2023-02-18 08:34:51","2023-04-28 13:50:58"),/*soy foreach */;
("1157","7702993025499","CARAMELOS BIANCHI-LINEA 1x24","76.77","100.24","3.71","VENTA *$4,30","COMPRA *$3,15x24370m","16","EST","99.00","7702993025499","1.0000","2023-02-18 08:40:17","2023-05-16 10:28:34"),/*soy foreach */;
("1158","7702993035122","CHOCOLATE BIANCHI 1x12","67.99","92.95","3.44","VENTA *$3,98","COMPRA *$2,79x24370m","16","EST","100.00","7702993035122","1.0000","2023-02-18 08:42:11","2023-02-18 08:42:11"),/*soy foreach */;
("1159","7591902001330","SALSA D/MAIZ FRITZ 240gs","70.65","91.87","3.40","VENTA *$3,40","COMPRA *$2,90x24390m","0","UND","100.00","7591902001330","1.0000","2023-02-18 08:57:22","2023-02-18 08:57:22"),/*soy foreach */;
("1160","000038","PITILLOS TRASPARENTE 1X130","20.73","29.72","1.10","VENTA *$1,10","COMPRA *$0,85x24390m","0","PAQ","100.00","000038","1.0000","2023-02-18 09:19:59","2023-02-18 09:19:59"),/*soy foreach */;
("1161","606889070112","PITILLOS TRASPARENTE 1x30x130","621.94","797.09","29.50","VENTA *$29,5","COMPRA *$25,5x24390m","0","BTO","100.00","606889070112","1.0000","2023-02-18 09:23:23","2023-02-18 09:23:23"),/*soy foreach */;
("1162","7702993010648","GOMITAS TRULULU AROS 1x100","96.51","134.02","4.96","VENTA *$5,75","COMPRA *$3,96x24390m","16","BOL","2.00","7702993010648","1.0000","2023-02-18 13:01:22","2023-04-28 13:50:58"),/*soy foreach */;
("1163","7591002400736","PASTA PRIMOR 1kg","35.73","45.93","1.70","VENTA *$1,70","COMPRA *$1,46x24500m","0","UND","1000.00","PAPL01","0.0840","2023-02-20 11:47:13","2023-03-31 07:33:19"),/*soy foreach */;
("1166","7591024001867","JUGO D/MONTE SURT 1x3","44.71","58.36","2.16","VENTA *$2,50","COMPRA *$1,83x24490m","16","EST","24.00","7591024001867","1.0000","2023-02-23 07:57:04","2023-05-29 07:56:42"),/*soy foreach */;
("1167","7597728238820","CAFE PALMIRA 200gs","36.83","49.99","1.85","VENTA *$1,85","COMPRA *$1,56x23610m","0","UND","100.00","7597728238820","1.0000","2023-02-23 08:38:04","2023-02-23 08:38:04"),/*soy foreach */;
("1168","0744","JAMON ENDIABL.FIESTA 1X12X115","501.66","605.79","22.42","VENTA *$26","COMPRA *$20,56x14120","16","CAJ","100.00","0744","1.0000","2023-02-23 09:23:06","2023-02-23 09:23:06"),/*soy foreach */;
("1169","0000137","JAMON ENDIABL.PLUMROSE GDE.12X115","65.64","466.09","17.25","VENTA *$20","COMPRA *$14,27x2850m","16","CAJ","100.00","0000137","1.0000","2023-02-23 09:29:42","2023-02-23 09:29:42"),/*soy foreach */;
("1170","0000077","JAMON ENDIABL PLUMROSE PEQ 24X55","74.01","535.81","19.83","VENTA *$23","COMPRA *$16,09x2850m","16","CAJ","100.00","0000077","1.0000","2023-02-23 09:32:05","2023-02-23 09:32:05"),/*soy foreach */;
("1171","7591081110601","JAMON ENDIABL.PLUMROSE UNDS 60gs","26.78","33.78","1.25","VENTA *$1,45","COMPRA *$1,03x24170m","16","EST","1000.00","7591081111608","0.0840","2023-02-24 06:35:57","2023-05-29 14:22:23"),/*soy foreach */;
("1172","0000158","JAMON ESP ITALSALUMI ENT","163.42","216.70","8.02","VENTA *$9,30","COMPRA *$6,76x24170m","16","KGS","11.00","0000158","1.0000","2023-02-24 06:40:09","2023-05-18 13:30:25"),/*soy foreach */;
("1173","FIA01","JAMON ESP ITALSALUMI REB","163.42","240.48","8.90","VENTA *$10,32","COMPRA *$6,76x24170m","16","KGS","1000.00","0000158","1.0000","2023-02-24 06:42:25","2023-03-14 09:18:48"),/*soy foreach */;
("1174","00000180","JAMON ESP MAGRO ENT","60.97","237.78","8.80","VENTA *$8,80","COMPRA *$7,04x866m","0","KGS","100.00","00000180","1.0000","2023-02-24 06:51:58","2023-02-24 06:51:58"),/*soy foreach */;
("1175","0335","JAMON ESP MAGRO REB","60.97","264.80","9.80","VENTA *$9,80","COMPRA *$7,04x866m","0","KGS","100.00","0335","1.0000","2023-02-24 06:55:20","2023-02-24 06:55:20"),/*soy foreach */;
("1176","00000103","JAMON PECHUGA PAVO-MOVILLA REB","80.71","351.26","13.00","VENTA *$13","COMPRA *$9,32x866m","0","KGS","100.00","00000103","1.0000","2023-02-24 07:06:14","2023-02-24 07:06:14"),/*soy foreach */;
("1177","77021230000280","JAMON PECHUGA PAVO-MOVILLA ENT","80.71","324.24","12.00","VENTA *$12","COMPRA *$9,32x866m","0","KGS","100.00","77021230000280","1.0000","2023-02-24 07:09:13","2023-02-24 07:09:13"),/*soy foreach */;
("1178","0465","JAMON PECHUGA POLLO-VALLE ENT","64.57","202.65","7.50","VENTA *$7,5","COMPRA *$5,10x12660m","0","KGS","100.00","0465","1.0000","2023-02-24 07:11:38","2023-02-24 07:11:38"),/*soy foreach */;
("1179","0397","JAMON PECHUGA POLLO-VALLE REB","64.57","229.67","8.50","VENTA *$8,5","COMPRA *$5,10x12660m","0","KGS","100.00","0397","1.0000","2023-02-24 07:13:52","2023-02-24 07:13:52"),/*soy foreach */;
("1180","0140","JAMON PIERNA MAGROS ENT","63.16","270.20","10.00","VENTA *$10","COMPRA *$7,43x8000m","0","KGS","100.00","0140","1.0000","2023-02-24 07:31:14","2023-02-24 07:31:14"),/*soy foreach */;
("1181","00335","JAMON PIERNA MAGROS REB","63.16","297.22","11.00","VENTA *$11","COMPRA *$7,43x8000m","0","KGS","100.00","00335","1.0000","2023-02-24 07:34:28","2023-02-24 07:34:28"),/*soy foreach */;
("1182","0000193","JAMON PIERNA EL VALLE ENT","152.34","202.65","7.50","VENTA *$7.5","COMPRA *$5.83x25810m","0","KGS","7.50","0000193","1.0000","2023-02-24 07:36:27","2023-05-29 14:10:15"),/*soy foreach */;
("1183","0000231","JAMON PIERNA EL VALLE REB","152.34","240.48","8.90","VENTA *$8.9","COMPRA *$5.83x25810m","0","KGS","1000.00","0000193","1.0000","2023-02-24 07:39:14","2023-05-29 14:10:01"),/*soy foreach */;
("1184","7591309900274","OREGANO MOLIDO X 1Kg","73.11","108.08","4.00","VENTA *$4","COMPRA *$3x26860m","0","KGS","9.00","7591309900274","1.0000","2023-02-24 12:01:13","2023-06-09 14:23:50"),/*soy foreach */;
("1185","0647","REFRESCO PEPSI-S/BTELLA 1x6x1,25","132.82","167.52","6.20","VENTA *$6,20","COMPRA *$5,45x24370m","0","CAJ","100.00","0647","1.0000","2023-02-25 06:15:33","2023-03-01 06:57:34"),/*soy foreach */;
("1186","7591107002682","REFRESCO PEPSI-S/BTELLA 1,25Lt","22.14","29.99","1.11","VENTA *$1,11","COMPRA *$0,91x24370m","0","CAJ","100.00","7591107002682","1.0000","2023-02-25 06:23:38","2023-03-01 06:59:00"),/*soy foreach */;
("1187","18045680724","QUESO D/AÑO PREFERIDO 300g","68.69","85.92","3.18","VENTA *$3,18","COMPRA *$2,7x25440m","0","POT","26.00","18045680724","1.0000","2023-02-25 08:42:03","2023-05-13 10:24:54"),/*soy foreach */;
("1193","7591072003622","DIABLITO UNDERWOOD Grande","52.13","68.90","2.55","VENTA *$2,55","COMPRA *$2,14x24360m","0","UND","100.00","7591072003622","1.0000","2023-03-01 08:16:56","2023-03-01 08:16:56"),/*soy foreach */;
("1194","7591072000027","DIABLITO UNDERWOOD Pequeño","28.74","38.37","1.42","VENTA *$1,42","COMPRA *$1,18x24360m","0","UND","44.00","7591072000027","1.0000","2023-03-01 08:20:06","2023-03-01 08:20:06"),/*soy foreach */;
("1195","7275682477386","ATUN EL CARIBEÑO 160gs","31.26","43.23","1.60","VENTA *$1,60","COMPRA *$1,28x24420m","0","UND","24.00","7275682477386","1.0000","2023-03-01 08:23:07","2023-03-01 08:23:07"),/*soy foreach */;
("1196","7591072002359","ATUN S/DE LA  ABUELA 170gs","40.53","53.50","1.98","VENTA *$1,98","COMPRA *$1,66x24420m","0","UND","24.00","7591072002359","1.0000","2023-03-01 08:26:09","2023-03-01 08:26:09"),/*soy foreach */;
("1197","7591016006634","CUBITOS MAGGI POLLO #16 Est","57.87","81.60","3.02","VENTA *$3,50","COMPRA *$2,37x24420m","16","EST","100.00","7591016006634","1.0000","2023-03-01 08:30:01","2023-03-01 08:30:01"),/*soy foreach */;
("1198","7591016205914","LECHE NUTRIRINDE 400gs","73.98","96.46","3.57","VENTA *$3,57","COMPRA *$3,03x24420m","0","UND","6.00","7591016205914","1.0000","2023-03-01 08:34:11","2023-03-01 08:34:11"),/*soy foreach */;
("1199","7891008212525","CHOCOLATE GALAK TUBO 1x30","143.08","186.44","6.90","VENTA *$8","COMPRA *$5,86x24420m","16","EST","12.00","7891008212525","1.0000","2023-03-01 09:12:11","2023-03-01 09:12:11"),/*soy foreach */;
("1200","7591016155004","CHOCOLATE C/LECHE NAVIDA 1x9x70","260.07","302.89","11.21","VENTA *$13","COMPRA *$10,65x4460m","16","EST","100.00","7591016155004","1.0000","2023-03-01 09:18:02","2023-03-01 09:18:02"),/*soy foreach */;
("1201","7591016604014","GATSY PURINA 500g","56.89","81.60","3.02","VENTA *$3,50","COMPRA *$2,33x24420m","16","BOL","100.00","7591016604014","1.0000","2023-03-01 09:21:23","2023-03-01 09:21:23"),/*soy foreach */;
("1202","7702174084901","GOMITAS PLAY ANILLOS 1x50","28.32","44.31","1.64","VENTA *$1,90","COMPRA *$1,16x24420m","16","BOL","17.00","7702174084901","1.0000","2023-03-01 09:31:23","2023-03-22 08:08:08"),/*soy foreach */;
("1203","77020111234","CARAMELOS BONBONBUM BARRA 1x50","47.62","61.07","2.26","VENTA *$2,26","COMPRA *$1,95x24420m","0","BOL","9.00","77020111234","1.0000","2023-03-02 06:38:14","2023-05-16 10:28:34"),/*soy foreach */;
("1204","0734191315925","BOCADILLO S/SEBASTIAN PLATANO 1x16","104.59","133.21","4.93","VENTA *$4,93","COMPRA *$4,25x24360m","0","EST","7.00","0734191315925","1.0000","2023-03-02 06:41:42","2023-04-25 12:50:20"),/*soy foreach */;
("1205","0843","MAYONESA MAVESA 24x175g","805.13","1134.84","42.00","VENTA *$42","COMPRA *$37,45x26860m","0","CAJ","-0.04","0843","1.0000","2023-03-03 07:39:59","2023-06-09 14:23:52"),/*soy foreach */;
("1206","0000072","HELADOS LA ROSA 1x500gs","47.22","81.06","3.00","VENTA *$3","COMPRA *$2,30x1100m","0","PAQ","50.00","0000072","1.0000","2023-03-03 09:34:17","2023-03-03 09:34:17"),/*soy foreach */;
("1207","0282","CLORO FULY 12x900C","307.00","405.30","15.00","VENTA *$15","COMPRA *$12,50x24560m","0","CJA","5.92","0282","1.0000","2023-03-03 11:56:37","2023-04-20 12:50:37"),/*soy foreach */;
("1208","7596347794144","CLORO FULY 1Lts","25.58","40.53","1.50","VENTA *$1,50","COMPRA *$1,04x24560m","0","UND","1000.00","0282","0.0840","2023-03-03 11:59:17","2023-04-20 12:51:43"),/*soy foreach */;
("1210","7591221714041","CUBITOS MAGGI POLLO Unds","0.37","4.32","0.16","VENTA *$0,18","COMPRA *$0,08x4540m","16","UND","61.00","7591221714041","1.0000","2023-03-06 08:46:34","2023-05-16 09:35:36"),/*soy foreach */;
("1211","0000111","HARINA KALY BLCA 1x20x1","436.80","499.87","18.50","VENTA *$18.5","COMPRA *$16,80x26000m","0","PAC","10.00","0000111","1.0000","2023-03-07 07:17:51","2023-05-23 08:42:36"),/*soy foreach */;
("1212","S7591675014247","NUCITA E/BANDJA 1x12","121.47","187.79","6.95","VENTA *$6,95","COMPRA *$5,43x22370m","0","EST","1.00","S7591675014247","1.0000","2023-03-07 09:08:02","2023-05-16 10:28:34"),/*soy foreach */;
("1213","6009661920065","TOALLAS ALWAYS C/A 1x10","10.54","16.75","0.62","VENTA *$0,62","COMPRA *$0,43x24320m","0","EST","50.00","6009661920065","1.0000","2023-03-07 10:24:10","2023-03-07 10:24:10"),/*soy foreach */;
("1214","0552","TOALLIN ROSAL 1x24x1","621.34","729.54","27.00","VENTA *$27","COMPRA *$23.99x25900m","0","BTO","4.96","0552","1.0000","2023-03-07 10:33:25","2023-05-19 13:58:29"),/*soy foreach */;
("1215","7591098000759","TOALLIN ROSAL x Und","25.89","34.32","1.27","VENTA *$1,27","COMPRA *$1x25900m","0","UND","1000.00","0552","0.0420","2023-03-07 10:35:23","2023-05-19 13:46:26"),/*soy foreach */;
("1216","7594000751039","COMBO D/SALSA PAZAM 1x3","38.47","67.55","2.50","VENTA *$2,5","COMPRA *$1,50x5500m","0","COM","999.00","7594000751039","1.0000","2023-03-09 07:10:47","2023-05-17 14:32:01"),/*soy foreach */;
("1222","7592708000329","CHICHARRON SON CRIOLLO FAMLIAR","42.60","59.44","2.20","VENTA *$2,2","COMPRA *$1,84x9990m","0","UND","19.00","7592708000329","1.0000","2023-03-10 10:01:20","2023-03-10 10:05:49"),/*soy foreach */;
("1223","0614143016400","MAYONESA GALON MAYORKA 3,6k","175.18","216.16","8.00","VENTA *$8","COMPRA *$7,13x24150m","0","BOL","24.00","0614143016400","1.0000","2023-03-11 06:52:22","2023-04-17 07:32:32"),/*soy foreach */;
("1224","7591626023021","GOMITAS BOLSA GULI 1x16","83.87","111.86","4.14","VENTA *$4,80","COMPRA *$3,47x24170m","16","BOL","-2.00","7591626023021","1.0000","2023-03-13 11:01:37","2023-05-13 12:32:21"),/*soy foreach */;
("1225","1380","PATAS D/COCHINO x Kg","45.20","72.95","2.70","VENTA *$2,7","COMPRA *$1,87x24170m","0","KIL","14.00","1380","1.0000","2023-03-13 11:21:58","2023-03-13 11:40:27"),/*soy foreach */;
("1226","8692806109104","BARQUILLAS COLONITAS 1x20","60.30","78.36","2.90","VENTA *$2,90","COMPRA *$2,5x5500m","0","EST","15.00","8692806109104","1.0000","2023-03-14 06:33:58","2023-03-30 10:19:28"),/*soy foreach */;
("1227","7591081220430","SALCHICHA PLUMROSE 225gs","76.63","85.92","3.18","VENTA *$4,35","COMPRA *$3,17x24170m","16","UND","10.00","7591081220430","1.0000","2023-03-14 07:26:31","2023-03-14 11:09:48"),/*soy foreach */;
("1228","7591081220447","SALCHICHA PLUMROSE 400gs","126.65","169.15","6.26","VENTA *$7,26","COMPRA *$5,24x24170m","16","UND","10.00","7591081220447","1.0000","2023-03-14 07:41:05","2023-03-14 11:09:48"),/*soy foreach */;
("1229","1210","PALO CON MOPA ROBERTI","57.98","85.11","3.15","VENTA *$3,65","COMPRA *$2,4x24140m","16","UND","12.00","1210","1.0000","2023-03-14 11:55:07","2023-03-14 11:55:07"),/*soy foreach */;
("1230","7591081245044","RICARNE D/CERDO PLUMROSE 750gs","48.00","72.95","2.70","VENTA *$2,70","COMPRA *$2x550m","0","UND","11.00","7591081245044","1.0000","2023-03-15 09:10:34","2023-03-15 09:15:31"),/*soy foreach */;
("1231","7591081245068","RICARNE D/RES PLUMROSE 750gs","48.00","72.95","2.70","VENTA *$2,70","COMPRA *$2x550m","0","UND","9.00","7591081245068","1.0000","2023-03-15 09:14:48","2023-03-15 09:15:31"),/*soy foreach */;
("1232","0589","GALLINA ENTERA X Kgs","33.70","45.93","1.70","VENTA *$1,70","COMPRA *$1,40x24070m","0","KGS","19.00","0589","1.0000","2023-03-16 12:14:16","2023-03-16 12:17:48"),/*soy foreach */;
("1233","0000033","PICANTE ARTESANAL GRANDE","22.08","56.74","2.10","VENTA *$2,10","COMPRA *$1,2x929m","0","UND","6.00","0000033","1.0000","2023-03-21 06:56:10","2023-03-21 06:56:10"),/*soy foreach */;
("1234","7594005431516","MORTADELA TAPARA VALLE ENT","160.09","216.16","8.00","VENTA *$8","COMPRA *$6,61x24220m","0","KIL","15.00","7594005431516","1.0000","2023-03-21 11:52:30","2023-03-21 12:26:19"),/*soy foreach */;
("1235","07702011114983","MORTADELA TAPARA VALLE REB","160.09","243.18","9.00","VENTA *$9","COMPRA *$6,61x24220m","0","KIL","1000.00","7594005431516","1.0000","2023-03-21 11:55:48","2023-03-21 11:55:48"),/*soy foreach */;
("1236","0043","JAMON CHULDER E/VALLE ENT","165.42","229.67","8.50","VENTA *$8,5","COMPRA *$6,83x24220m","0","KGS","20.00","0043","1.0000","2023-03-21 11:59:12","2023-03-21 12:26:19"),/*soy foreach */;
("1237","7597257003180","JAMON CHULDER E/VALLE REB","165.42","256.69","9.50","VENTA *$9,5","COMPRA *$6,83x24220m","0","KGS","1000.00","0043","1.0000","2023-03-21 12:04:47","2023-03-21 12:14:23"),/*soy foreach */;
("1238","0000181","JAMON AREPERO E/VALLE ENT","138.30","167.52","6.20","VENTA *$6.2","COMPRA *$5,31x25810m","0","KGS","19.00","0000181","1.0000","2023-03-21 12:07:03","2023-05-18 13:30:24"),/*soy foreach */;
("1239","7709692196673","DRAGON BALL YOLIS 1x12x25g","56.94","69.71","2.58","VENTA *$2.58","COMPRA *$2,19x24490m","0","TIR","18.00","7709692196673","1.0000","2023-03-21 12:26:07","2023-06-06 07:18:13"),/*soy foreach */;
("1240","7592433002902","LACTOVISOY GENICA 500gs","76.60","105.92","3.92","VENTA *$3,92","COMPRA *$3,18x24070m","0","UND","23.00","7592433002902","1.0000","2023-03-21 13:27:24","2023-03-21 13:34:06"),/*soy foreach */;
("1241","0000013","VASOS P/CAFE 4 Oz C/T x Unds","2.42","5.67","0.21","VENTA *$0,21","COMPRA *$0,10x24220m","0","UND","27.00","0000013","1.0000","2023-03-21 13:29:23","2023-03-21 13:34:06"),/*soy foreach */;
("1242","0019","LACTOVIGOR 12x900","1059.08","1351.00","50.00","VENTA *$50","COMPRA *$44x24070m","0","BTO","-0.08","0019","1.0000","2023-03-21 13:32:11","2023-03-21 13:34:06"),/*soy foreach */;
("1243","0193","VASOS PLASTI #2-LLANOS 1x100","17.21","24.32","0.90","VENTA *$0,90","COMPRA *$0,65x9030m","0","PAQ","1000.00","7592149000032","0.0200","2023-03-23 09:48:26","2023-06-02 13:51:23"),/*soy foreach */;
("1244","7592149000032","VASOS PLASTI #2-LLANOS 50x100","860.28","1026.76","38.00","VENTA *$38","COMPRA *$32,5x24650m","0","BTO","-4.10","7592149000032","1.0000","2023-03-23 09:56:07","2023-06-09 14:23:51"),/*soy foreach */;
("1245","7593220000040","VASOS PLASTI #4-MINERVA-1x100","0.80","58.36","2.16","VENTA *$2,50","COMPRA *$","16","PAQ","999.00","7593220000040","1.0000","2023-03-23 10:08:42","2023-03-23 12:02:13"),/*soy foreach */;
("1246","VTVHZ1200000","VASOS PLASTI #12-ZUPLA 1x20x50","581.76","756.56","28.00","VENTA *$28","COMPRA *$24x24240m","0","BTO","-0.20","VTVHZ1200000","1.0000","2023-03-23 11:07:00","2023-06-09 14:23:51"),/*soy foreach */;
("1247","606890011609","VASOS PLASTI #14-LLANO 1x50","31.51","48.64","1.80","VENTA *$1,80","COMPRA *$1,43x26860m","0","PAQ","1000.00","10606890011606","0.0500","2023-03-23 11:11:58","2023-06-09 13:06:14"),/*soy foreach */;
("1248","10606890011606","VASOS PLASTI #14-LLANOS 1x20x50","630.24","918.68","34.00","VENTA *$34","COMPRA *$28.56x26860m","0","BTO","-3.20","10606890011606","1.0000","2023-03-23 11:15:16","2023-06-09 14:23:51"),/*soy foreach */;
("1249","0194","VASOS PLASTI #16 FAVEP 1x50","33.94","50.53","1.87","VENTA *$1,87","COMPRA *$1,43x2670m","0","PAQ","1000.00","7592149000087","0.0500","2023-03-23 11:23:22","2023-06-09 13:09:07"),/*soy foreach */;
("1250","7592149000087","VASOS PLASTI #16-FAVEP 1x20x50","678.72","891.66","33.00","VENTA *$33","COMPRA *$28.56x2670m","0","BTO","-3.20","7592149000087","1.0000","2023-03-23 11:26:05","2023-06-09 14:23:51"),/*soy foreach */;
("1251","7593220000019","VASOS PLASTI #1,5 ZUPLA 1x250","17.00","27.02","1.00","VENTA *$1","COMPRA *$0,7x24240m","0","PAQ","0.00","7593220000019","1.0000","2023-03-23 11:34:47","2023-03-23 12:02:15"),/*soy foreach */;
("1252","0000146","TABACO ELEGUA 1x50","108.90","135.91","5.03","VENTA *$5,03","COMPRA *$4,5x24240m","0","PAQ","17.00","0000146","1.0000","2023-03-23 11:40:47","2023-03-23 12:02:15"),/*soy foreach */;
("1253","7899761703274","SALCHICHA B/REZENDE 5kgs","470.34","540.40","20.00","VENTA *$20","COMPRA *$18x26130m","0","PAQ","8.99","7899761703274","1.0000","2023-03-23 11:58:33","2023-05-26 11:01:42"),/*soy foreach */;
("1254","6921769208961","PAÑAL BEH MORADO XL 1x8","53.24","67.55","2.50","VENTA *$2,5","COMPRA *$2,20x24200m","0","PAQ","19.00","6921769208961","1.0000","2023-03-23 13:01:14","2023-03-23 13:05:47"),/*soy foreach */;
("1255","6921769211176","PAÑAL BEH ROJO GDE 1x9","53.24","67.55","2.50","VENTA *$2,5","COMPRA *$2,20x24200m","0","PAQ","19.00","6921769211176","1.0000","2023-03-23 13:03:27","2023-03-23 13:05:47"),/*soy foreach */;
("1256","6921769211183","PAÑAL BEH AZUL Mdi 1x10","53.24","67.55","2.50","VENTA *$2,5","COMPRA *$2,20x24200m","0","PAQ","22.00","6921769211183","1.0000","2023-03-23 13:05:37","2023-04-05 10:25:46"),/*soy foreach */;
("1257","7891151038942","LAMPARA LED C/CABLE 100 WATI","133.10","229.67","8.50","VENTA *$8,5","COMPRA *$5,5x24200m","0","UND","1.00","7891151038942","1.0000","2023-03-24 06:30:02","2023-03-24 10:54:43"),/*soy foreach */;
("1258","7896321010483","LAMPARA LED C/CABLE 50 WATI","96.80","175.63","6.50","VENTA *$6,5","COMPRA *$4x24200m","0","UND","3.00","7896321010483","1.0000","2023-03-24 06:45:40","2023-03-24 06:51:21"),/*soy foreach */;
("1259","7861008503565","LAMPARA LED C/SOCAT 100 WATI","121.00","229.67","8.50","VENTA *$8,5","COMPRA *$5x24200m","0","UND","0.00","7861008503565","1.0000","2023-03-24 06:48:30","2023-03-24 06:51:21"),/*soy foreach */;
("1260","7891151037754","LAMPARA LED C/SOCAT 50 WATI","84.70","148.61","5.50","VENTA *$5,5","COMPRA *$3,5x24200m","0","UND","3.00","7891151037754","1.0000","2023-03-24 06:50:41","2023-03-24 06:51:21");/*soy foreach */;
INSERT INTO productos VALUES
("1261","7596173000426","DESIN.NOVA CLEAN Unds","12.15","27.02","1.00","VENTA *$1","COMPRA *$0,50x24310m","0","UND","1000.00","0196","0.0840","2023-03-24 10:32:11","2023-03-24 10:32:11"),/*soy foreach */;
("1262","7595974012027","MAYONESA QUIDY 180gs","27.28","37.83","1.40","VENTA *$1,40","COMPRA *$1,12x24300m","0","UND","16.00","7595974012027","1.0000","2023-03-24 12:31:44","2023-04-10 10:08:18"),/*soy foreach */;
("1263","740072000071","PLATOS PLAST JUMBO #9-1x10","18.70","33.78","1.25","VENTA *$1,25","COMPRA *$0,77x4600m","0","UND","1000.00","1161","0.0340","2023-03-25 12:00:24","2023-03-25 12:02:35"),/*soy foreach */;
("1264","1161","PLATOS PLAST JUMBO #9-30x10","561.20","783.58","29.00","VENTA *$29","COMPRA *$23x4600m","0","BTO","-2.09","1161","1.0000","2023-03-25 12:02:01","2023-06-09 14:23:52"),/*soy foreach */;
("1265","7591680000167","PLATOS CARTON EMP #6-1x20","3.73","31.88","1.18","VENTA *$1,18","COMPRA *$0,81x4600m","0","PAQ","1000.00","1394","0.0400","2023-03-25 12:08:52","2023-03-25 12:11:43"),/*soy foreach */;
("1266","1394","PLATOS CARTON EMP #6-25x20","988.20","1242.92","46.00","VENTA *$46","COMPRA *$40,50x4600m","0","BTO","-0.04","1394","1.0000","2023-03-25 12:11:00","2023-03-25 12:22:06"),/*soy foreach */;
("1267","7591680000181","PLATOS CARTON EMP #8-1x20","31.48","54.04","2.00","VENTA *$2","COMPRA *$1,29x4600m","0","PAQ","17.00","7591680000181","1.0000","2023-03-25 12:15:43","2023-03-25 12:22:06"),/*soy foreach */;
("1268","7893000979932","MANTEQUILLA DELINE 250gs","20.84","27.02","1.00","VENTA *$1","COMPRA *$0,85x24400m","0","UND","37.00","7893000979932","1.0000","2023-03-27 09:16:35","2023-04-22 11:43:41"),/*soy foreach */;
("1269","7891008116632","GAROTO SURT 1x16","97.56","140.50","5.20","VENTA *$5,2","COMPRA *$4x24400m","0","EST","145.00","7891008116632","1.0000","2023-03-28 08:38:29","2023-03-28 08:38:29"),/*soy foreach */;
("1270","7707285543064","VITAFER-L SOBRE 10miL","17.00","27.02","1.00","VENTA *$1","COMPRA *$0,70x24390m","0","UND","45.00","7707285543064","1.0000","2023-03-28 08:42:39","2023-03-28 08:42:39"),/*soy foreach */;
("1271","7591206003863","CHEETOS AZUL EXTRA QUESO 80gs","23.76","31.61","1.17","VENTA *$1,35","COMPRA *$0,97x24390m","16","UND","32.00","7591206003863","1.0000","2023-03-28 12:45:20","2023-05-13 10:29:38"),/*soy foreach */;
("1272","0734439146373","CHAMPIÑONES EDEN ENT 400gs","78.10","102.14","3.78","VENTA *$4,38","COMPRA *$3,20x24420m","16","UND","5.00","0734439146373","1.0000","2023-03-29 11:26:03","2023-03-29 13:39:13"),/*soy foreach */;
("1273","100","BANDEJA ALUMINIO Gde.C/T 1x10","47.36","67.55","2.50","VENTA *$2,9","COMPRA *$1,94x24420m","16","EST","16.00","100","1.0000","2023-03-29 12:02:27","2023-03-29 13:39:13"),/*soy foreach */;
("1274","7702011115249","DANDY ESTUCHE 1x18","100.12","132.94","4.92","VENTA *$4,92","COMPRA *$4,10x24420m","0","EST","-3.00","7702011115249","1.0000","2023-03-29 13:10:42","2023-05-19 08:58:02"),/*soy foreach */;
("1275","7702011115232","NUTTELINI NUCITA 1x12","51.28","68.63","2.54","VENTA *$2,54","COMPRA *$2,1x24420m","0","EST","7.00","7702011115232","1.0000","2023-03-29 13:16:56","2023-05-09 11:06:58"),/*soy foreach */;
("1276","0427","BOLSAS PLAST 1x1000x25","1159.22","1486.10","55.00","VENTA *$55","COMPRA *$47,47x24420m","0","MIL","-0.10","0427","1.0000","2023-03-30 06:41:45","2023-03-30 07:26:31"),/*soy foreach */;
("1277","0428","BOLSAS PLAST 25 kg-PAQ","115.92","162.12","6.00","VENTA *$6","COMPRA *$4,75x24420m","0","PAQ","1000.00","0427","0.1000","2023-03-30 06:45:15","2023-03-30 06:45:15"),/*soy foreach */;
("1278","0435","BOLSAS PLAST-P/CANILLA 1x100","32.58","44.58","1.65","VENTA *$1,65","COMPRA *$1,33x24420m","0","PAQ","999.00","0435","1.0000","2023-03-30 07:08:02","2023-03-30 07:26:31"),/*soy foreach */;
("1279","0434","BOLSAS PLAST-P/CANILLA 1x500","162.88","216.97","8.03","VENTA *$8,03","COMPRA *$6,67x24420m","0","PAQ","4.00","0434","1.0000","2023-03-30 07:10:58","2023-03-30 07:26:32"),/*soy foreach */;
("1280","0426","SACO PLAST TRANSP 1x37x70x20kgs","2.93","6.76","0.25","VENTA *$0,25","COMPRA *$0,12x24420m","0","UND","-1.00","0426","1.0000","2023-03-30 07:16:12","2023-03-30 07:26:32"),/*soy foreach */;
("1281","7592723104439","SALSA P/GUISOS KIERO 500gs","32.40","46.74","1.73","VENTA *$2","COMPRA *$1,35x24000m","16","UND","1.00","7592723104439","1.0000","2023-03-30 07:21:44","2023-05-17 14:32:01"),/*soy foreach */;
("1282","7592723104446","SALSA P/GUISOS KIERO 200gs","16.08","23.51","0.87","VENTA *$1","COMPRA *$0,67x24000m","16","UND","2.00","7592723104446","1.0000","2023-03-30 07:26:11","2023-03-30 07:26:32"),/*soy foreach */;
("1283","00005","CREMA D/ARROZ A/BLANCA 20x450","343.00","443.13","16.40","VENTA *$16,4","COMPRA *$14x24500m","0","BTO","1.95","00005","1.0000","2023-03-31 08:00:53","2023-03-31 08:04:23"),/*soy foreach */;
("1284","7591942001000","CREMA D/ARROZ A/BLANCA 450gs","17.15","22.97","0.85","VENTA *$0,85","COMPRA *$0,7x24500m","0","UND","1000.00","00005","0.0500","2023-03-31 08:04:08","2023-03-31 08:04:08"),/*soy foreach */;
("1285","7594003320362","SALSA INGLESA QUIDY 300gs","25.79","42.15","1.56","VENTA *$1,8","COMPRA *$1,05x24490m","16","UND","10.00","7594003320362","1.0000","2023-03-31 11:09:28","2023-05-17 14:32:00"),/*soy foreach */;
("1286","7791293042718","DESOD.AXE HOMBRE 150cc","66.12","89.71","3.32","VENTA *$3,85","COMPRA *$2,70x24490m","16","UND","11.00","7791293042718","1.0000","2023-03-31 11:14:09","2023-05-16 07:22:50"),/*soy foreach */;
("1287","6910161236573","CANDADO A/SISALLAS ALLISON Gde","196.24","756.56","28.00","VENTA *$28","COMPRA *$8x24530m","0","UND","4.00","6910161236573","1.0000","2023-04-01 13:26:24","2023-04-01 13:26:24"),/*soy foreach */;
("1288","7702174061995","CARAMELOS MORITA ALDOR 1x100","22.77","54.04","2.00","VENTA *$2","COMPRA *$1,33x17120m","0","BOL","26.00","7702174061995","1.0000","2023-04-11 08:21:14","2023-05-19 06:45:20"),/*soy foreach */;
("1289","7702993020890","CHUPETAS LOKIÑO 1x24","35.77","51.34","1.90","VENTA *$1,90","COMPRA *$1,47x24390m","0","BOL","30.00","7702993020890","1.0000","2023-04-11 11:48:02","2023-04-11 11:48:02"),/*soy foreach */;
("1290","7591397060348","YESQUEROS M&K-LEXUS 1x50","135.57","202.65","7.50","VENTA *$7,5","COMPRA *$5,5x24650m","0","EST","8.00","7591397060348","1.0000","2023-04-22 09:24:21","2023-04-22 09:24:21"),/*soy foreach */;
("1291","0972","YESQUEROS M&K Unds","2.71","5.40","0.20","VENTA *$0,20","COMPRA *$0,11x24650m","0","UND","1000.00","7591397060348","0.0200","2023-04-22 09:27:25","2023-04-22 09:27:25"),/*soy foreach */;
("1292","7593751000151","YESQUEROS WINGS 1x50","172.55","229.67","8.50","VENTA *$8,5","COMPRA *$6,7x24650m","0","EST","3.00","7593751000151","1.0000","2023-04-22 11:15:11","2023-04-22 11:15:11"),/*soy foreach */;
("1293","7591289601321","SALCHICHA POLLO CORRAL 450gs","59.06","77.55","2.87","VENTA *$3,33","COMPRA *$2,4x24650m","0","UND","1000.00","7591289601321","1.0000","2023-04-25 07:18:03","2023-04-25 07:18:03"),/*soy foreach */;
("1294","0182","DETERG.TRES ENE 1x25x400g","394.40","491.49","18.19","VENTA *$21.1","COMPRA *$16x24565m","16","BTO","2.00","0182","1.0000","2023-04-25 07:35:39","2023-04-25 07:35:39"),/*soy foreach */;
("1295","592800005161","DETERG.TRES ENE 400gs","15.78","22.70","0.84","VENTA *$0,97","COMPRA *$0,64x24650m","16","UND","1000.00","0182","0.0400","2023-04-25 07:43:40","2023-04-25 07:43:40"),/*soy foreach */;
("1296","7592800006137","DETERG.TRES ENE 1kgs","37.49","52.15","1.93","VENTA *$2.23","COMPRA *$1,52x24565m","16","UND","1000.00","0845","0.0840","2023-04-25 07:48:49","2023-04-25 07:48:49"),/*soy foreach */;
("1297","7590044000010","BOCADILLO DE GUAYABA L/C 1x20","54.14","77.01","2.85","VENTA *$2,85","COMPRA *$2,2x24610m","0","EST","35.00","7590044000010","1.0000","2023-04-25 12:48:29","2023-04-25 12:48:29"),/*soy foreach */;
("1298","0471","CHUPETAS EL CHAVO PLNA 1x15","36.91","52.69","1.95","VENTA *$1,95","COMPRA *$1,5x24610","0","BOL","27.00","0471","1.0000","2023-04-25 12:58:37","2023-05-10 09:33:44"),/*soy foreach */;
("1299","7898423403941","CHUPETAS EN ROLLADA 1x30","36.91","52.69","1.95","VENTA *$1,95","COMPRA *$1,5x24610m","0","BOL","20.00","7898423403941","1.0000","2023-04-25 13:02:56","2023-05-13 12:32:21"),/*soy foreach */;
("1300","7896259416180","LECHE COND CAMPONESA 395gs","46.90","62.15","2.30","VENTA *$2,30","COMPRA *$1,93x24300m","0","UND","12.00","7896259416180","1.0000","2023-04-26 13:02:31","2023-04-26 13:02:31"),/*soy foreach */;
("1301","7702174077804","CHUPETAS P/POP MORA LOCA 1x24","33.12","41.88","1.55","VENTA *$1,55","COMPRA *$1,38x5610m","0","PAQ","10.00","7702174077804","1.0000","2023-04-27 11:21:27","2023-04-27 11:21:27"),/*soy foreach */;
("1302","SAL01","SALCHICHON ITALGUARICO ENTE","836.05","1080.80","40.00","VENTA *$40","COMPRA *$33,94x24630m","0","KGS","2.50","SAL01","1.0000","2023-04-29 11:32:05","2023-04-29 11:32:05"),/*soy foreach */;
("1303","SAL02","SALCHICHON ITALGUARICO REBA","836.05","1215.90","45.00","VENTA *$45","COMPRA *$33,94x24750m","0","KGS","1000.00","SAL01","1.0000","2023-04-29 11:33:51","2023-04-29 11:33:51"),/*soy foreach */;
("1304","7594003691530","SALCHICHA MEISTER POLACA 1x5","138.01","180.22","6.67","VENTA *$6,67","COMPRA *$5,6x24630m","0","PAQ","8.00","7594003691530","1.0000","2023-04-29 11:48:14","2023-04-29 11:48:14"),/*soy foreach */;
("1305","7591794090153","AVENA PANTERA ENTER 400gs","20.79","27.02","1.00","VENTA *$1,00","COMPRA *$0,82x25350m","0","UND","45.00","7591794090153","1.0000","2023-04-29 11:52:07","2023-05-16 07:22:50"),/*soy foreach */;
("1306","7591794090177","AVENA PANTERA ENTER 800gs","43.28","62.15","2.30","VENTA *$2,30","COMPRA *$1,75x24730m","0","UND","12.00","7591794090177","1.0000","2023-04-29 12:11:59","2023-04-29 12:11:59"),/*soy foreach */;
("1307","0106","QUESO AMARILLO EMANUEL REB","218.73","301.27","11.15","VENTA *$11,15","COMPRA *$8,88x24730m","0","KGS","1000.00","000107","1.0000","2023-04-29 12:19:21","2023-04-29 12:19:21"),/*soy foreach */;
("1308","1294","QUESO AMARILLO TABLON REB","226.46","310.73","11.50","VENTA *$11,5","COMPRA *$9,15x24630","0","KGS","1000.00","07592541000135","1.0000","2023-04-29 12:54:26","2023-04-29 12:54:26"),/*soy foreach */;
("1309","8993379108045","JABON P/BAÑO ANITA 80gs","11.34","18.64","0.69","VENTA *$0,69","COMPRA *$0,46x24750","0","UND","250.00","8993379108045","1.0000","2023-04-29 14:07:18","2023-04-29 14:07:18"),/*soy foreach */;
("1310","7596612000994","JABON P/BAÑO AVENA 80gs","7.39","12.97","0.48","VENTA *$0,48","COMPRA *$0,30x24750m","0","UND","119.00","7596612000994","1.0000","2023-04-29 14:08:46","2023-06-07 08:05:43"),/*soy foreach */;
("1311","7591316000110","PAN DE LECHE ONCE ONCE 1x6","10.94","69.98","2.59","VENTA *$3","COMPRA *$2x5470m","16","EST","4.00","7591316000110","1.0000","2023-05-05 08:37:57","2023-05-05 08:37:57"),/*soy foreach */;
("1312","1449","PAN LA BURRA 1x2","37.54","46.47","1.72","VENTA *$1,72","COMPRA *$1,50x25030m","0","PAQ","2.00","1449","1.0000","2023-05-05 08:41:29","2023-05-05 08:41:29"),/*soy foreach */;
("1313","7702742004478","PAN RAYADO 1/2 KILO","23.44","31.07","1.15","VENTA *$1,15","COMPRA *$0,9x26040m","0","BOL","9.00","7702742004478","1.0000","2023-05-05 08:51:40","2023-05-25 08:21:14"),/*soy foreach */;
("1314","9003810000001","QUESO MOZZARELLA ZEDEÑO REB","211.86","297.22","11.00","VENTA *$11","COMPRA *$8,56x24750m","0","KIL","1000.00","0309","1.0000","2023-05-05 12:08:04","2023-05-05 12:08:04"),/*soy foreach */;
("1315","1164","QUESO AMARILLO PRATO ENT","231.03","283.71","10.50","VENTA *$10,50","COMPRA *$9,23x24630m","0","KGS","14.00","1164","1.0000","2023-05-05 12:11:18","2023-05-05 12:33:55"),/*soy foreach */;
("1316","00252","QUESO AMARILLO PRATO REB","231.03","310.73","11.50","VENTA *$11,5","COMPRA *$9,23x24630m","0","KGS","1000.00","1164","1.0000","2023-05-05 12:15:02","2023-05-05 12:15:02"),/*soy foreach */;
("1317","0162","REFRESCO SUN-COLA 24x400","195.47","226.43","8.38","VENTA *$8,38","COMPRA *$7,8x25060m","0","CAJ","9.00","0162","1.0000","2023-05-06 11:44:23","2023-05-06 11:48:11"),/*soy foreach */;
("1318","7891008156973","GAROTO SURT 1x8","52.63","70.25","2.60","VENTA *$2,6","COMPRA *$2,1x25060m","0","EST","16.00","7891008156973","1.0000","2023-05-08 09:54:00","2023-05-08 09:54:00"),/*soy foreach */;
("1319","0740","BANDEJA ANIME 1-POLLO CT-1x50","103.00","189.14","7.00","VENTA *$7","COMPRA *$4,11x25060m","0","PAQ","2.00","0740","1.0000","2023-05-08 11:30:45","2023-05-08 11:30:45"),/*soy foreach */;
("1320","6981686703154","BANDEJA ANIME P/PERRO CTK-1x50","112.77","162.12","6.00","VENTA *$6","COMPRA *$4,5x25060m","0","PAQ","2.00","6981686703154","1.0000","2023-05-08 11:33:38","2023-05-08 11:33:38"),/*soy foreach */;
("1321","0578","BANDEJA ANIME HAMBURGUES CT-1 1x50","75.18","162.12","6.00","VENTA *$6","COMPRA *$3x25060m","0","PAQ","2.00","0578","1.0000","2023-05-08 11:35:56","2023-05-08 11:35:56"),/*soy foreach */;
("1322","75903183","BANDEJA ANIME CHARC.LLANA 1x250","221.78","351.26","13.00","VENTA *$13","COMPRA *$8,85x25060m","0","PAQ","1000.00","1486","0.5000","2023-05-08 12:02:43","2023-05-08 12:11:01"),/*soy foreach */;
("1323","1486","BANDEJA ANIME CHARC.LLANA 1x500","443.56","648.48","24.00","VENTA *$24","COMPRA *$17,7x859m","0","BTO","12.00","1486","1.0000","2023-05-08 12:07:31","2023-05-08 12:07:31"),/*soy foreach */;
("1324","7702024068310","COCOSETTE 1x8","95.11","124.02","4.59","VENTA *$4,59","COMPRA *$3,8x25030m","0","PAQ","11.00","7702024068310","1.0000","2023-05-09 13:39:02","2023-05-09 13:53:16"),/*soy foreach */;
("1325","7702024066583","COCOSETTE SANDWICH 1x12x4","70.08","91.87","3.40","VENTA *$3,40","COMPRA *$2,80x25030m","0","PAQ","19.00","7702024066583","1.0000","2023-05-09 13:41:10","2023-06-01 09:12:34"),/*soy foreach */;
("1326","7702007030112","CHOCOLATE JET 1x24x288gs","112.64","156.72","5.80","VENTA *$5,8","COMPRA *$4,50x25030m","0","EST","10.00","7702007030112","1.0000","2023-05-09 13:47:42","2023-05-26 09:16:10"),/*soy foreach */;
("1327","CHUPE01","CHUPETAS EN TIRAS 1x10","8.01","11.89","0.44","VENTA *$0,44","COMPRA *$0,32x25030m","0","TIR","135.00","CHUPE01","1.0000","2023-05-09 14:02:56","2023-05-30 12:15:57"),/*soy foreach */;
("1328","512555244547","GALLETAS RELLE/GUAYABA 1x24","95.11","121.59","4.50","VENTA *$4,5","COMPRA *$3,80x25030m","0","EST","13.00","512555244547","1.0000","2023-05-09 14:09:16","2023-05-11 07:48:38"),/*soy foreach */;
("1329","7593716000165","TAMARINDO CHUP/FIESTA 1x24","45.05","60.80","2.25","VENTA *$2,25","COMPRA *$1,8x25030m","0","EST","16.00","7593716000165","1.0000","2023-05-09 14:33:30","2023-05-11 07:48:38"),/*soy foreach */;
("1330","0000114","VINAGRE QUIDY 12x500","200.24","326.13","12.07","VENTA *$14","COMPRA *$8x5310m","16","CJA","-2.32","0000114","1.0000","2023-05-09 14:35:23","2023-05-11 07:48:38"),/*soy foreach */;
("1331","7594003321833","VINAGRE QUIDY 500gs","8.34","14.05","0.52","VENTA *$0,6","COMPRA *$0,33x25030m","16","UND","1000.00","0000114","0.0840","2023-05-09 14:39:06","2023-05-09 14:39:06"),/*soy foreach */;
("1332","7591145333748","CHUPETAS TORNEADA 1x30","45.05","61.61","2.28","VENTA *$2,28","COMPRA *$1,8x25030m","0","BOL","28.00","7591145333748","1.0000","2023-05-10 07:31:12","2023-05-10 07:31:12"),/*soy foreach */;
("1333","5768421155550","COMBO PIÑATERO EL CHAVO","72.59","94.57","3.50","VENTA *$3,5","COMPRA *$2,9x520m","0","BOL","27.00","5768421155550","1.0000","2023-05-10 07:33:07","2023-05-10 09:33:44"),/*soy foreach */;
("1334","7896451904850","CARAMELOS NEYFRA SURT.1x100","22.53","28.10","1.04","VENTA *$1,04","COMPRA *$0,90x25030m","0","BOL","59.00","7896451904850","1.0000","2023-05-10 07:35:26","2023-05-30 12:15:57"),/*soy foreach */;
("1335","PIÑ07","PIÑATA CUADRADA GRANDE","0.00","162.12","6.00","VENTA *$6","COMPRA *$","0","UND","10.00","PIÑ07","1.0000","2023-05-10 10:56:47","2023-05-10 10:56:47"),/*soy foreach */;
("1336","760203000015","MASMELO BOLSA MILLOWS 1x100","44.62","58.36","2.16","VENTA *$2,50","COMPRA *$1,76x25350m","16","BOL","8.00","760203000015","1.0000","2023-05-13 10:07:31","2023-05-13 11:34:26"),/*soy foreach */;
("1337","037100036622","MAIZ ENTERO LIBBYS 432gs","51.97","67.01","2.48","VENTA *$2,87","COMPRA *$2,05x25350m","16","UND","10.00","037100036622","1.0000","2023-05-13 10:23:27","2023-05-13 11:34:26"),/*soy foreach */;
("1338","7707337524669","TO-TOX SURT.MAIZ 1x12x25g","71.50","86.46","3.20","VENTA *$3,20","COMPRA *$2,75x26000m","0","TIR","21.00","7707337524669","1.0000","2023-05-13 11:28:15","2023-06-06 07:18:13"),/*soy foreach */;
("1339","2300002562451","VAINILLA MI GUSTO 150cc","21.62","27.02","1.00","VENTA *$1","COMPRA *$0,85x25440m","0","UND","19.00","2300002562451","1.0000","2023-05-13 11:32:52","2023-05-13 11:34:27"),/*soy foreach */;
("1340","7702006205399","JABON P/BAÑO REXONA Und 125gs","25.10","32.15","1.19","VENTA *$1,38","COMPRA *$0,99x25350m","16","UND","22.00","7702006205399","1.0000","2023-05-15 14:19:45","2023-05-16 07:22:50"),/*soy foreach */;
("1341","78924345","DESOD.REXONA SURTIDOS 50cc","50.19","68.90","2.55","VENTA *$2,95","COMPRA *$1,98x25350m","16","UND","25.00","78924345","1.0000","2023-05-15 14:24:59","2023-05-16 07:22:50"),/*soy foreach */;
("1342","7702425801288","TOALLAS KOTEX DISCRTA 1x10","25.15","35.13","1.30","VENTA *$1,50","COMPRA *$0,99x25350m","16","EST","15.00","7702425801288","1.0000","2023-05-16 07:52:22","2023-05-16 07:59:33"),/*soy foreach */;
("1343","7702425800779","TOALLAS KOTEX NORMAL 1x10","26.57","35.13","1.30","VENTA *$1,50","COMPRA *$1,05x25350m","16","EST","11.00","7702425800779","1.0000","2023-05-16 07:55:35","2023-05-16 07:59:33"),/*soy foreach */;
("1344","759121908068","PAPEL ALUMI GRANCO 7mt Unds","47.69","59.17","2.19","VENTA *$2,53","COMPRA *$1,88x25440m","16","UND","22.00","759121908068","1.0000","2023-05-17 13:17:52","2023-05-17 14:32:00"),/*soy foreach */;
("1345","7591221176108","VINAGRE IBERIA 1Lts","26.81","36.21","1.34","VENTA *$1.55","COMPRA *$1,05x2572m","16","UND","998.00","7591221176108","1.0000","2023-05-17 13:31:54","2023-05-17 14:32:00"),/*soy foreach */;
("1346","7591221110669","PASTA TTE IBERIA 200gs","44.07","59.44","2.20","VENTA *$2,55","COMPRA *$1,73x25440m","16","UND","23.00","7591221110669","1.0000","2023-05-17 14:13:50","2023-05-17 14:32:00"),/*soy foreach */;
("1347","7591221826003","COMBO IBERIA-SALSA Y MOSTAZA","62.32","81.87","3.03","VENTA *$3,51","COMPRA *$2,45x2440m","16","COM","11.00","7591221826003","1.0000","2023-05-17 14:28:43","2023-05-17 14:32:01"),/*soy foreach */;
("1348","1228","COMBO D/SALSA PAZAM 1x8x3","307.00","405.30","15.00","VENTA *$15","COMPRA *$12x5500m","0","CJA","1.00","1228","1.0000","2023-05-17 14:31:51","2023-05-17 14:32:01"),/*soy foreach */;
("1349","7592433000137","LECHE CAMPESTRE 500gs","111.66","135.10","5.00","VENTA *$5","COMPRA *$4,44x25810m","0","UND","18.00","7592433000137","1.0000","2023-05-18 11:08:51","2023-05-18 11:35:04"),/*soy foreach */;
("1350","7591082000284","GALLETAS MARILU TUBO SURT.1x6","22.98","28.10","1.04","VENTA *$1,20","COMPRA *$0,89x25810m","16","TUB","60.00","7591082000284","1.0000","2023-05-18 12:17:07","2023-06-08 12:01:20"),/*soy foreach */;
("1351","7591098800243","SERVILLETAS \"Z\" Gde 1x300-NOOOO HAYYYY","38.61","49.99","1.85","VENTA *$1,85","COMPRA *$1,49x25900m","0","UND","29.00","7591098800243","1.0000","2023-05-19 13:06:34","2023-05-19 13:58:28"),/*soy foreach */;
("1352","7591098800687","SERVILLETAS \"Z\" Peq.1x160-NOOOO-HAYYYY","17.61","24.32","0.90","VENTA *$0,9","COMPRA *$0,68x25900m","0","UND","39.00","7591098800687","1.0000","2023-05-19 13:09:09","2023-05-19 13:58:28"),/*soy foreach */;
("1353","7591098000810","PAPEL HIG ROSAL VERDE PLUS 1x2","12.24","16.75","0.62","VENTA *$0,62","COMPRA *$0,47x25900","0","EST","23.00","7591098000810","1.0000","2023-05-19 13:56:34","2023-05-19 13:58:29"),/*soy foreach */;
("1354","7591098000827","PAPEL HIG ROSAL V/T300 HOJA 1x2","20.30","27.02","1.00","VENTA *$1","COMPRA *$0,78x25900m","0","EST","11.00","7591098000827","1.0000","2023-05-19 13:58:19","2023-05-19 13:58:29"),/*soy foreach */;
("1355","7592052000471","REFRESCO BIG-COLA 6x2","130.00","145.91","5.40","VENTA *$5,40","COMPRA *$5x26000m","0","CAJ","26.83","7592052000471","1.0000","2023-05-24 09:57:26","2023-06-01 09:24:11"),/*soy foreach */;
("1356","7592969000373","BONCHITOS G/MARCA 1x12","174.96","206.16","7.63","VENTA *$8,85","COMPRA *$6,72x26040m","16","TIR","12.00","7592969000373","1.0000","2023-05-25 12:49:22","2023-05-25 12:49:22"),/*soy foreach */;
("1357","7592969000236","PLATANITOS GRAN MARCA 1x12","209.40","244.80","9.06","VENTA *$10.50","COMPRA *$8,04x26040m","16","TIR","5.00","7592969000236","1.0000","2023-05-25 12:53:07","2023-05-25 12:53:07"),/*soy foreach */;
("1358","0498","ARROZ SOJO 24x1Kg","617.34","697.12","25.80","VENTA *$25.8","COMPRA *$23,5x26040m","0","PAC","14.00","0498","1.0000","2023-05-25 13:02:53","2023-06-07 06:53:40"),/*soy foreach */;
("1359","7593495000035","ARROZ SOJO 1Kgs","25.72","29.72","1.10","VENTA *$1,10","COMPRA *$0,98x26040m","0","UND","1000.00","0498","0.0420","2023-05-25 13:06:05","2023-05-29 10:33:48"),/*soy foreach */;
("1360","7593312785640","SALSA Q/CHEDDAR GOODY 3,5kg","156.78","216.16","8.00","VENTA *$8","COMPRA *$6x26130m","0","UND","2.00","7593312785640","1.0000","2023-05-26 07:48:09","2023-05-26 07:48:09");/*soy foreach */;
INSERT INTO productos VALUES
("1361","1001","LIGAS P/BILLETES BOLSA","18.92","29.72","1.10","VENTA *$1,10","COMPRA *$0,86x22m","0","BOL","44.00","1001","1.0000","2023-05-26 08:24:55","2023-05-26 08:24:55"),/*soy foreach */;
("1362","7702354953546","ENERGYSANTE AMPER 473ml","25.08","37.29","1.38","VENTA *$1,38","COMPRA *$0,96x26130m","0","UND","40.00","7702354953546","1.0000","2023-05-26 12:19:24","2023-05-26 12:19:24"),/*soy foreach */;
("1363","7702354946463","ENERGYSANTE SPARTAN 269ml","12.80","19.72","0.73","VENTA *$0,73","COMPRA *$0,49x26130m","0","UND","40.00","7702354946463","1.0000","2023-05-26 12:21:23","2023-05-26 12:21:23"),/*soy foreach */;
("1364","7592103000535","REFRESCO BIG-COLA 2Lts","21.67","27.02","1.00","VENTA *$1","COMPRA *$0,83x26130m","0","UND","1000.00","7592052000471","0.1670","2023-05-26 12:47:32","2023-05-26 12:47:32"),/*soy foreach */;
("1365","7708092371284","JUGO PULP SURT 1x6x250ml","81.66","108.08","4.00","VENTA *$4","COMPRA *$3,13x26130m","0","EST","22.00","7708092371284","1.0000","2023-05-26 12:49:29","2023-05-26 12:49:29"),/*soy foreach */;
("1366","0000250","SARDINA MORRO TTE 18x170g","287.43","348.56","12.90","VENTA *$12,9","COMPRA *$11x26130m","0","CJA","10.00","0000250","1.0000","2023-05-26 13:58:47","2023-05-26 13:58:47"),/*soy foreach */;
("1367","1127","FIAMBRE EL VALLE ENT","125.69","162.12","6.00","VENTA *$6","COMPRA *$4,81x25810m","0","KGS","35.00","1127","1.0000","2023-05-29 14:05:43","2023-05-29 14:10:14"),/*soy foreach */;
("1368","0198","FIAMBRE EL VALLE REB","125.69","175.63","6.50","VENTA *$6,5","COMPRA *$4,81x25810m","0","KGS","1000.00","1127","1.0000","2023-05-29 14:07:47","2023-05-29 14:07:47"),/*soy foreach */;
("1369","7592708001913","TORTILLITAS PIZZA MUNCHY 150gs","41.62","50.53","1.87","VENTA *$1.87","COMPRA *$1.58x26270m","0","UND","15.00","7592708001913","1.0000","2023-05-30 13:42:11","2023-05-30 13:42:41"),/*soy foreach */;
("1370","7596817000058","SALSA TTE DI NONA 525gs","47.96","62.15","2.30","VENTA *$2,30","COMPRA *$1,83x26160m","0","UND","12.00","7596817000058","1.0000","2023-05-31 11:09:27","2023-05-31 11:09:27"),/*soy foreach */;
("1371","7591502002034","GALLETAS M/TRIGO D/ORO 1x6","11.51","15.40","0.57","VENTA *$0.57","COMPRA *$0.44x26160m","0","PAQ","106.00","7591502002034","1.0000","2023-05-31 11:19:03","2023-06-10 08:52:00"),/*soy foreach */;
("1372","7896253401465","GALLETAS RANCHERA","26.27","31.88","1.18","VENTA *$1,18","COMPRA *$1x26270m","0","BOL","29.00","7896253401465","1.0000","2023-06-01 10:52:21","2023-06-01 10:58:04"),/*soy foreach */;
("1373","7591016115206","CERELAC EN SOBRE 100gs","34.22","44.85","1.66","VENTA *$1,66","COMPRA *$1,35x25350m","0","UND","21.00","7591016115206","1.0000","2023-06-03 10:58:56","2023-06-03 13:06:33"),/*soy foreach */;
("1374","7891032015505","ESPONJA DOBLE USO 1x12","78.48","99.97","3.70","VENTA *$3,70","COMPRA *$3x26160m","0","EST","23.00","7891032015505","1.0000","2023-06-03 13:12:20","2023-06-03 13:27:25"),/*soy foreach */;
("1375","7593209000092","SALSA TTE BOLSA L/VIÑA 3,8kg","150.29","178.33","6.60","VENTA *$6.6","COMPRA *$5.68x2646","0","BOL","19.00","7593209000092","1.0000","2023-06-05 13:08:42","2023-06-07 10:33:55"),/*soy foreach */;
("1376","0350","JUGO CELEMA SURT 1x3","29.90","39.72","1.47","VENTA *$1.47","COMPRA *$1.13x2646m","0","EST","54.00","0350","1.0000","2023-06-06 11:43:26","2023-06-06 11:54:10"),/*soy foreach */;
("1377","0561","TOCINETA BOLSA L/VIÑA 3,3kg","163.52","195.90","7.25","VENTA *$7,25","COMPRA *$6,18x2646m","0","BOL","3.00","0561","1.0000","2023-06-06 11:53:32","2023-06-07 10:35:42"),/*soy foreach */;
("1378","2334467989900","ESPAGUETTI MUTTE 12x1","266.30","351.26","13.00","VENTA *$13","COMPRA *$10x26630m","0","CAJ","2.00","2334467989900","1.0000","2023-06-07 08:39:49","2023-06-07 08:39:49"),/*soy foreach */;
("1379","0807","DE TODITO RESUELTO JACKS 12x45g","191.00","219.13","8.11","VENTA *$9.40","COMPRA *$7,17x26630m","16","TIR","3.00","0807","1.0000","2023-06-07 12:42:29","2023-06-07 12:42:29"),/*soy foreach */;
("1380","0966","CONDIMENTOS SURT.SOLHANS 1x24","46.27","81.06","3.00","VENTA *$3","COMPRA *$2,4x1100m","0","TIR","40.00","0966","1.0000","2023-06-08 13:12:41","2023-06-08 13:12:41"),/*soy foreach */;
("1381","BOSLA","BOLSA 25 KGS UND","1.00","2.70","0.10","VENTA *$0.1","COMPRA *$0,05x2900m","0","UND","100.00","BOSLA","1.0000","2023-06-08 13:14:27","2023-06-08 13:14:27"),/*soy foreach */;
("1382","759126003870","CHEETOS AZUL XXL 150gs","44.59","53.77","1.99","VENTA *$2.31","COMPRA *$1,66x26860m","16","UND","2.00","759126003870","1.0000","2023-06-10 07:29:40","2023-06-10 07:38:14"),/*soy foreach */;
("1383","7591206001210","CHICHARRON JACKS PCTE FAMLAR","45.37","53.77","1.99","VENTA *$2,3","COMPRA *$1,69x26860m","16","UND","17.00","7591206001210","1.0000","2023-06-10 07:32:47","2023-06-10 07:38:14"),/*soy foreach */;
("1384","7591206282787","TOSTITOS JACKS 140gs","28.71","33.78","1.25","VENTA *$1.45","COMPRA *$1.07x26860m","16","BOL","5.00","7591206282787","1.0000","2023-06-10 07:37:35","2023-06-10 07:38:14"),/*soy foreach */;
("1385","7591206282862","TOSTITOS JACKS XXL 400gs","68.08","81.60","3.02","VENTA *$3.5","COMPRA *$2.53x26860m","16","BOL","2.00","7591206282862","1.0000","2023-06-10 07:57:12","2023-06-10 08:04:43"),/*soy foreach */;
("1386","7591206282671","DE TODITO JACKS RESUELTO XXL 400gs","96.09","108.62","4.02","VENTA *$4.66","COMPRA *$3.58x26860m","16","BOL","2.00","7591206282671","1.0000","2023-06-10 08:00:04","2023-06-10 08:04:43"),/*soy foreach */;
("1387","7591206003528","DE TODITO JACKS QUESO XXL 320gs","81.97","93.76","3.47","VENTA *$4,02","COMPRA *$3.05x26860m","16","BOL","2.00","7591206003528","1.0000","2023-06-10 08:04:12","2023-06-10 08:04:43");




CREATE TABLE `productos_vendidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_venta` bigint unsigned NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_barras` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `cantidad` decimal(9,2) NOT NULL,
  `iva` int NOT NULL DEFAULT '0',
  `und` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_vendidos_id_venta_foreign` (`id_venta`),
  CONSTRAINT `productos_vendidos_id_venta_foreign` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO productos_vendidos VALUES
("334","4","GALLETAS RADICAL TUBO UNDS","7896423702569","10.98","1.00","0","TUB","2023-02-20 06:33:36","2023-02-20 06:33:36"),/*soy foreach */;
("339","5","GALLETAS RADICAL TUBO UNDS","7896423702569","11.00","1.00","0","TUB","2023-04-05 11:04:17","2023-04-05 11:04:17"),/*soy foreach */;
("342","8","GALLETAS RADICAL TUBO UNDS","7896423702569","11.01","1.00","0","TUB","2023-04-12 11:38:54","2023-04-12 11:38:54"),/*soy foreach */;
("350","15","QUESO BLANCO LLANERO","1358","150.86","0.50","0","KIL","2023-05-23 07:24:32","2023-05-23 07:24:32"),/*soy foreach */;
("351","15","ESPAGUETTI SAVANA 500g (0,65)","7896423701005","20.81","2.00","0","UND","2023-05-23 07:24:32","2023-05-23 07:24:32"),/*soy foreach */;
("352","15","HARINA PAN BLANCA 1KG","7591002000011","33.29","1.00","0","UND","2023-05-23 07:24:32","2023-05-23 07:24:32"),/*soy foreach */;
("353","15","HARINA KALY AMARILLA 1KILO","7597765000039","23.41","1.00","0","UND","2023-05-23 07:24:32","2023-05-23 07:24:32"),/*soy foreach */;
("354","15","DETERG.BEMT-TE-VI 5OOGS","7898031171201","27.31","1.00","0","UND","2023-05-23 07:24:32","2023-05-23 07:24:32");




CREATE TABLE `tazas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `taza` decimal(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO tazas VALUES
("1","27.02","2022-12-19 08:43:39","2023-06-10 08:05:18");




CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO users VALUES
("1","Pedro Mata","matap05@gmail.com","","$2y$10$e84jYgzvNHvzy9rGFB3nIu7C3gkS2z6MgFlD4FMANahyA9sJo0Eae","","2022-10-20 07:32:51","2022-10-20 07:32:51");




CREATE TABLE `ventas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` bigint unsigned NOT NULL,
  `taza` decimal(9,2) NOT NULL DEFAULT '1.00',
  `efectivo` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_id_cliente_foreign` (`id_cliente`),
  CONSTRAINT `ventas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*soy ciclo for i = 0 */;/*soy foreach */;
INSERT INTO ventas VALUES
("4","2023-02-20 06:33:33","2023-02-20 06:33:33","16","1.00","0.00","0.00"),/*soy foreach */;
("5","2023-04-05 11:04:17","2023-04-05 11:04:17","16","1.00","0.00","0.00"),/*soy foreach */;
("8","2023-04-12 11:38:54","2023-04-12 11:38:54","16","1.00","0.00","0.00"),/*soy foreach */;
("15","2023-05-23 07:24:31","2023-05-23 07:24:31","1","26.01","201.06","201.06");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;