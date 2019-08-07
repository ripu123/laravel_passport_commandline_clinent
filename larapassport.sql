-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2019 at 09:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larapassport`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0149d53c44796f22888941f0dd90f4cdfd6410980d3b5b2a895dadc985409b80ee6974f96e9529f5', 1, 1, 'terminator', '[]', 0, '2019-08-02 04:08:36', '2019-08-02 04:08:36', '2020-08-01 21:08:36'),
('0ca0462805ed5ccd45a9ce19da05434f15138edc3e2a88fc61aa2aee5215a3010e65169c8e964798', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:21:00', '2019-08-03 00:21:00', '2020-08-02 17:21:00'),
('0e26e7e30e8d71431d551b554947089158e3c90a0d203fe0cb5b574ccb57c70d7f5e852df7c2a587', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:42:57', '2019-08-02 20:42:57', '2020-08-02 13:42:57'),
('11315fe700c3f83441f6465dc643ba4059ca17457666c547b6dc5a6165271d0ebafd2f0c9c597b8e', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:45:32', '2019-08-03 01:45:32', '2020-08-02 18:45:32'),
('19f34f2cc554e852a05e5ea67c77150fb3f025f5905926e38e7a3ebe4a2810d8b3b1ac714c2ff5ca', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:13:37', '2019-08-02 18:13:37', '2020-08-02 11:13:37'),
('1af92b2cba838cd320534c618066c82a96e2ec96eaee190fdf3ff8d67e69a7da4b12fb8879640c44', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:57', '2019-08-03 00:20:57', '2020-08-02 17:20:57'),
('1c77e77152fa64acd58d24e01df83104724aa78d0b2f62ebbe9f119ad3ec222a54c42d32e1a0a098', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:16:28', '2019-08-02 18:16:28', '2020-08-02 11:16:28'),
('247af0081b501d98686f1bfd5d1cff50f722473b394af413c520f404861bac9fb81af219a35ec923', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:54:33', '2019-08-02 20:54:33', '2020-08-02 13:54:33'),
('24ef4a2586f56d377d9088d4f4f1863e4689f48aa89cfab941de4afab3cf5eeba1b34b303977f18b', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:36:39', '2019-08-02 17:36:39', '2020-08-02 10:36:39'),
('270393e8742b666189094731b7d56ef2087149ff0a8f72fc24fffe186e237d486c48bb83029c3df8', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:51:19', '2019-08-03 00:51:19', '2020-08-02 17:51:19'),
('274863623c74295667f3d219fa30a743f8865018ce75db04b68201e4afb602ea981a6013230c21fc', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:52:16', '2019-08-03 00:52:16', '2020-08-02 17:52:16'),
('2bc59ca1388ac6dcd941b49bcd8d4c02903eda1128e0ce7a4d6648704f2ac11b593aacecef4c2f97', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:16:10', '2019-08-02 18:16:10', '2020-08-02 11:16:10'),
('2f8700a85a8186806f89ed330fc47d7b51c5a2815e02c32923fe648c6a75c0d2f94002c133d7cc3b', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:51:18', '2019-08-03 00:51:18', '2020-08-02 17:51:18'),
('340f1273f5d76e44ed738489391b5235b62e9b0d3f32366672d86ae75aba6f7c918dd302756e7a86', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:35:01', '2019-08-02 21:35:01', '2020-08-02 14:35:01'),
('364d98b8a6415c5b3604df070ddf13c7656bb5ebb9a7004f22a6eea9ed9cc938021f3a78a13f4572', 1, 1, 'terminator', '[]', 0, '2019-08-02 04:11:32', '2019-08-02 04:11:32', '2020-08-01 21:11:32'),
('3782c83552e451c5f2bb94a135506b175c5f6a386ca6f3a7bec0a1bddb8579f7943d0c459803fe1a', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:59', '2019-08-03 00:20:59', '2020-08-02 17:20:59'),
('3cb747392b484fedc217ef97f6c0e84dda3e4c13d444fec5830177330af6c2f996abfad3051c530d', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:56:36', '2019-08-03 01:56:36', '2020-08-02 18:56:36'),
('3db1987637a1aaad31083555d17a6fa5d9baaa80efd966e4c4d4b7003c3054a0608a362f9faa001e', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:17:50', '2019-08-02 17:17:50', '2020-08-02 10:17:50'),
('3e16ccac27f0c38c617a5f573ad6282157454a0b5b8271fc9a0151840d6f174bcda2b22f7edbd815', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:37:05', '2019-08-02 21:37:05', '2020-08-02 14:37:05'),
('3ef48421714d207dd17861ee9cfe9a13777427985af93fdec8e1a0d80b314f16810684782691de21', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:23:23', '2019-08-02 17:23:23', '2020-08-02 10:23:23'),
('4587eeac419ec770aa7b0ca840c2cd233f8ca7a60709373e72c3d31bd56f47a35a8099bbb8f68bd0', 1, 1, 'terminator', '[]', 0, '2019-08-02 16:52:24', '2019-08-02 16:52:24', '2020-08-02 09:52:24'),
('4730e1d5dc5ae7ea951c6b1aad70fdf0bcbc6ac77d00e3836af58baad573944675e2ee99ec864456', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:56:08', '2019-08-03 01:56:08', '2020-08-02 18:56:08'),
('486fc07b858a85d1a746e6b2c11790956c10dc7f8df07c9a6940b520a5449c584e73de07601f4f9c', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:09:04', '2019-08-02 17:09:04', '2020-08-02 10:09:04'),
('49d45a104b02447478aa5c74e7bc1ea26e2f50f9758fdc60cf67c8b964cf4903afb0a16b70a55a83', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:18:46', '2019-08-02 17:18:46', '2020-08-02 10:18:46'),
('4f83afc3a3a1cb19f4f2cd5511e1c19e5add82f7bd310462c5aa33b88c1c3d4c5681a65360a81484', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:31', '2019-08-03 00:20:31', '2020-08-02 17:20:31'),
('51e281999bbcc865743b70a389c13964aa975aedc60e8fea66bb8f8a22ca158d4bfd7f3309e958db', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:14:46', '2019-08-02 18:14:46', '2020-08-02 11:14:46'),
('5528ca53f6edb5ee170ae2e0029aa2a51c2d3c3fab3008f1ad8f72494718003cd1e90d3528408612', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:35:56', '2019-08-02 17:35:56', '2020-08-02 10:35:56'),
('565b72ff78b13d68c37ef51a1eaa25660c038cf5276c7c5d63cf72b2aac14afd458b279d83b7ebce', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:36:12', '2019-08-02 17:36:12', '2020-08-02 10:36:12'),
('5744c9a6860470b667369e1c3d3a3a90c9ea5390a5fbc421de0821306300baff9f3d3ca17eb56be9', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:21:02', '2019-08-03 00:21:02', '2020-08-02 17:21:02'),
('5e7d6dc8e1dee0d9d08b63115a715f3a9d1207c24db41d8433812fde01c83ba603341deae8cc9165', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:17:47', '2019-08-02 21:17:47', '2020-08-02 14:17:47'),
('5f6f9b0738cc9a7540b75a8421efaf2041c3d7665978fca9034ee3f27e59c0313cefbe4f5f1d5f49', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:53:21', '2019-08-03 01:53:21', '2020-08-02 18:53:21'),
('60983904954023fe70298163f783fdac55a3fc4b4a3b1c2fbae6e608794d8c5414b4e3f3c273e082', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:51:10', '2019-08-03 01:51:10', '2020-08-02 18:51:10'),
('623bd825c6b97b54081d52e30b9b290c6d01bbbc60010ecb837693585f56068104f2762e4370ed2d', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:58:15', '2019-08-02 20:58:15', '2020-08-02 13:58:15'),
('655bff643f086cb78121f19e388b78e53d3538d0644cf0d81c76aa9f69c0f973740fbfd4044b25f0', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:55:20', '2019-08-02 20:55:20', '2020-08-02 13:55:20'),
('66717108a84541fdd29405f9b3a83e14db310a360966317fff16744abcc8a7b973f095d6ec658e71', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:39:08', '2019-08-02 21:39:08', '2020-08-02 14:39:08'),
('68a612b8241b4e4d6c655b598c30bb9bc34829f4c98968ea9e8d1f3eaff67a91ef96662f8f58d2b3', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:38', '2019-08-03 00:20:38', '2020-08-02 17:20:38'),
('6e4a1a17dbfd8b5729237e4f899da7ace1323191ebe963ebb83d817fbc35e2678ca20a5b165e13df', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:52:15', '2019-08-03 01:52:15', '2020-08-02 18:52:15'),
('70ffaa1f09fc1ce24f1bc2d02275aab443fbb100e8cd8a1872ea835faf16ec28b96eb0c664771109', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:58:59', '2019-08-02 20:58:59', '2020-08-02 13:58:59'),
('76243ad7d0e53f822e72cf519f5de37db4d6cfc430555c60b2d088734e23ef232e4d5cd9675f2670', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:21:23', '2019-08-03 00:21:23', '2020-08-02 17:21:23'),
('762a9ba2af455dae35e25b9ab379edba69ff304a895ae0a14e2220a42f07330b843c9791c27a47c1', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:36:59', '2019-08-02 21:36:59', '2020-08-02 14:36:59'),
('7948e5cb9eee925296a9ebda50862a654dd01ce2f7e5021ada10e48910d94f6950dea32793a0115d', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:52:21', '2019-08-02 20:52:21', '2020-08-02 13:52:21'),
('7956f9edbb5703830ff1ddaf7865187fee843e4403f4e65dd4d48c7c9453091fea3e30fb71554b13', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:19:36', '2019-08-03 00:19:36', '2020-08-02 17:19:36'),
('7b19e5e1882be7d1440dbe262d5c2800756629a5eb5d84174eac43be2125ac5bf78693627eca6ed4', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:51:12', '2019-08-03 00:51:12', '2020-08-02 17:51:12'),
('7be7ad8b74df70f9096a41e2dfec28cf654ba9dfc7441c4256d3cf89332b04aa2f4a02301dde8070', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:14:13', '2019-08-02 18:14:13', '2020-08-02 11:14:13'),
('7becb263162d80c37f0721b5ca165b6b03d8d6f6a2dd1e36232c25e27971005a9d94ec4204b229a0', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:20:53', '2019-08-02 17:20:53', '2020-08-02 10:20:53'),
('809c52b3bee78b8ac2e92e15d3958ecd128aef75808633199a16bc2050de1cf3e8e0b85f0151b2ab', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:54:01', '2019-08-03 00:54:01', '2020-08-02 17:54:01'),
('80fe1b8bc62b8244b476916e770283f08f461e41b2ba6033f925494d1fe2400ca1d3b72935d3247b', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:55:03', '2019-08-02 20:55:03', '2020-08-02 13:55:03'),
('8245403db937d377b5f46695fb76d0e70666b256192898785253e7ce7ec6a6ca6b883af6283d954e', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:23:04', '2019-08-02 17:23:04', '2020-08-02 10:23:04'),
('8577d7150aa724fa5ace21e6baf5e55f290a6b268fb5d6a54189c67f174c3e2b3c29481cd116ed7d', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:14:33', '2019-08-02 21:14:33', '2020-08-02 14:14:33'),
('892fcd595bed2b1fea69ea69d664c4af3507950e0c6b53e44052bcd801270a111ca46c2d86bcd46c', 1, 1, 'terminator', '[]', 0, '2019-08-02 22:04:11', '2019-08-02 22:04:11', '2020-08-02 15:04:11'),
('8d17f3782c8922d5388193ca4b86c02ce72235466ecbe5eedbb36afa17bfd3b65c442466c559ec0b', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:35:45', '2019-08-02 17:35:45', '2020-08-02 10:35:45'),
('8ef2b613744e882767ef1b324f6236dc54f5ef6a6fffa7c5e9d0b79a03fae8ad9d3b5aa627dc4618', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:54:53', '2019-08-02 20:54:53', '2020-08-02 13:54:53'),
('92e623c8012f53d59c729c4871978ff438832b547e9a6fea3a36e937dc2192d6210090e5971cdfe6', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:14:37', '2019-08-02 18:14:37', '2020-08-02 11:14:37'),
('9642b4e4b9b25480457d5d0edff3035118f7646fe524788861603deba9c97b5e0e9221aae1df587c', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:54:21', '2019-08-02 20:54:21', '2020-08-02 13:54:21'),
('97a8c1168f405b64e8a5355fba5d9d3ec6b8297902c2e20d5b3078820ed7b65537c4cc82b08638e6', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:34:38', '2019-08-02 21:34:38', '2020-08-02 14:34:38'),
('97f64c4cdde6c0c506f8d27d67607f15b5bee62df8c5f4392ee8f8ab579579e2b98f30635a35facc', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:52:41', '2019-08-02 20:52:41', '2020-08-02 13:52:41'),
('9d05c76f3d5b9713d14ac11a1571ceed800b16d435aa4882738b9adafd18a4cab925066151029a7d', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:55:12', '2019-08-03 01:55:12', '2020-08-02 18:55:12'),
('9d8dbd314ec84ab4dadb93f664f5c00e0634b3e654d6c0a44faaf1e74fa1e73cd041145c0bc1121a', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:34:08', '2019-08-02 17:34:08', '2020-08-02 10:34:08'),
('9e39be397483fc5b80710bde024e3ea6337bfc7896f346b010a2df67dc0afd2588a7f5e74344ec03', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:35:23', '2019-08-02 21:35:23', '2020-08-02 14:35:23'),
('9fa35cd3210a9aa74a5421b8c252384d6f0f6703ab27e359640ea42206315d2956576c447d351212', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:42:47', '2019-08-02 20:42:47', '2020-08-02 13:42:47'),
('a35ef33c619902ff495c6cdeee349b90500d0adea9669cd3db6443b74c1c7a1041620b6a0a7411c4', 1, 1, 'terminator', '[]', 0, '2019-08-02 16:49:43', '2019-08-02 16:49:43', '2020-08-02 09:49:43'),
('a4fc45f87ac6e3b62bb90cf874ac61352e1e6e7f40a7306f457a71bec57824a992f8f22dcd052e40', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:11:14', '2019-08-02 17:11:14', '2020-08-02 10:11:14'),
('aa74ffde9bfec97c8e1d827ec9f545d16b139e3d881871d11c24307b50069d611e32d5977620aacd', 1, 1, 'terminator', '[]', 0, '2019-08-02 16:50:02', '2019-08-02 16:50:02', '2020-08-02 09:50:02'),
('ad3d119022d3ae02d229cb239308da8fee7626d45ae04f45586462f996029f52e0b9fbee4ecea17a', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:00:17', '2019-08-02 17:00:17', '2020-08-02 10:00:17'),
('b034fac7cff0fa44a744905b9712c029cad7dfb891f428400399c2e15128c9623773f6ba9efd717f', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:53:04', '2019-08-03 01:53:04', '2020-08-02 18:53:04'),
('b854d0544addc271527526a656b7cda07efd9f8ebf6aba69c8192241f8089f7d0dfabcc6251a2920', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:51:42', '2019-08-03 01:51:42', '2020-08-02 18:51:42'),
('bac8609214c26efc4c5d448d68fc5622d8c0a6a0eba5b6441c2b21a151860a952ad724e0d93bcbed', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:39:34', '2019-08-02 21:39:34', '2020-08-02 14:39:34'),
('be747b923879517c0aa740f4779ad24ec04baf4365ad0b626ade79c6e3577827ff5ca5a51fbe3f3b', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:35:46', '2019-08-02 21:35:46', '2020-08-02 14:35:46'),
('bf468272f2335f37fae78a3681936bcb30be70620afb8a4688ef1594f3020f48f0716e1ae310cffb', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:57:52', '2019-08-02 20:57:52', '2020-08-02 13:57:52'),
('c204597f5fa8b9b1527e5ab52cfec0cb0baa77d3277b403d047c2ec325a12c6d4461e97f35d03a88', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:39:59', '2019-08-02 21:39:59', '2020-08-02 14:39:59'),
('c3be420c62570edb13ab7e751c8f1b5856c122e325371bc383cf1e592c6355846787b2d74ed95320', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:16:47', '2019-08-02 17:16:47', '2020-08-02 10:16:47'),
('c422196bac0e525f6e3b44083ac36f39e8ca69875c66d67e55d62d028c7a09e5215db1d2ff7c6608', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:16:14', '2019-08-02 21:16:14', '2020-08-02 14:16:14'),
('c5427d7a40fc0a9dacf3c5dce4dcf183184bc033f1f32dce43656ae4c1408cc9d7f6edaec06502c0', 1, 1, 'terminator', '[]', 0, '2019-08-02 16:52:08', '2019-08-02 16:52:08', '2020-08-02 09:52:08'),
('c86f689e6ae7c879708ea29a3b58238fb88ad1b833ca1fc233a75507c68a76991baeed2425dbe5a6', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:41:26', '2019-08-02 21:41:26', '2020-08-02 14:41:26'),
('c932ccb8b1b2105b24f203b0ace3c26a6d64c8764c750234170b510b7a510ccf95340d4c3e7cb4e8', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:57:12', '2019-08-02 20:57:12', '2020-08-02 13:57:12'),
('c99d446268b239e6ca29f612ccf8434a4241ccb34011e7980fd83096b3b146962ca9028b709912b2', 1, 1, 'terminator', '[]', 0, '2019-08-02 18:13:56', '2019-08-02 18:13:56', '2020-08-02 11:13:56'),
('cd5bf03219bbff4b5054bef7ff9f823977261cb3d9cae4e3c7bd2dc541716b832931a7fc5d88da94', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:53:43', '2019-08-03 00:53:43', '2020-08-02 17:53:43'),
('ce0b683d0b5f71e546a1b08b2152f3c28b5edf910ee158f0ec72d36f4df94ce5511534a70e17f283', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:37:23', '2019-08-02 21:37:23', '2020-08-02 14:37:23'),
('d0433438481a52eac636d52d85ff9df1388fd768c36326750877b5a32d6c8160076de1fd606f53fc', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:23:35', '2019-08-02 17:23:35', '2020-08-02 10:23:35'),
('d27174d7e14585ef48a068bb17a167554a844174bab7693b30b382c4b9134ac7624e3d4dc1fc8c5d', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:15:01', '2019-08-02 21:15:01', '2020-08-02 14:15:01'),
('d6325c2b22f2a0134941d3b58fd5f97c82c46520d87277a256531b70a42ecb0384334575178a8d1e', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:10:06', '2019-08-03 00:10:06', '2020-08-02 17:10:06'),
('d794e15ca9feeead60722e2a20e236345e8c0120e1c1af5659fc83e056e9373fd6f461f9d2a48429', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:19:15', '2019-08-02 17:19:15', '2020-08-02 10:19:15'),
('d9a8699ba9d65d58573d109bf82f7007e4e51883420a06a48915f3f7e9d6d6ac138670866dd0c685', 1, 1, 'terminator', '[]', 0, '2019-08-03 01:58:26', '2019-08-03 01:58:26', '2020-08-02 18:58:26'),
('dab9c3ee79474b6375ffee83020a16cc172d043ace9908720a3b54e5c231d761cf11ae5c3bcfd81b', 1, 1, 'terminator', '[]', 0, '2019-08-02 21:37:27', '2019-08-02 21:37:27', '2020-08-02 14:37:27'),
('db7122157f53071303b4bb5a32f0efdff4a828309934c3d1a10ec5970da0326e2c4fe1028dd4988d', 1, 1, 'terminator', '[]', 0, '2019-08-02 16:36:24', '2019-08-02 16:36:24', '2020-08-02 09:36:24'),
('de2b77cb9f5029068f25b30020a6677bcf871bf88dac683cb80ee682932f68734747f406e3d4182f', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:37', '2019-08-03 00:20:37', '2020-08-02 17:20:37'),
('e1199a869f217d6c557450f1e8b2bb8333eb61b5807214a705cb32987a2291b2c4b5ade1c2926d1b', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:50:33', '2019-08-03 00:50:33', '2020-08-02 17:50:33'),
('e29976c715b4bbd6a6b4f98215cb53aa8859b42f760960902a678a714f1301541d73486944e440da', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:39:29', '2019-08-02 20:39:29', '2020-08-02 13:39:29'),
('e3798c59b50f685b636224e92be7dbf4a23eb03f8378b970d455bacd53839d8a7022d1ecaf213d41', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:20:54', '2019-08-03 00:20:54', '2020-08-02 17:20:54'),
('e4fe8a7920186bf647a88dff4e2265e32e9dccc5bb1f8209e129aefc783745aab7a560e51559d886', 1, 1, 'terminator', '[]', 0, '2019-08-02 20:51:54', '2019-08-02 20:51:54', '2020-08-02 13:51:54'),
('e5cd9281fb961cea7fcf5793ff8744a16ea4a1b1915501c63fdd15e0b6e1703b29a36f0f34488bd2', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:12:03', '2019-08-02 17:12:03', '2020-08-02 10:12:03'),
('e9d36fe5aeaef1a3915f60593a550e47367a90d29859162cc7b05195a7a9fccbeea7312f534a7f23', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:10:20', '2019-08-02 17:10:20', '2020-08-02 10:10:20'),
('ec10f31591461c8aa9cba7f23e28343bd0f635059e69448a38817257ccd9a6b81a992c393e029295', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:36:22', '2019-08-02 17:36:22', '2020-08-02 10:36:22'),
('ed281e52e54cf4ea4c3e04939847ef926c4c03a22c8850adcea621cea0b80dccbcbe7e616432396f', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:17:18', '2019-08-02 17:17:18', '2020-08-02 10:17:18'),
('f7855ffbc2583f2adf85971e890888dd9872077b3fd7f197ceafb04b0a62ee2a23e10c8d2e94c9f6', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:23:55', '2019-08-02 17:23:55', '2020-08-02 10:23:55'),
('f8487a890a8c99e79e312dafc38d90ee5c116a5a661c71732f73eb0a489fbd325de9c1de0216d352', 1, 1, 'terminator', '[]', 0, '2019-08-03 00:10:02', '2019-08-03 00:10:02', '2020-08-02 17:10:02'),
('fb07104ed0e591744282cde03d2d743df46363dec764a8f55450f65eaeab4fc8fb502d328f7e23d6', 1, 1, 'terminator', '[]', 0, '2019-08-02 17:18:29', '2019-08-02 17:18:29', '2020-08-02 10:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3pkaaQCTN0I12WfeYgMhj2Ux3o56H0vAUhHFkj37', 'http://localhost', 1, 0, 0, '2019-08-02 00:50:28', '2019-08-02 00:50:28'),
(2, NULL, 'Laravel Password Grant Client', 'IBtJQSClQ3KHETHV82P2diKwpiVn330M0x0y0u4f', 'http://localhost', 0, 1, 0, '2019-08-02 00:50:28', '2019-08-02 00:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-08-02 00:50:28', '2019-08-02 00:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_secret`
--

