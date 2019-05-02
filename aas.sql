-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 01:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aas`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptions`
--

INSERT INTO `adoptions` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `approved`, `message`) VALUES
(4, 1, 26, '2019-05-01 16:48:24', '2019-05-01 16:48:24', 'Under Review', '<p>Please let me adopt this little guy.</p>'),
(5, 1, 26, '2019-05-01 19:49:53', '2019-05-01 19:49:53', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(6, 1, 21, '2019-05-01 19:50:07', '2019-05-01 19:50:07', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(7, 1, 7, '2019-05-01 19:50:16', '2019-05-01 19:50:16', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(8, 1, 20, '2019-05-01 19:50:28', '2019-05-01 19:50:28', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(9, 3, 25, '2019-05-01 19:50:48', '2019-05-01 19:50:48', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(10, 3, 26, '2019-05-01 19:50:53', '2019-05-01 19:50:53', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(11, 3, 19, '2019-05-01 19:51:01', '2019-05-01 19:51:01', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(12, 3, 13, '2019-05-01 19:51:09', '2019-05-01 19:51:09', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'),
(13, 3, 11, '2019-05-01 19:51:15', '2019-05-01 19:51:15', 'Under Review', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>');

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
(3, '2019_04_28_193131_create_posts_table', 1),
(4, '2019_04_29_140305_add_user_id_to_posts', 2),
(5, '2019_04_29_144639_create_adoptions_table', 3),
(6, '2019_04_29_173105_add_status_and_message_to_adoptions', 4),
(7, '2019_04_29_223010_add_image_to_posts', 5),
(8, '2019_04_30_131530_add_type_to_users', 6),
(9, '2019_04_30_171001_add_type_and_owner_to_posts', 7);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `animal_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `dob`, `description`, `created_at`, `updated_at`, `user_id`, `image`, `owner_id`, `animal_type`) VALUES
(5, 'Angel', '2007-06-21', '<p>Angel&#39;s personalilty lives up to her name. She is such a sweet and affectionate dog. A true ambassador to her breed.</p>\r\n\r\n<p>Angel has a heart of gold and loves being around people!</p>\r\n\r\n<p>She is a good role model to other dogs and would enjoy making new friends on her daily walks.</p>\r\n\r\n<p>Angel&#39;s gentle and loving nature makes her a pleasure to be around and she will definitely steal hearts in her new home.</p>', '2019-05-01 14:40:12', '2019-05-01 14:40:12', 2, 'angel_1556725212.jpeg', 0, 'Dog'),
(6, 'Benjy', '2016-03-30', '<p>Meet little Benjy! He would like a quiet home with patient, understanding owners who will let him settle in his own time.</p>\r\n\r\n<p>Although he does have a sensitive side, once he builds that bond with you, he is your best friend and you will forever have a loyal companion.</p>\r\n\r\n<p>Benjy is unsure but friendly with dogs and people alike, and certainly will provide his new owners with endless entertainment and affection!</p>', '2019-05-01 14:43:01', '2019-05-01 14:43:01', 2, 'benjy_1556725381.jpeg', 0, 'Dog'),
(7, 'Wilson', '2011-08-09', '<p>Wilson is a handsome active mix of a Doberman X Weimaraner. He is looking for new owners who are physically robust and have had experience of these types of breeds.</p>\r\n\r\n<p>He is a strong dog who enjoys being on the go and is looking for a multi-carer household that can keep up with him! Wilson needs an adult only home with someone who is around for most of the day to help him learn to settle.</p>\r\n\r\n<p>Wilson is a clever dog who enjoys being kept busy. We have associated him with a clicker to teach him tricks and focus on his handler and will be happy to demonstrate this. Having access to different enrichment will also be beneficial to keep his mind busy</p>\r\n\r\n<p>If you are looking for a fun, energetic dog then Wilson could be the one for you!</p>', '2019-05-01 14:44:58', '2019-05-01 14:44:58', 2, 'wilson_1556725498.jpeg', 0, 'Dog'),
(8, 'Freddie', '2016-04-07', '<p>Meet Freddie!</p>\r\n\r\n<p>Freddie has been very sweet and affectionate with everyone he meets, but gets very excitable at times and likes to jump up.</p>\r\n\r\n<p>Freddie has shown some nice social skills with dogs, but he has also shown to be very vocal, and occasionally gets frustrated when on lead. He will need owners who are able to provide him with the right guidance and training he needs. For the time being he would like to be the only pet in the home.</p>\r\n\r\n<p>Freddie is looking for an understanding family who can introduce him to the wonderful world of home comforts. With a little bit of tender loving care we are sure he will sparkle.</p>\r\n\r\n<p>We are looking for new owners to have experience with lurchers and a good understanding of dog socialising</p>', '2019-05-01 14:46:47', '2019-05-01 14:46:47', 2, 'freddie_1556725607.jpeg', 0, 'Dog'),
(9, 'Quest', '2017-04-24', '<p>Meet our adventurer Quest.</p>\r\n\r\n<p>Quest is a very sweet boy with people, always ready for a fuss and cuddle.</p>\r\n\r\n<p>He&#39;s not so sure about toys yet, they can be quite worrying for him, but we&#39;re sure with some gentle encouragement he&#39;ll soon learn to have fun with them.</p>\r\n\r\n<p>Quest likes other Greyhounds and sighthounds, but also most medium-large dogs, and will enjoy a little a play, but you have to watch out for his natural chase instinct. He&#39;s a little TOO enthusiastic around smaller dogs and animals so will need continued training to teach him to remain calm around them. This does mean that although he could possibly live with another larger dog, he cannot be rehomed with any smaller animals.</p>\r\n\r\n<p>We don&#39;t know anything about Quest&#39;s previous life before coming here, but it&#39;s quite likely that he&#39;s never known any home comforts or had any training done with him, so his new owners will need to be patient with him and understand that it may take a little while for him to adjust to everything that your average dog takes for granted.</p>', '2019-05-01 14:48:35', '2019-05-01 14:48:35', 2, 'quest_1556725715.jpeg', 0, 'Dog'),
(10, 'Sky', '2015-01-19', '<p>Sky made her way to us&nbsp;as a stray. She is looking for her forever home to settle into.</p>\r\n\r\n<p>Sky loves toys and company from her known people. Sky can be a little uncomfortable with formal handling and will need help to grow a positive association to this.</p>\r\n\r\n<p>Sky is quite vocal and will use her barking abilities to get attention and more play, as this is what she loves most of all.</p>\r\n\r\n<p>Sky is a lovely girl and could be a fab new addition to your family! if you think Sky is the dog for you please get in touch with our rehoming team.</p>', '2019-05-01 14:55:26', '2019-05-01 14:55:26', 2, 'sky_1556726126.jpeg', 0, 'Dog'),
(11, 'Dexter', '2014-07-15', '<p>Dexter is a handsome German Shepherd who is looking for a quiet home where he can really flourish</p>\r\n\r\n<p>He has shown to have a sensitive side and really has succeeded in a lot of ways with training here so will need his new owners to appreciate the need to keep this up.</p>\r\n\r\n<p>Dexter has some good basic foundation skills and social skills with other dogs however he can display some vocalisation when stressed. He is looking for owners who are able to understand him to encourage him to make new canine friends with some manners.</p>\r\n\r\n<p>Dexter needs time to adjust to his new home and routine and for his new owners to really be considerate of the time and patience he requires to feel confident and comfortable in the home.</p>\r\n\r\n<p>He is the perfect boy for training enthusiasts who are committed to helping him gain confidence and really be the best friend he is looking for.</p>', '2019-05-01 15:01:33', '2019-05-01 15:01:33', 2, 'dexter_1556726493.jpeg', 0, 'Dog'),
(12, 'Booboo', '2013-11-01', '<p>Meet Boo Boo ... he is looking for an active home with owners wanting to do some further training and manage certain aspects of his behaviour - including his sometimes over-exuberant nature with dogs. Boo Boo can also be unsure of new people and can become vocal so will need owners who are willing to work with him to build his confidence.</p>\r\n\r\n<p>Boo Boo is keen to learn, understanding commands in both Polish and English! He has also been practising search games whilst here at Aston Animal Sanctuary,&nbsp;and has proved to enjoy this and be very good at it.</p>\r\n\r\n<p>Boo Boo enjoys playing with his toys and will occupy himself at times. He is affectionate with his known people and will relax nicely with them after a toy session.</p>', '2019-05-01 15:03:33', '2019-05-01 15:03:33', 2, 'booboo_1556726613.jpeg', 0, 'Dog'),
(13, 'Squeaks', '2018-02-14', '<p>Squeaks is a sweet but sensitive cat who is looking for a calm and settled home to call her own.</p>\r\n\r\n<p>Once she makes friends with you her true personality shines through. She is a little chatter box and enjoys telling her human friends about how her day is going. She incredibly affectionate and loves a good chin and head rub. She will often nudge you for more if you stop.</p>\r\n\r\n<p>Squeaks will need access to a garden once settled.</p>', '2019-05-01 15:42:20', '2019-05-01 15:42:20', 2, 'squeaks_1556728940.jpeg', 0, 'Cat'),
(14, 'Seeba', '2005-08-03', '<p>Lovely Seeba is a confident and affectionate cat that is looking for a calm and settled home as she can become quite stressed easily.</p>\r\n\r\n<p>She is incredibly affectionate to everyone who visits and will hop onto your lap as soon as you sit down. She loves a good chin rub and will actively nudge your hand for strokes if you stop. She is looking for new owners who will spend lots of time not only cuddling her but also playing with her. She is a big ball of energy and loves to play with her favourite humans with a string toy but can also keep herself occupied with ping pong balls and mice.</p>\r\n\r\n<p>Seeba is looking for a home with no major changes anticipated in the future and someone with some experience in cat behaviour would be ideal.</p>\r\n\r\n<p>Seeba will need access to a garden via a cat flap once settled.</p>', '2019-05-01 15:43:25', '2019-05-01 15:43:25', 2, 'seeba_1556729005.jpeg', 0, 'Cat'),
(15, 'Luca', '2015-12-13', '<p>Sensitive soul Luca is looking for a calm and settled home that he can call his own.</p>\r\n\r\n<p>Although shy at first, once he gets to know you Luca is very affectionate and enjoys nuzzling his face into your hand whilst having gentle cheek rubs.</p>\r\n\r\n<p>Once settled he will need access to a garden.</p>', '2019-05-01 15:44:39', '2019-05-01 15:44:39', 2, 'luca_1556729079.jpeg', 0, 'Cat'),
(16, 'Chester', '2016-04-21', '<p>Chester is a sweet, affectionate cat looking for a settled home with loving new owners.</p>\r\n\r\n<p>He is a sensitive soul, but once he gets to know you, he is chatty lap cat who enjoys having gentle head strokes and playing with his string toy.</p>\r\n\r\n<p>Chester will need a garden to explore in his new home</p>', '2019-05-01 15:46:09', '2019-05-01 15:46:09', 2, 'chester_1556729169.jpeg', 0, 'Cat'),
(17, 'Minnie', '2014-09-27', '<p>Minnie is a sweet cat with a loving personality. She took some time to settle in the cattery and initially found it a worrying place.</p>\r\n\r\n<p>When given the time and space to settle, Minnie began to approaching staff for attention and fuss. Eventually proving to be a very affectionate cat who enjoys being around her favourite people.</p>\r\n\r\n<p>Minnie is looking for a family who are willing to give her all the time and space she needs to feel secure, allowing her to approach on her own terms. In time, Minnie will reward her new owners for their paitence with endless amounts of love and affection.</p>\r\n\r\n<p>Minnie will require outside access with a cat flap if owners work full-time so she can come and go as she pleases, enjoying the wonders of the outdoors!</p>\r\n\r\n<p>Once settled, Minnie will truly make such a fun and loving addition to her new family.</p>', '2019-05-01 15:47:25', '2019-05-01 15:47:25', 2, 'minnie_1556729245.jpeg', 0, 'Cat'),
(18, 'Mo', '2008-08-08', '<p>Beautiful Mo is a gentle girl who loves nothing more than curling up on her special peoples laps for a long nap.<br />\r\nShe is a very affectionate cat, giving soft nudged to your hands or even little cheek rubs on your face, when she wants some cuddles ( which is often )<br />\r\nShe will need a bit of help from her new family with grooming, to keep that amazing coat of hers in tip top condition.</p>\r\n\r\n<p>Mo will need a garden of her own to wander round in and of course sunbath in.</p>', '2019-05-01 15:48:35', '2019-05-01 15:48:35', 2, 'mo_1556729315.jpeg', 0, 'Cat'),
(19, 'Madeline', '2013-10-26', '<p>Madeline is a sweet little cat who loves sitting in boxes and rolling around on a comfy bed.</p>\r\n\r\n<p>In a quieter environment Madeline is a happy cat, approaching her carers when she feels like a quick stroke. Madeline will take herself away when she has had enough, as she also appreciates her own company and does not like too much of a fuss.</p>\r\n\r\n<p>Madeline will need access to a garden once settled into her new home.</p>', '2019-05-01 15:49:32', '2019-05-01 15:49:32', 2, 'madeline_1556729372.jpeg', 0, 'Cat'),
(20, 'Bourbon', '2018-02-11', '<p>Little Bourbon is a confident and lively kitten in the search for his new home. Bourbon loves nothing more then exploring new things, climbing all over you and demonstrating is great purr.</p>\r\n\r\n<p>Being a kitten Bourbon will need owners who will be able to keep up with his lively and playful needs, providing the regular feeds and stimulation he needs to grow into a well rounded adult.</p>\r\n\r\n<p>Bourbon will require outside access once he his old enough. If owners work full time, he will need a cat flap to gain access outside so he can come and go as he pleases.</p>', '2019-05-01 15:50:56', '2019-05-01 15:50:56', 2, 'bourbon_1556729456.jpeg', 0, 'Cat'),
(21, 'Phil', '2019-02-14', '<p>Phil is a kitten with lots of energy who will be keen to explore. He will have fun interacting with his new family and will be curious of any toys that are on offer for him to enjoy.</p>\r\n\r\n<p>Phil came in to us with his brother, sister and mum when he was only a couple of weeks old, they have been raised in one of our loving foster homes and Phil is now ready to find a family of his own.</p>\r\n\r\n<p>Phil is the most confident of his siblings and once given a couple of days to find his feet will be an active fun member of the household.</p>', '2019-05-01 15:51:59', '2019-05-01 15:51:59', 2, 'phil_1556729519.jpeg', 0, 'Cat'),
(22, 'Dora', '2015-06-07', '<p>Dora is a beautiful spayed female rabbit who arrived in foster care at Aston Animal Sanctuary via one of our Inspectors from a multi rabbit home. Dora arrived with her 4 babies who are now old enough to leave her, so we are looking to find Dora her forever home. Dora is a friendly girl who enjoys nose rubs, she races to the front of the hutch to see you and absolutely loves her food, she will eat from your hand. Dora loves fresh grass and dandelions, she is also a good hay eater. Dora does prefer to keep all four feet on the floor. Dora would make a wonderful addition to any home. We are looking to rehome her with a neutered male rabbit for company. Dora has been health checked by a vet, neutered, fully vaccinated against Myxo-RHD and also RHD2.</p>', '2019-05-01 15:55:37', '2019-05-01 15:55:37', 2, 'dora_1556729737.jpeg', 0, 'Rabbit'),
(23, 'Josie', '2018-05-14', '<p>Josie is a female Budgie who came in as a stray.Sadly she has not been claimed so she is looking for a loving home.<br />\r\n<br />\r\nJosie will need to live in a large avairy with other budgies.She will need to have access to an inside area with heating in the winter.<br />\r\n<br />\r\nIf you can give Josie a home then please bring a photo of your avairy with you when you come to meet her.</p>', '2019-05-01 15:57:12', '2019-05-01 15:57:12', 2, 'josie_1556729832.jpeg', 0, 'Bird'),
(24, 'Kaiser', '2017-09-12', '<p>Kaiser is a very handsome black Cornsnake looking for a caring home&nbsp;. He&#39;s&nbsp;one of four which came to our&nbsp;care&nbsp; in a very poor and emaciated condition. He&nbsp; is now fit and healthy and eating well . He has a lovely nature and easy to handle and apprx 3ft long.&nbsp;&nbsp;&nbsp; A vivarium of apprx 2ft/3ft with a gradient of 28c/30c at the warm end and 20c/24c at the cool end. Heatmats or heaters can be used but must have thermostats and heaters should be guarded for safety&nbsp;also a light on time switch. A low UV may be beneficial. Cardboard boxes with doorways cut out make nice warm dens and not forgetting a water bowl.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; He eats 2 defrosted medium mice every 10-14 days.</p>', '2019-05-01 15:59:11', '2019-05-01 15:59:11', 2, 'kaiser_1556729951.jpeg', 0, 'Reptile'),
(25, 'Simon', '2017-10-12', '<p>This handsome lad is Simon.<br />\r\n<br />\r\nHe hasn&#39;t been at the centre long, but he is finding it all very lonely and a little too cold.<br />\r\n<br />\r\nSimon would love to find a home with some nice hens, then he will have company and someone to cosy up to at night and keep warm.</p>', '2019-05-01 16:01:25', '2019-05-01 16:01:25', 2, 'simon_1556730085.jpeg', 0, 'Bird'),
(26, 'Perno', '2017-07-17', '<p>Perno arrived after being found as a stray, he did find a home but wasn&#39;t getting on very well with the other ducks.&nbsp;<br />\r\nPerno is looking to find some girlfriends of the duck variety to live with as he is currently alone. He will need to live in a large enclosure ideally with a pond or access to water. He is unsure of being handled but is happy to waddle around you...especially when he gets fed!&nbsp;<br />\r\nHave you got the ideal home for Perno?</p>', '2019-05-01 16:02:44', '2019-05-01 16:02:44', 2, 'perno_1556730164.jpeg', 0, 'Bird'),
(27, 'TestAnimal', '9999-03-02', '<p>Test when no image input</p>', '2019-05-01 19:42:48', '2019-05-01 19:42:48', 2, 'noimage.jpg', 0, 'Dog');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Albert Boggins', 'test@gmail.com', NULL, '$2y$10$iw5Psdi94nIWD6gTcPA02uFAmvQa8gX.NPZ/w/2mFVPM9EcJgaI8O', NULL, '2019-04-29 12:50:00', '2019-04-29 12:50:00', 'default'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$93/jYupQI4g.UScKAtdlz.S.mUOaSn4BqO4DIlkY1aFe/N0kdO1.m', NULL, '2019-04-30 12:58:56', '2019-04-30 12:58:56', 'admin'),
(3, 'Test User', 'User123@gmail.com', NULL, '$2y$10$KugvzBfgSxUAAzy66Eun8OUAb1EBjDUeqwUtoOu.fwVZRIDzmPt7C', NULL, '2019-05-01 17:05:30', '2019-05-01 17:05:30', 'default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
