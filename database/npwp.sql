-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2023 at 05:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faktur_pajak`
--

-- --------------------------------------------------------

--
-- Table structure for table `npwp`
--

CREATE TABLE `npwp` (
  `id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kode` varchar(255) NOT NULL,
  `npwp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `npwp`
--

INSERT INTO `npwp` (`id`, `nama`, `kode`, `npwp`) VALUES
(2143, 'ALAM JAYA (AGUS)', 'SIN-A002', '478402027806000'),
(2144, 'CENTRAL ACCU (RUSLAN WIRYO)', 'MAR-C003', '97907596804000'),
(2145, 'CV.AGUNG JAYA MOTOR', 'GOW-A005', '664151925807000'),
(2146, 'CV.AJM', 'BTL-A010C', '838445245801000'),
(2147, 'CV.ANZHO', 'PNK-A022', '23857873812000'),
(2148, 'CV.ATLANTIC EXPRES', 'TAL-A008', '32608416801000'),
(2149, 'CV.BANDANG MOTORINDO', 'BTL-B003', '412966913801000'),
(2150, 'CV.BELANTARA CREATIVE', 'TAL-B006', '25577552801000'),
(2151, 'CV.BINTANG CAKTI', 'TAL-B002', '18330357801000'),
(2152, 'CV.BINTANG MAS SEJAHTERA', 'UPG-B005', '31662174804000'),
(2153, 'CV.BOSTEC PRIMA ENNGINEERING', 'BRK-B023', '833995319801000'),
(2154, 'CV.BUDI JAYA MOTOR', 'BTN-B002', '317074243807000'),
(2155, 'CV.CIPTA PARAMULA SEJATI', 'UPG-C001A', '14126338801000'),
(2156, 'CV.DEMAK PUTRA SENTOSA', 'SRB-D002', '832756903605000'),
(2157, 'CV.DHAN TRANS', 'TLR-D001', '704803972801000'),
(2158, 'CV.DUNIA BAN', 'BTL-D002', '18328617801000'),
(2159, 'CV.GAJAH MADA MOTOR', 'MKS-G001', '29108354805000'),
(2160, 'CV.HAMEGA DUA', 'SID-H004A', '765116264802000'),
(2161, 'CV.HARMAN JAYA', 'BON-H007', '28547289808000'),
(2162, 'CV.INDOJAYA BAN PRATAMA', 'PNK-I002', '21006705812000'),
(2163, 'CV.INTAN MOTOR', 'BTL-I001', '835552381801000'),
(2164, 'CV.KASIGUNCU', 'PSO-K001', '820444750833000'),
(2165, 'CV.MAKASSAR AUTO FIT', 'MGL-M004', '31875784805000'),
(2166, 'CV.MAKKURAGA TAMA', 'SOP-L002A', '31092323808000'),
(2167, 'CV.MAKMUR', 'BTL-M005A', '16394207805000'),
(2168, 'CV.MELATI SUKSES MANDIRI', 'MKT-M001A', '801412339803000'),
(2169, 'CV.MITRA TEKNIK ABADI', 'JKT-M006', '317381879451000'),
(2170, 'CV.MOLINDO INTI PERKASA', 'WAJ-P017Q', '25576786801000'),
(2171, 'CV.MOTOMANIA INDONESIA', 'MKS-M013', '938314747805000'),
(2172, 'CV.NANANG', 'PNK-N003', '802979815805000'),
(2173, 'CV.OLI MOTOR', 'WAJ-O001A', '811027945801000'),
(2174, 'CV.ONDENG JAYA', 'MGL-O003', '965655699805000'),
(2175, 'CV.PANCA MANGGALA MULIA', '', '807840111801000'),
(2176, 'CV.PELITA HARAPAN SENTOSA', 'BTL-S024C', '903872893801000'),
(2177, 'CV.PEMUDA MANDIRI FOOD', 'MRS-P006', '31295009809000'),
(2178, 'CV.PRIMA SENTOSA', 'TAL-P004', '19659341801000'),
(2179, 'CV.PUTRA JAYA ABADI', 'PRE-J002D', '660564717801000'),
(2180, 'CV.PUTRA SANUR MANDIRI', 'GOW-P010', '31676513807000'),
(2181, 'CV.RAHMA TANI 35', 'KKA-R005-MK', '709202022815000'),
(2182, 'CV.REMAJA TEKNIK', 'BRK-R019', '768614273801000'),
(2183, 'CV.SARANA CIPTA MANDIRI', 'MAM-S007-MK', '24737405814000'),
(2184, 'CV.SARANA PRATAMA ABADI', 'TLT-S008B', '23843238721000'),
(2185, 'CV.SEMESTA RAYA (PRIMA MOTOR)', 'PIN-P004', '845445741802000'),
(2186, 'CV.SEMOGA RAYA', 'BON-S023', '31091689808000'),
(2187, 'CV.SMILE BENGKEL', 'MMJ-S006A', '838943280804000'),
(2188, 'CV.SINAR MATAHARI SEJAHTERA', 'TLR-S010', '25573452801000'),
(2189, 'CV.SUMBER BAHAGIA', 'TLI-S001-MK', '754497022834000'),
(2190, 'CV.SUMBER PANGAN NUSANTARA', 'MKS-S008B', '18329227812000'),
(2191, 'CV.SUMBER SAKTI', 'WAJ-S023', '31290190801000'),
(2192, 'CV.SWIFT TIRE SERVICE', 'PAL-S063-MK', '915022560831000'),
(2193, 'CV.TEKNIK SOLUSI SUKSES', 'RAP-T003', '905079349805000'),
(2194, 'CV.TERMINAL MOTOR', 'PNK-T002', '21009576805000'),
(2195, 'CV.THALATA MULTI TEKNIK', 'MGL-T003', '830266854805000'),
(2196, 'CV.TUJUH DUA JAYA', 'PLW-T003', '669941114813000'),
(2197, 'CV.TUNAS HARAPAN MOTOR', 'BLK-T001', '631784162806000'),
(2198, 'CV.YASDI MOTOR', 'MAM-Y001A', '951620947814000'),
(2199, 'EDISON ISWANDI TANRIN', 'MKS-E001', '77037190801000'),
(2200, 'EMPAT SEPULUH- HAMKA', 'BRK-E005', '140747213953000'),
(2201, 'FAJAR PAGI (MUHAJIR)', 'BLK-F001', '578528770806000'),
(2202, 'GALERY BAN (NATALIA IRWAN)', 'MMJ-A003A', '738784701804000'),
(2203, 'GARUDA MOTOR (JAMALUDDIN BADO)', 'PIN-G001', '62100441802000'),
(2204, 'GO.RICKY', 'SKG-B002A', '61523361808000'),
(2205, 'HORMAT ORANG TUA BERJAYA', 'SRK-B001B', '966339004803000'),
(2206, 'INDO MOTOR (IVAN WIJAYA)', 'LIM-I002', '166920876801000'),
(2207, 'JONG DEDI WIJAYA', 'PRE-S003A', '70673678802000'),
(2208, 'JULIANA', 'MRS-J002', '145379459809000'),
(2209, 'JUNITA', 'BTL-H003A', '831435904801000'),
(2210, 'KARYAREZEKI PANCA MULIA', 'BTL-K003', '15845373812000'),
(2211, 'KING MOTOR (ERIC SIADY)', 'BLK-K001', '145407227806000'),
(2212, 'KOPERASI KARYAWAN KIMA SEJAHTERA', 'BRK-K016', '745408328801000'),
(2213, 'KOPERASI KARYAWAN PT.WK', 'PNK-W005C', '14845366805000'),
(2214, 'LITHA & CO', 'UPG-L002', '11113305804000'),
(2215, 'MAKMUR JAYA MOTOR (NG TJHOENWA)', 'GOW-M002', '69308369807000'),
(2216, 'MATAHARI MOTOR (RICKY GUNAWAN)', 'PRE-M005', '65159378802000'),
(2217, 'NANANG BAN (NAHARU)', 'PNK-N003A', '871343166805000'),
(2218, 'PACIFIK MOTOR (LANNY TANZYL)', 'GOW-P002', '66805060801000'),
(2219, 'PERKASA MOTOR BANDANG (YONGKI WINATA)', 'BTL-P002', '147843221805000'),
(2220, 'PT.AFIT LINTAS JAYA', 'BANDANG', '809435985805000'),
(2221, 'PT.ALC MAKASSAR', 'TLR-A002', '32999559801000'),
(2222, 'PT.AMALY CIPTA ANUGRAH', 'WAJ-A013B', '752401687801000'),
(2223, 'PT.AMALY MITRAABADI SULAWESI', 'WAJ-A013', '21005772812000'),
(2224, 'PT.ANDHIKA CELEBES TRASPORTAMA', 'MAR-A003', '20131280804000'),
(2225, 'PT.ANEKA MAS MOTOR', 'BTL-A010A', '27918135801001'),
(2226, 'PT.ANEKA SARI PANGAN', 'BRK-A041', '22200125812000'),
(2227, 'PT.ANTARIKSA PRAKARSA UTAMA', 'BRK-A057', '15844509801000'),
(2228, 'PT.ANUGERAH SUBUR PERKASA', 'MAM-A004', '836574491814000'),
(2229, 'PT.ARIANG TRANS', 'BRK-P014', '33047069801000'),
(2230, 'PT.ASHARAT', 'PLP-H003B', '28102721803000'),
(2231, 'PT.BAHTERA MULIA INTI KARSA', 'MAM-B001', '28564649814000'),
(2232, 'PT.BALI ES', 'DPS-B001', '22177554904000'),
(2233, 'PT.BATARA ABADI PERKASA', 'PKP-B001A', '21648647812000'),
(2234, 'PT.BATARA INDO PRIMA', 'PKP-B001B', '21646344809000'),
(2235, 'PT.BAYU PUTERA ALAM MANDIRI', 'MKS-P006', '16651820805000'),
(2236, 'PT.BENTENG SULAWESI BERSAUDARA', 'PNK-B020', '814906038805000'),
(2237, 'PT.BIMASAKTI POWERINDO', 'JKT-B018', '28091809023000'),
(2238, 'PT.BINA AGUNG CIPTA BERSAMA', 'BRK-N002D', '436840284802001'),
(2239, 'PT.BINASAN PRIMA', '', '15887250092000'),
(2240, 'PT.BINTANG MOROWALI SEJAHTERA', 'BTL-M028A', '726683550805000'),
(2241, 'PT.BINTANGMAS CAHAYA INTERNASIONAL', 'TLR-B003', '19981158401000'),
(2242, 'PT.BIRINGKASSI RAYA', 'PKP-B002', '14845408812000'),
(2243, 'PT.BOSOWA BETON INDONESIA', 'PNK-B014I', '822822615804000'),
(2244, 'PT.BUANA SUKSES SEJATI', 'TLR-B005', '915935761801000'),
(2245, 'PT.BUMI SARANA UTAMA', 'MAR-B003C-MK', '14232375812000'),
(2246, 'PT.BUMIPRIMA JAYA', 'UPG-B006', '28532489804000'),
(2247, 'PT.CAHAYA BENTENG MAS', 'JKT-C008', '13653738073000'),
(2248, 'PT.CAHAYA MULIA INDOPERKASA', 'MKS-C001', '28213155805000'),
(2249, 'PT.CAHAYA MULIA MAKMUR ABADI', 'MKS-C001C', '28852804801000'),
(2250, 'PT.CAHAYA SAGA UTAMA', 'PKP-C002B', '28210912804000'),
(2251, 'PT.CAHAYAMURNI TERANG TIMUR', 'BRK-C015', '16908782812000'),
(2252, 'PT.CATUR SENTOSA ADIPRANA,TBK', 'MMJ-C001', '13672233054000'),
(2253, 'PT.CELEBES MULTISARANA ABADI', 'MKS-C008', '32612350804000'),
(2254, 'PT.CEMERLANG MULIA ABADI', 'TLR-B001A', '312847072428000'),
(2255, 'PT.CIKAL MAS SEMESTA', 'GOW-C007', '26429779807000'),
(2256, 'PT.CIPTA DJAYA SURYA', 'MAR-C006', '23088651804000'),
(2257, 'PT.CISCO SINAR JAYA', 'PNK-C010', '14847834812000'),
(2258, 'PT.CITRA BETON TIMURINDO', 'PNK-C013', '33022294805000'),
(2259, 'PT.CITRA SILIKA WALLAWA', 'PNK-C013B', '31350283805000'),
(2260, 'PT.CS2 POLA SEHAT', 'MRS-C001', '24266793415000'),
(2261, 'PT.CYINGLOSH BINTANG JAYA', 'TLR-C003', '728562885801000'),
(2262, 'PT.DIRGANTARA SURYA PERSADA', 'SRB-D001', '22081004614000'),
(2263, 'PT.DSSP POWER KENDARI', 'KSL-D004', '720149285076000'),
(2264, 'PT.DUTA HARAPAN TUNGGAL', 'GOW-D006', '32049722807000'),
(2265, 'PT.EMKL SULSEL UTAMA INDAH', 'WAJ-S047', '12151486801000'),
(2266, 'PT.GAJACO UTAMA', 'WAJ-G003A', '910710730801000'),
(2267, 'PT.GALAKSI MANDIRI UTAMA', 'TLR-G004', '821851383801000'),
(2268, 'PT.GENERASI SULAWESI MANDIRI', 'KDI-E006A-MK', '919728964811000'),
(2269, 'PT.GOWA KENCANA MOTOR', 'BRK-T001A', '16396996812000'),
(2270, 'PT.GRAHA BINTANG SUMAINDO', 'SRB-G004A', '536720485801000'),
(2271, 'PT.GRAHA KONSTRUKSI INDONESIA', 'BDG-G001', '720415496444000'),
(2272, 'PT.GRAHA MULTI BINTANG', 'SRB-G004', '311799837614000'),
(2273, 'PT.GRAHA REKSA BARU', 'GRL-J001A', '818656365822000'),
(2274, 'PT.HALIM MITRA SOLUSI', 'BRK-H011', '915327795801000'),
(2275, 'PT.HARFIA GRAHA PERKASA', 'TLT-H004', '17736729812000'),
(2276, 'PT.HARINDO GAS UTAMA', 'PLP-H005', '28105401803000'),
(2277, 'PT.HARTINI PUTRA', 'SRB-H001', '15677917631000'),
(2278, 'PT.HASIL ABADI LANCAR', 'BTL-M013A', '757731831801000'),
(2279, 'PT.HERBA SARI', 'UPG-H001', '23837511812000'),
(2280, 'PT.IMPERIAL KARUNIA NUSANTARA', 'JKT-I018', '639053404012000'),
(2281, 'PT.INDAH BAN MOTOR', 'PNK-I007A', '839116779805000'),
(2282, 'PT.INDO GEMILANG SEJAHTERA', 'TLT-I004', '824003768804000'),
(2283, 'PT.INDO ICE', 'GOW-I003', '24401374807000'),
(2284, 'PT.INDOMARCO PRISMATAMA', 'TAL-I001', '13379946092000'),
(2285, 'PT.INTI SARI PERKASA', 'TLR-I001', '30519508801000'),
(2286, 'PT.JASA PENGURUSAN TRANSP.DIPO 88', 'BRK-D008', '806636247801000'),
(2287, 'PT.JAYA ADIRA MANDIRI', 'GOW-J003', '844480939807000'),
(2288, 'PT.JAYA MEGA MANDIRI BANGUNAN', 'MMJ-G005A', '802969766814000'),
(2289, 'PT.JAYA RAYA TRANS', 'WAJ-J002', '23838477812000'),
(2290, 'PT.KARS INTI AMANAH', 'MAR-K003', '31663172804000'),
(2291, 'PT.KARUNIA ANUGERAH NUSANTARA', 'TLR-K002', '316080282801000'),
(2292, 'PT.KARYA BINTANG UTAMA', 'BRK-B006A', '33049628803000'),
(2293, 'PT.KASUMA AGUNG WICAKSANA ', 'JKT-K007', '13951769005000'),
(2294, 'PT.KAWI PUSAKA RAHARJA', 'BRK-K002', '14845671812000'),
(2295, 'PT.KEMBAR CIPTA RAYA', 'SRK-K003', '32662298803000'),
(2296, 'PT.KEREN TRI GAS', 'PLP-A010A', '28469104803000'),
(2297, 'PT.LAMBATORANG', 'MRS-L002', '844876201809000'),
(2298, 'PT.LANCARJAYA MANDIRI ABADI', 'JKT-L004', '16681843007000'),
(2299, 'PT.LANGGENG PRANAMAS SENTOSA', 'TLR-L001', '15408412027000'),
(2300, 'PT.LILI INDAH PRIMA KARYA', 'MAM-K001B', '14938187812000'),
(2301, 'PT.LIMPUTRA SUKSES MOTORINDO', 'BTL-L005', '826183378801000'),
(2302, 'PT.LINTAS PERDANA GASINDO', 'PLP-H003A', '723912010803000'),
(2303, 'PT.LUSIANA GROUP INDONESIA', 'SRK-L001', '14105126803000'),
(2304, 'PT.LUWU RAYA PETROLEUM', 'WAJ-L004', '26608711804000'),
(2305, 'PT.MAGATTI INTERNATIONAL', 'SRK-M002', '30269542805000'),
(2306, 'PT.MAKASSAR INDAH GRAHA SARANA', 'WAJ-M014B', '12503371812000'),
(2307, 'PT.MAKASSAR MEGA PRIMA', 'BRK-M018', '17356338812000'),
(2308, 'PT.MAKASSAR TERMINAL SERVICES', 'WAJ-M003', '21942081058000'),
(2309, 'PT.MARC TRI KARYA MANUNGGAL', 'JKT-J003A-MK', '25384561033000'),
(2310, 'PT.MARS SYMBIOSCIENCE INDONESIA', 'BRK-M030', '10714020057000'),
(2311, 'PT.MEGA TAMBANG SULAWESI', 'BRK-M044', '30518955801000'),
(2312, 'PT.MENTARI FOOD', 'BRK-M034', '31291685801000'),
(2313, 'PT.MITRA HIJAU ASIA', 'MKS-M018', '713158962804000'),
(2314, 'PT.MULIA ABADI INDO', 'BRK-P003A', '24631731812000'),
(2315, 'PT.MULIA GUNUNG MAS', 'MRS-M010A', '24767725402001'),
(2316, 'PT.MULTI GUNA REJEKI', 'BTL-M029', '31951304801000'),
(2317, 'PT.MULTI LOGISTIK INDONESIA', 'RAP-M006', '758554125801000'),
(2318, 'PT.MULTI SARI MAKASSAR', 'TLR-M001', '23039712812000'),
(2319, 'PT.MULTI TRADING PRATAMA', 'MKS-M009', '24632580812000'),
(2320, 'PT.NEMAL PUTRA MANDIRI', 'WAJ-N005', '30518567801000'),
(2321, 'PT.NIAGATAMA INTIMULIA', 'BRK-N002', '15353972605000'),
(2322, 'PT.NUSA KONSTRUKSI ENJINIRING,TBK', 'JKT-N005', '13703509054000'),
(2323, 'PT.OSATO SEIKE', 'IRJ-O001', '20447322953000'),
(2324, 'PT.PANCA PILAR SEJAHTERA', 'KDI-P032-MK', '766951826811000'),
(2325, 'PT.PANCA TRAKTOR INDONESIA', 'JKT-P013', '32123671086000'),
(2326, 'PT.PANJA MULTI MINERALINDO', 'BDG-P002', '210068664405000'),
(2327, 'PT.PANTERO SELARAS UTAMA', 'JKT-P017', '717319354035000'),
(2328, 'PT.PARAMITHA BANINDO MAKMUR', 'SRB-P002', '24762890615000'),
(2329, 'PT.PASIFIK GABUSINDO ABADI', 'BRK-P016', '767674658801000'),
(2330, 'PT.PELITA TERANG MAKMUR', 'BRK-P003C', '31294952801000'),
(2331, 'PT.PERUSAHAAN ANGKUTAN DARAT SAMUDERA PERDANA', 'MKS-S015A', '13086988511000'),
(2332, 'PT.PUTRA MAHALONA', 'MKT-P001', '32432833803000'),
(2333, 'PT.RADJA ANGKUT INDONESIA', 'MDN-R001-MK', '814565446125000'),
(2334, 'PT.RAJA MULTI SARANA', 'RAP-R002A', '662252477805000'),
(2335, 'PT.RENTAL PERKASA', 'JKT-R004', '27921741044000'),
(2336, 'PT.RIDWAN JAYA AGUNG', 'KDI-R039-MK', '902995257811000'),
(2337, 'PT.RIOTA JAYA LESTARI', 'KDI-R040-MK', '31595192811000'),
(2338, 'PT.RODA JAYA SAKTI', 'TLT-R009', '30865588804000'),
(2339, 'PT.ROTI HOKI SEJAHTERA', 'BRK-M034A', '758607436809000'),
(2340, 'PT.SARANA LOGISTIK INDONESIA', 'SRB-S009', '23378995604000'),
(2341, 'PT.SATRIA JAYA SULTRA', 'POM-S004-MK', '28567410815000'),
(2342, 'PT.SIANTAR TOP', 'SRB-S006', '14802086054000'),
(2343, 'PT.SINAR ALAM INDO MANDIRI', 'SID-S011', '317912699802000'),
(2344, 'PT.SINAR ANUGERAH REJEKI BERSAMA', '', '805028750801000'),
(2345, 'PT.SINAR GALESONG AUTO MOBIL', 'PNK-S014A', '33376997805000'),
(2346, 'PT.SINAR GOWA INDUSTRY', 'BRK-S026', '28852234801000'),
(2347, 'PT.SINAR JAYA ABADI ACC', 'PNK-C010A', '12117248812000'),
(2348, 'PT.SINAR SURYA CEMERLANG', 'WAJ-S049', '31290166801000'),
(2349, 'PT.SINAR TERANG MADANI', 'MKS-S017', '32170979805000'),
(2350, 'PT.SINAREKPUTRA', 'BRK-S029', '17149758812000'),
(2351, 'PT.SINGOSARI TIMUR JAYA', 'BTL-S046', '31613573801000'),
(2352, 'PT.STAR MITRA SULAWESI', 'WAJ-P017AC', '27021567812000'),
(2353, 'PT.SUBUR SENTOSA', 'BRK-P003D', '31003775801000'),
(2354, 'PT.SUDAN', 'DPS-S001', '313730715901000'),
(2355, 'PT.SUKANDA JAYA', 'JKT-S029', '13682752092000'),
(2356, 'PT.SUMATERA KARTINDO', 'MDN-S001', '15378169125000'),
(2357, 'PT.SUMBER SAKTI PRIMA MANDIRI', 'WAJ-S023A', '530650894801000'),
(2358, 'PT.SURYA SENTOSA TEKNIK', 'BTL-M013B', '839216470801000'),
(2359, 'PT.SURYANI HADRAH', 'MAM-S006-MK', '32530263814000'),
(2360, 'PT.TATA MOTORS DISTRIBUSI INDONESIA', 'JKT-T015', '32863235013000'),
(2361, 'PT.TEKNIK INTEGRASI MANDIRI', 'MAR-T003', '30869930804000'),
(2362, 'PT.TERMINAL OTO PERKASA', 'GOW-T006', '913521332807000'),
(2363, 'PT.TIDUNG JAYA MANDIRI INDONESIA', 'JKT-T018', '711776609015000'),
(2364, 'PT.TOP SABA MANDIRI FOOD', 'BRK-A041B', '31613367801000'),
(2365, 'PT.TOPABIRING TRANS LOGISTIC', 'PKP-T001', '14845390812000'),
(2366, 'PT.TRANSPORINDO AGUNG SEJAHTERA', 'MDN-T001', '21993548121000'),
(2367, 'PT.TRI WAHANA CIPTA', 'PNK-T008', '32752065805000'),
(2368, 'PT.TRIAS MULTI SARANA', 'JKT-T021', '838570729014000'),
(2369, 'PT.TRIMAHMUD JAYA', 'MKT-T001', '19368760803000'),
(2370, 'PT.TUJUHTUJUH PERKASA', 'MKS-T009', '16652547812000'),
(2371, 'PT.UTAMA SULAWESI MAKMUR', 'WAJ-U001', '20130621812000'),
(2372, 'PT.VIARDI BINTANG TERANG', 'BRK-V003', '23835747812000'),
(2373, 'PT.WIJAYA KARYA BETON', 'BRK-W003', '10611549093000'),
(2374, 'PT.WIRA JAYA PRIMA MOTOR', 'WAJ-W003', '23040934812000'),
(2375, 'PT.WISAN PEDRO ENERGY', 'BTL-W004', '724381876801000'),
(2376, 'PT.YASIKA BAKTI NUSANTARA', 'PNK-Y004', '29110467805000'),
(2377, 'PUSAT AKI MITRA BATTERY ', 'JKT-M006A', '594176604039000'),
(2378, 'RAJAWALI BAN (HENRY EFENDY)', 'BTL-R007', '145080743804000'),
(2379, 'REJEKI JAYA MOTOR (LIONG HENRY)', 'GOW-R002', '97931935807000'),
(2380, 'SASA INTI', 'SRB-S007-MK', '11233830092000'),
(2381, 'SEJATIJAYA/ANTON KWANDOU', 'BTL-S011', '41269937801000'),
(2382, 'SINAR ABADI MOTOR (IRFAN NURDIN)', 'PIN-S006', '82843194802000'),
(2383, 'SINAR GOWA SUKSES', 'BRK-S026A', '28115103801000'),
(2384, 'SUMBER SEJATI PERKASA', 'BRK-S032', '16116980812000'),
(2385, 'SUN MOTOR (LOE WEMPY)', 'BON-S018', '144917549808000'),
(2386, 'TOKO SINAR MAS (RUDY S.', 'BON-S021', '145715728808000'),
(2387, 'UD.CAHAYA BAN (FENNY GUNAWAN LAY)', 'MMJ-C010', '862656444804000'),
(2388, 'USAHA MOTOR (DEDY TANZIL)', 'BTL-U003', '71618060801000'),
(2389, 'WELLY GUNARTO', 'SKG-B002B', '83024737808000'),
(2390, 'PT.KENCANA HIJAU BINALESTARI', 'JKT-K012', '32792277047000'),
(2391, 'EDS AKI GOWA/ISWANTO TANRIN', 'GOW-E003', '470094715403000'),
(2392, 'MAGATTI MANDIRI RENTAL', 'SRK-M002A', '619923923805000'),
(2393, 'REJEKI JAYA MOTOR (FRIDA MARIAMA KOHAN)', 'PLP-R007', '68072958803000'),
(2394, 'CV.BERKAT MOBILINDO UTAMA', 'BRK-H012A', '539394031805000'),
(2395, 'ADE HERMAN TANUBRATA', 'PAL-B022A', '63410724831000'),
(2396, 'AMAN BAN (ARDYANSIH RAZAK)', 'PRE-A003', '434715512802000'),
(2397, 'ANITA MOTOR (FITRA JAYA)', 'SID-A004', '723751699802000'),
(2398, 'BAN CENTRAL MOTOR / TJUNTJUN', 'PRE-B001', '82850249802000'),
(2399, 'BUANA MOTOR (HENGLIF KUSUMA)', 'BTL-B008', '63674725801000'),
(2400, 'CENTRO BAN (PENNS)', 'MMJ-A003O', '82716820801000'),
(2401, 'CIPTA JAYA (CAHADI)', 'WAJ-C007', '61539490801000'),
(2402, 'CV.DIMAS SAPUTRA JAYA', 'PKP-D002', '904018371809000'),
(2403, 'CV.FRITANIA NARATAMA', 'BRK-F006', '818156234801000'),
(2404, 'CV.IGA MAS', 'WAJ-I005', '15627771801000'),
(2405, 'CV.LIMBANG DOLANGAN', 'BTL-L001', '18330811801000'),
(2406, 'CV.LINTAS ABADI', 'TAL-L002', '30515340801000'),
(2407, 'CV.MEGA UTAMA', 'WAJ-H006A', '33000928801000'),
(2408, 'CV.NASSA JAYA GLASS', 'BRK-N010', '29741014801000'),
(2409, 'CV.PRIMA TRANS NUSA', 'TLR-P001', '32808412801000'),
(2410, 'CV.SUMBER GALIAN', 'BRK-S023', '25574112801000'),
(2411, 'CV.SURYA PRIMA CELEBES', 'MRS-S020', '833364433809000'),
(2412, 'DEDI BAN', 'TLT-A010A', '164810137804000'),
(2413, 'DEMPO MOTOR', 'MRS-D003', '810517482801000'),
(2414, 'DILMA JAYA (MARIATI)', 'MKT-D001', '814127981803000'),
(2415, 'DION JEFRI GAFUR', 'WAJ-A007', '61537015801000'),
(2416, 'HASNAWATI MOTOR (IWAN)', 'MAM-H001', '669085789814000'),
(2417, 'HJ.MACHDA MAHMUD', 'MAJ-W002A', '809145774813000'),
(2418, 'JAYA UNTUNG MOTOR (T.RICKY THUNGSRAM)', 'BTL-J002', '77042224801000'),
(2419, 'LANNY CHUNGIARTO', 'BRK-A004L', '71565840809000'),
(2420, 'MASDANI', 'SRK-M003', '142730324803000'),
(2421, 'MATAHARI MOTOR (JEMMY CHANDRA)', 'BTL-M009', '97929335804000'),
(2422, 'PT.ADIKARYA TANRISAU', 'IRJ-A005', '16156739952000'),
(2423, 'PT.ALEA PUTRI GAS', 'PLP-A010', '28103364803000'),
(2424, 'PT.ANEKA TAMBANG TBK', 'POM-A003A', '10016632051000'),
(2425, 'PT.ANUGERAH KURNIA AGUADE', 'MGL-A009', '32751828805000'),
(2426, 'PT.APHASKO UTAMAJAYA', 'TLT-P003E', '15025984812000'),
(2427, 'PT.ARTHAPUSAKA MITRASAKTI', 'BPP-A001', '16804841725000'),
(2428, 'PT.ASTRA INTERNATIONAL,TBK', 'JKT-A001', '13025846092000'),
(2429, 'PT.BALKIN MEGAH MANDIRI', 'GRL-B001', '22280911822000'),
(2430, 'PT.BALRICH LOGISTICS', 'JKT-B011', '23875966045000'),
(2431, 'PT.BATARA SURINDO WAJO', 'SKG-B005', '315607515808000'),
(2432, 'PT.BINTANG PALLOGE SEJAHTERA', 'MAM-B006', '32324642814000'),
(2433, 'PT.BOSKALIS INTERNATIONAL INDONESIA', 'TLT-B009A', '20588513058000'),
(2434, 'PT.BUMI HARDANA SAKTI', 'JKT-B013', '22312144071000'),
(2435, 'PT.CAHAYA DINAMIKA  PERSADA', '', '17752106041000'),
(2436, 'PT.CAHAYA SULAWESI SELATAN', 'BRK-C012', '714429503801000'),
(2437, 'PT.CHAROEN POKPHAND INDONESIA', 'BRK-C002', '10001725092000'),
(2438, 'PT.CIPTA PERKASA SEJATI', '', '23087232804000'),
(2439, 'PT.CONSOLIDATED ELECTRIC POWER ASIA', 'PNK-C008A', '313934465805000'),
(2440, 'PT.DEXIN STEEL INDONESIA', 'JKT-S009I', '827151747014000'),
(2441, 'PT.DIANA JAYA LESTARI', 'TLT-P003Q', '829643444814000'),
(2442, 'PT.EASTERN PEARL FLOUR MILLS', 'WAJ-B008', '10010619092000'),
(2443, 'PT.GITA PERKASA MINERALINDO', 'TLT-R009E', '954448072036000'),
(2444, 'PT.GUNUNG MARMER RAYA', 'PKP-G001', '18345942809000'),
(2445, 'PT.HASTURA NAZWA UTAMA', 'WAJ-H003', '28533719804000'),
(2446, 'PT.INDO PRATAMA SEJATI', 'BRK-I005', '835987934801000'),
(2447, 'PT.INDONESIA RUIPU NICKEL AND CHROME ALLOY', 'JKT-S009E', '746136373833001'),
(2448, 'PT.INTERPERSADA ELECTRONUSANTARA', 'BTL-P013A', '15027345812000'),
(2449, 'PT.INTI KAKAO UTAMA', 'BRK-I017', '821330289801000'),
(2450, 'PT.INTI MUSTIKA CIPTA MANDIRI', 'BRK-I013', ''),
(2451, 'PT.JAPPFA COMFEED INDONESIA Tbk', 'BRK-J001', '10028454092000'),
(2452, 'PT.KAKANTA', 'MGL-K002', '25481862805000'),
(2453, 'PT.KALI JAYA PUTRA', 'WAJ-K007', '14114938812000'),
(2454, 'PT.KARYA PRIBUMI NUSANTARA', 'GOW-K006', '12115069807000'),
(2455, 'PT.LAGALIGO LINES', 'UPG-E004', '31865330804000'),
(2456, 'PT.LENTY BUMI INTERNATIONAL', 'JKT-S009G', '864988399067000'),
(2457, 'PT.LESTARI SMELTER INDONESIA', 'JKT-S009P', '917907032014000'),
(2458, 'PT.MAKASSAR BETON PERKASA', 'BRK-M001', '17539677801000'),
(2459, 'PT.MANGGALA TRANS UTAMA', 'BRK-M020A', '763137726801000'),
(2460, 'PT.MAWAS PERDANA', 'MGL-M001', '26036814805000'),
(2461, 'PT.MEGA MAS SOROWAKO', 'BRK-M021', '811044247803000'),
(2462, 'PT.MEGA NUSANTARA RAYA', 'MKS-M016', '22198600801000'),
(2463, 'PT.MEGA SATWA PERKASA', 'MKS-S017A', '32812539805000'),
(2464, 'PT.MITRA MANGGALA SENTOSA', 'BRK-M037', '29744372801000'),
(2465, 'PT.MITRA UTAMA GASINDO', 'PLP-M016', '28099372803000'),
(2466, 'PT.PADI MAS PRIMA', 'WAJ-P003', '12115143812000'),
(2467, 'PT.PANCA AMARA UTAMA', 'JKT-P008', '21612924011000'),
(2468, 'PT.PANCA PUTERA SEJATI', 'WAJ-P019', '30519342801000'),
(2469, 'PT.PANCARAN DARAT TRANSPORT', 'JKT-P011-MK', '21871975045000'),
(2470, 'PT.PARE ELPIJI PRATAMA', 'WAJ-L004A', '30126825802000'),
(2471, 'PT.PASSOKORANG', 'TLT-P003A', '14104376812000'),
(2472, 'PT.PERUSAHAAN PELAYARAN TONASA LINES', 'PKP-T002', '14122238812000'),
(2473, 'PT.PRIMA KARYA PONDASI', 'RIA-P001', '16171761219001'),
(2474, 'PT.SAHABAT KARUNIA SULAWESI', 'WAJ-S002', '708820915801000'),
(2475, 'PT.SAHRUL LOGSTIC NUSANTARA', 'TAL-S010', '827782434801000'),
(2476, 'PT.SEINO INDOMOBIL LOGISTIC', 'JKT-S023', '749821674008000'),
(2477, 'PT.SEMEN BOSOWA MAROS', 'MRS-S001', '15028848812000'),
(2478, 'PT.SETIA UNGGUL MANDIRI', 'WAJ-K006', '19060383812000'),
(2479, 'PT.SINAR JAYA ABADI GAS', 'PNK-C010C', '837485788807000'),
(2480, 'PT.SUKSES UTAMA LOGISTIK', '', '847692100805000'),
(2481, 'PT.SUMA INDO TIM', 'MAM-K001A', '15133465812000'),
(2482, 'PT.SUPRA INDOLUP PERKASA', 'JKT-S026-MK', '857739049013000'),
(2483, 'PT.TENERA AGRO PERSADA', 'MRW-T001-MK', '962165247833000'),
(2484, 'PT.TERATAI EMAS PRIMA', 'BTL-T008', '31294473801000'),
(2485, 'PT.TIGA BINTANG ADISARANA', 'WAJ-P017M', '23042039812000'),
(2486, 'PT.TIRTA FRESINDO JAYA', 'JKT-P004', '17371030038000'),
(2487, 'PT.USAHA CENTRAL JAYA', 'WAJ-U002', '28853547801000'),
(2488, 'PT.USAHA SUBUR SEJAHTERA', 'WAJ-U007', '11117983812000'),
(2489, 'PT.VALE INDONESIA TBK', 'SRK-I001A', '10005411091000'),
(2490, 'PT.WAHYU PRADANA BINAMULIA', 'BRK-W001', '14124887812000'),
(2491, 'PT.YASHI INDONESIA INVESTMENT', 'JKT-I009C', '856217666067000'),
(2492, 'RAHMA (BENGKEL RAYA)', 'PNK-R014', '736184870805000'),
(2493, 'RUSLAN WAJAH (ALI MUHTAR DJAYA)', 'WAJ-S042', '82786609801000'),
(2494, 'SARTIKA MOTOR (HASBULLAH SUPU)', 'SID-S002', '77082949802000'),
(2495, 'SUNARYONO', 'TLT-S017', '70057625804000'),
(2496, 'SUPER OLI MOTOR (MANSYUR)', 'TLT-S008', '145079174604000'),
(2497, 'TK.SEJATI MOTOR (PETER)', 'TAL-S003', '82653460801000'),
(2498, 'TK.USAHA RAPPANG (MARWAN NURDIN)', 'PIN-U003', '666528161802000'),
(2499, 'TOKO THOMSON', 'PNK-T010', '65314882805000'),
(2504, 'AK-239', 'PT AKASA', '882033232372');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `npwp`
--
ALTER TABLE `npwp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `npwp`
--
ALTER TABLE `npwp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2506;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