CREATE TABLE `store_secret` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secretName` varchar(100) NOT NULL,
  `encryptedSecret` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_secret`
--

INSERT INTO `store_secret` (`id`, `name`, `secretName`, `encryptedSecret`, `updated_at`, `created_at`) VALUES
(1, 'ripun', 'terminator', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQ5YTg2OTliYTlkNjVkNTg1NzNkMTA5YmY4MmY3MDA3ZTRlNTE4ODM0MjBhMDZhNDg5MTVmM2Y3ZTlkNmQ2YWMxMzg2NzA4NjZkZDBjNjg1In0.eyJhdWQiOiIxIiwianRpIjoiZDlhODY5OWJhOWQ2NWQ1ODU3M2QxMDliZjgyZjcwMDdlNGU1MTg4MzQyMGEwNmE0ODkxNWYzZjdlOWQ2ZDZhYzEzODY3MDg2NmRkMGM2ODUiLCJpYXQiOjE1NjQ3NzIzMDcsIm5iZiI6MTU2NDc3MjMwNywiZXhwIjoxNTk2Mzk0NzA2LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.pK8ju5GJR_HdbCrNgiznlyBwzCMUIq_IJ97JrCZILFxwNHU-9Tj6igxqNBai6j-GpeDv7w22i96FeJI-GxOReeU2nADsOF8UtG4Ihou77uwSz_dZT1oz3K878sqmjZ2_bta5Xur_5jO1PjqNJRqEPzHzWkAeUVbAQ2WibvFkUOrB2qqZRWCZ3h0RCo7Xedxq8-2JsHUDiMwb23XlfZripWCy5kDLrS5CgL3MuqTE1s0xOnic6Eru0mtnLZSHRS_WCFL7yB3_x-lPE2Hq1IFdOhGNr6k480yc_gPzsxFHJsdzyRWCZ1tb9_5h9IZsxWIPuOSvmwR7Jw0STvQG9OMFd2jJc1bcmHEzZyeXRyOFtSAAYWR_PArM3AHiFoLn__8gdhsfctzsryfv3LER6zsRyTMPpVUNPIPbldwswEyyeq-eXTeNmJZWmsuclGYcsKaDyX-k2qfPD1EgoTgU57FZILigqsVRnL59ozHOf73hv0vZPNG6d79TofH2uRmHyYaS3yNIJfy6JQDwyVxwxc0h7H5opRYQE2CFWgz1LK3cOjxxYZ9q9O98hKkDsL2J_U83TQm8ulWl0taqr-yaS3pNtgJ5jqnmoteYOpCrjq6x4l3lK-whMq3E_bHKAli_2uNYgMZImItdZgnvO8FIP5eXU4u3MwxS7dVsMBPYjNWAW68', '2019-08-03 01:58:27', '2019-08-03 01:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ripun', 'sripunjoy@gmail.com', NULL, '$2y$10$nUsaiGKo5PPdkX578PjkR.4J7LN3hLD4aO5cu3t.cFcIYaMrV.Q2S', NULL, '2019-08-02 04:08:36', '2019-08-02 04:08:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `store_secret`
--
ALTER TABLE `store_secret`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_secret`
--
ALTER TABLE `store_secret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
