-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 08:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon-clone-final`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `addr1` text NOT NULL,
  `addr2` text NOT NULL,
  `city` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `addr1`, `addr2`, `city`, `postcode`, `country`, `created_at`, `updated_at`) VALUES
(5, 15, 'gg', 'gg', 'gg', 'gg', 'United States', '2023-05-15 09:30:18', '2023-05-15 09:30:18'),
(6, 1, '611, Argyle RD', 'Brooklyn', 'New York', '11230', 'United States', '2023-05-16 00:07:32', '2023-05-16 00:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Home'),
(3, 'Men\'s Fashion'),
(4, 'Women\'s Fashion'),
(5, 'Pets'),
(6, 'Arts & Crafts');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_05_11_140721_create_categories_table', 1),
(13, '2023_05_11_140903_create_products_table', 1),
(15, '2023_05_14_071216_create_addresses_table', 2),
(16, '2023_05_18_053443_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `total_decimal` double(8,2) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `payment_intent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `total_decimal`, `items`, `payment_intent`, `created_at`, `updated_at`) VALUES
(1, 1, 4093, 40.93, '[{\"id\":\"4\",\"title\":\"Mac Book Pro \\/ Intel Core I7 \\/ 2 Tera Storage\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/4.jpg\",\"price\":\"10.98\",\"category\":\"1\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"},{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N91hsF9JKTGa2vj2HUmnIEy', '2023-05-18 00:50:17', '2023-05-18 01:57:31'),
(2, 1, 4093, 40.93, '[{\"id\":\"4\",\"title\":\"Mac Book Pro \\/ Intel Core I7 \\/ 2 Tera Storage\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/4.jpg\",\"price\":\"10.98\",\"category\":\"1\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"},{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N91jYF9JKTGa2vj2LZf1DWH', '2023-05-18 01:58:46', '2023-05-18 01:59:37'),
(3, 1, 1229, 12.29, '[{\"id\":\"11\",\"title\":\"Honey pot and spoon for making the perfect cup of tea\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/11.jpg\",\"price\":\"12.29\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N91mAF9JKTGa2vj2rAt7zbw', '2023-05-18 02:01:29', '2023-05-18 02:01:59'),
(4, 1, 1098, 10.98, '[{\"id\":\"4\",\"title\":\"Mac Book Pro \\/ Intel Core I7 \\/ 2 Tera Storage\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/4.jpg\",\"price\":\"10.98\",\"category\":\"1\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N91rYF9JKTGa2vj2jlbGU43', '2023-05-18 02:07:03', '2023-05-18 02:07:29'),
(5, 1, 3597, 35.97, '[{\"id\":\"4\",\"title\":\"Mac Book Pro \\/ Intel Core I7 \\/ 2 Tera Storage\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/4.jpg\",\"price\":\"10.98\",\"category\":\"1\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"},{\"id\":\"20\",\"title\":\"Cute dog to show off to your friends\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/20.jpg\",\"price\":\"24.99\",\"category\":\"5\",\"created_at\":\"2023-05-14T07:59:18.000000Z\",\"updated_at\":\"2023-05-14T07:59:18.000000Z\"}]', 'pi_3N91t8F9JKTGa2vj1FvFQuLQ', '2023-05-18 02:08:40', '2023-05-18 02:09:10'),
(6, 1, 2499, 24.99, '[{\"id\":\"20\",\"title\":\"Cute dog to show off to your friends\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/20.jpg\",\"price\":\"24.99\",\"category\":\"5\",\"created_at\":\"2023-05-14T07:59:18.000000Z\",\"updated_at\":\"2023-05-14T07:59:18.000000Z\"}]', 'pi_3N9AAMF9JKTGa2vj1ciQ1EHx', '2023-05-18 10:40:12', '2023-05-18 11:00:11'),
(7, 1, 5498, 54.98, '[{\"id\":\"20\",\"title\":\"Cute dog to show off to your friends\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/20.jpg\",\"price\":\"24.99\",\"category\":\"5\",\"created_at\":\"2023-05-14T07:59:18.000000Z\",\"updated_at\":\"2023-05-14T07:59:18.000000Z\"},{\"id\":\"26\",\"title\":\"Picture of the forest in the summer time\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/26.jpg\",\"price\":\"29.99\",\"category\":\"6\",\"created_at\":\"2023-05-14T07:59:18.000000Z\",\"updated_at\":\"2023-05-14T07:59:18.000000Z\"}]', 'pi_3N9AINF9JKTGa2vj04umXsQv', '2023-05-18 11:07:17', '2023-05-18 11:07:55'),
(8, 1, 1199, 11.99, '[{\"id\":\"10\",\"title\":\"Tools for making your garden more stylish\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/10.jpg\",\"price\":\"11.99\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9APUF9JKTGa2vj0bGVkbwg', '2023-05-18 11:14:14', '2023-05-18 11:15:25'),
(9, 1, 4194, 41.94, '[{\"id\":\"10\",\"title\":\"Tools for making your garden more stylish\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/10.jpg\",\"price\":\"11.99\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"},{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9ARBF9JKTGa2vj0pUIvKK6', '2023-05-18 11:16:23', '2023-05-18 11:16:49'),
(10, 1, 2995, 29.95, '[{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9WnUF9JKTGa2vj0pRBQRDh', '2023-05-19 10:28:52', '2023-05-19 11:15:48'),
(11, 1, 2995, 29.95, '[{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9X0XF9JKTGa2vj0XzH38H9', '2023-05-19 11:22:18', '2023-05-19 11:23:52'),
(12, 1, 8595, 85.95, '[{\"id\":\"16\",\"title\":\"Worn blue denim shirt \\/ casual style\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/16.jpg\",\"price\":\"85.95\",\"category\":\"4\",\"created_at\":\"2023-05-14T07:59:18.000000Z\",\"updated_at\":\"2023-05-14T07:59:18.000000Z\"}]', 'pi_3N9iLtF9JKTGa2vj0Sw0ondp', '2023-05-19 11:26:37', '2023-05-19 23:39:22'),
(13, 1, 4224, 42.24, '[{\"id\":\"11\",\"title\":\"Honey pot and spoon for making the perfect cup of tea\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/11.jpg\",\"price\":\"12.29\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"},{\"id\":\"9\",\"title\":\"Mini Cactus for your bathroom or kitchen area\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/9.jpg\",\"price\":\"29.95\",\"category\":\"2\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9ir9F9JKTGa2vj230Bdbvz', '2023-05-19 23:58:07', '2023-05-20 00:01:59'),
(14, 1, 8959, 89.59, '[{\"id\":\"2\",\"title\":\"Used computer parts from a broken machine (refurbished)\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"image\":\"images\\/products\\/2.jpg\",\"price\":\"89.59\",\"category\":\"1\",\"created_at\":\"2023-05-14T07:59:17.000000Z\",\"updated_at\":\"2023-05-14T07:59:17.000000Z\"}]', 'pi_3N9jOJF9JKTGa2vj1nIQdY8A', '2023-05-20 00:35:38', '2023-05-20 00:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Mac Book Air with I Phone (mobile phone) and free coffee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/1.jpg', 89.99, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(2, 'Used computer parts from a broken machine (refurbished)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/2.jpg', 89.59, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(3, 'Desktop computer with 2 year warranty (2 week discount)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/3.jpg', 12.50, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(4, 'Mac Book Pro / Intel Core I7 / 2 Tera Storage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/4.jpg', 10.98, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(5, 'IPhone 14 Next Gen / 128 mb storage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/5.jpg', 99.99, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(6, 'Dell Laptop / Intel Core I5 / 1.5 Tera Storage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/6.jpg', 78.99, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(7, 'Mac Book Air with FREE Mouse and Glasses to help you see better / Intel Core I5 / 1.5 Tera Storage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/7.jpg', 79.99, 1, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(8, 'Stylish Tea and Coffee maker for any modern home / 2 year money back guarantee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/8.jpg', 24.56, 2, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(9, 'Mini Cactus for your bathroom or kitchen area', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/9.jpg', 29.95, 2, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(10, 'Tools for making your garden more stylish', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/10.jpg', 11.99, 2, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(11, 'Honey pot and spoon for making the perfect cup of tea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/11.jpg', 12.29, 2, '2023-05-14 01:59:17', '2023-05-14 01:59:17'),
(12, 'Large salad bowl for entertaining guests on the weekend', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/12.jpg', 17.99, 2, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(13, 'Multiple items of Men\'s clothes for any occasion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/13.jpg', 13.99, 3, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(14, 'Hiking gear / Winter water proof rain coat', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/14.jpg', 15.99, 3, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(15, 'Brown boots for a casual setting', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/15.jpg', 85.95, 4, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(16, 'Worn blue denim shirt / casual style', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/16.jpg', 85.95, 4, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(17, 'Stylish white dress for every occasion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/17.jpg', 10.95, 4, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(18, 'Women\'s water proof rain coat / Winter', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/18.jpg', 15.99, 4, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(19, 'Real Reindeer from the north pole', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/19.jpg', 29.99, 5, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(20, 'Cute dog to show off to your friends', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/20.jpg', 24.99, 5, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(21, 'Bambi / Limited editon for the winter sale', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/21.jpg', 29.99, 5, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(22, 'A cold puppy in a blanket / (blanket not free)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/22.jpg', 59.99, 5, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(23, 'A Lion to guard your home from intruders', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/23.jpg', 39.99, 5, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(24, 'Build this white chair for your garden', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/24.jpg', 74.99, 6, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(25, 'Black and white picture of the city', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/25.jpg', 34.99, 6, '2023-05-14 01:59:18', '2023-05-14 01:59:18'),
(26, 'Picture of the forest in the summer time', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/products/26.jpg', 29.99, 6, '2023-05-14 01:59:18', '2023-05-14 01:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad', 'Rahmat Ullah', 'rullah0202@gmail.com', NULL, '$2y$10$5Y2EA4M7pOgUEO7o7rWEXOoga/.1V6NHty/X0F5dJfZbqmUZuT276', NULL, '2023-05-14 07:22:11', '2023-05-14 09:26:18'),
(15, 'Rtn Odesk', 'Mohammad', 'rtnodesk@gmail.com', NULL, '$2y$10$vuHjc6hE7EFRlISjossuTeXk7bsDHDXpDeeeK1SO145Sks80pckC2', NULL, '2023-05-15 08:44:13', '2023-05-16 03:28:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
