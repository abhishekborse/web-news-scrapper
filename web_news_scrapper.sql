-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 11:24 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_news_scrapper`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$TrqGXmBjZExN$5rFGnLXUarruVluph7r3WPpm3ugOq8aLIc8B8NIN+1Y=', '2020-10-18 09:03:46.432464', 1, 'demo', '', '', '', 1, 1, '2020-10-18 09:03:11.185903');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'news', 'news'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-18 09:01:58.219874'),
(2, 'auth', '0001_initial', '2020-10-18 09:02:00.659414'),
(3, 'admin', '0001_initial', '2020-10-18 09:02:11.313088'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-18 09:02:14.279597'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-18 09:02:14.340001'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-18 09:02:15.896059'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-18 09:02:17.042364'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-18 09:02:17.213109'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-18 09:02:17.292364'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-18 09:02:18.734447'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-18 09:02:18.832885'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-18 09:02:18.945531'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-18 09:02:19.113178'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-18 09:02:19.283044'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-18 09:02:19.587838'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-18 09:02:19.655925'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-18 09:02:19.879041'),
(18, 'news', '0001_initial', '2020-10-18 09:02:20.336597'),
(19, 'news', '0002_remove_news_date', '2020-10-18 09:02:21.972058'),
(20, 'news', '0003_auto_20201011_0750', '2020-10-18 09:02:24.435800'),
(21, 'news', '0004_auto_20201011_0751', '2020-10-18 09:02:25.615513'),
(22, 'news', '0005_auto_20201011_0759', '2020-10-18 09:02:25.670297'),
(23, 'sessions', '0001_initial', '2020-10-18 09:02:26.139400');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('i3m04wj63uug18ufbr0qu2cw94yxwjwe', '.eJxVjEsOwiAUAO_C2pA-KPBw6b5nII-fVA0kpV0Z725IutDtzGTezNGxF3f0tLk1sisDdvllnsIz1SHig-q98dDqvq2ej4SftvOlxfS6ne3foFAvY6tnO2G0kJLOs7FWGC-UiVoGsgqNAdAI2lsgFGGCIAMqKZKMiiBjZp8vsHo2zA:1kU4bS:TavwWJjoVDqPG6vNQinFq5a_zb3PPE2zC19uTaoXlRs', '2020-11-01 09:03:46.532589');

-- --------------------------------------------------------

--
-- Table structure for table `news_news`
--

CREATE TABLE `news_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `news_body` longtext DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `url` longtext DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_news`
--

INSERT INTO `news_news` (`id`, `title`, `news_body`, `source`, `url`, `created_on`, `updated_on`) VALUES
(1, 'NASA Asks:  What Would You Pack For a Trip to the Moon?', '\nAmiMoJo quotes SlashGear: We\'re still many years away from casual consumer trips to the Moon, but it\'s easy to fantasize about such trips. NASA is getting in on the fun with a new campaign presenting the public with a simple question: what would you pack if you were taking your own lunar trip? NASA is encouraging anyone interested to share a picture of what\'s in their bag (for this imagined Moon trip) using its new #NASAMoonKit social campaign...\n \nNASA is encouraging the public to get a container that meets this volume limitation, pack it with the precious few items they\'d bring along on the trip, then take a picture and share it on social media — either Instagram, Facebook, or Twitter — using the #NASAMoonKit hashtag. NASA says that it may share your post on its own social accounts if it likes what it sees.\n \n\n\n\"What can\'t you leave the planet without?\" asks the campaign\'s official web page.   \"Is it your camera? Your drawing pad? Or maybe your musical instrument?  \n\n\"How would you organize everything you need for your next giant leap?\"\n', 'slashdot', 'https://science.slashdot.org/story/20/10/17/2219236/nasa-asks-what-would-you-pack-for-a-trip-to-the-moon', '2020-10-18 09:04:19.689855', NULL),
(2, '\'No, Microsoft Won\'t Rebase Windows to Linux\' Argues Canonical\'s Manager for Ubuntu on WSL', '\n			\n		 	\n				Last month Eric Raymond suggested Microsoft might be moving to a Linux kernel that emulates Windows.  ZDNet contributing editor Steven J. Vaughan-Nichols argued such a move \"makes perfect sense\", and open source advocate Jack Wallen even suggested Microsoft abandon Windows altogether for a new distro named Microsoft Linux. \n\nIt eventually drew the attention of Canonical\'s engineering manager for Ubuntu on WSL, who published a blog post with his own personal thoughts.  Its title?  \"No, Microsoft is not rebasing Windows to Linux.\"\n\nThe NT kernel in Windows offers a degree of backward compatibility, long-term support, and driver availability that Linux is just now approaching. It would cost millions of dollars to replicate these in Linux. Microsoft has plenty of paying customers to continue supporting Windows as-is, some for decades. Windows is not a drain on Microsoft that would justify the expense of rebasing to Linux for savings, as Raymond has argued...  It is unclear if the Windows user space could even be rebased from NT to the Linux kernel and maintain the compatibility that Windows is known for, specifically what enterprise clients with mission-critical applications are paying to get.... \n\nMicrosoft has doubled down on Windows in recent years. Microsoft has invested in usability, new features, and performance improvements for Windows 10 that have paid off. These improvements, collaborations with OEMs, and the Surface helped revitalize a PC market that at one point looked in danger of falling to iPads and Chromebooks... Internal reorganizations in 2018 and 2020 show that the future of the Surface and Windows are now inextricably linked. Windows powers the Xbox and we are in a resurgence of mostly Windows-based PC gaming. Microsoft also has ideas for Windows 10X, the next operating system concept following Windows 10 (that I think we will get in gradual pieces), with future hardware like the Surface Neo in mind... \n\nThe much more interesting question is not whether Microsoft is planning to rebase Windows to Linux, but how far Windows will go on open source. We are already seeing components like Windows Terminal, PowerToys, and other Windows components either begin life as or go open source. The more logical and realistic goal here is a continued opening of Windows components and the Windows development process, even beyond the Insiders program, in a way that benefits other operating systems... \nRaymond is correct in one key part of his blog. I do think the era of the desktop OS wars is ending. We are entering a new era where your high-end workstation will run multiple operating systems simultaneously, like runtimes, and not necessarily all locally. The choice will not really be Windows or Linux, it will be whether you boot Hyper-V or KVM first, and Windows and Ubuntu stacks will be tuned to run well on the other. Microsoft contributes patches to the Linux kernel to run Linux well on Hyper-V and tweaks Windows to play nicely on KVM. The best parts of Ubuntu will come to Windows and the best open source parts of Windows will come to Ubuntu, thanks to an increasing trend towards open source across Microsoft.  \n\nThe key take-away though is that open source has won. And Raymond can be proud of helping to articulate the case for the open source development model when he did. \n\nThe post also explores \"the reasons why I think this fantasy this keeps cropping up on Slashdot and Hacker News,\" calling the idea \"a long-held fantasy for open source and Linux advocates.\" \n\nBut instead he concludes \"Neither Windows nor Ubuntu are going anywhere. They are just going to keep getting better through open source.\"\n', 'slashdot', 'https://linux.slashdot.org/story/20/10/17/0131259/no-microsoft-wont-rebase-windows-to-linux-argues-canonicals-manager-for-ubuntu-on-wsl', '2020-10-18 09:04:19.689977', NULL),
(3, 'Motley Fool:  AMD \'Isn\'t Done Hammering Intel Yet\'', '\n			\n		 	\n				The Motley Fool writes:\nAMD held just under 18% of the CPU market at the end of 2016 before Ryzen arrived. The latest third-party estimates suggest that the chipmaker now controls close to 37% of the market. Other reliable estimates from the likes of video gaming platform Steam also suggest that AMD has been consistently chipping away at Intel\'s CPU dominance. And AMD isn\'t done hammering Intel in CPUs just yet — especially since the arrival of its latest Ryzen 5000 CPUs... \n\nAccording to AMD\'s own claims, a high-end Ryzen 5000 processor can deliver a 26% jump in gaming performance over the previous-generation chip. AMD also claims that the chip is 7% faster in gaming performance than the competing Intel chip... \n\nRumors suggest that Intel may not launch its 12th-generation 10nm Alder Lake processors until the second half of 2021 to compete with AMD\'s 7nm process. So AMD is likely to continue enjoying a technology lead over Intel, especially considering that it could make the move to a 5nm manufacturing process with the Zen 4 microarchitecture by the end of 2021, according to rumors. As such, don\'t be surprised to see AMD continuing to eat Intel\'s market share, and remaining a top growth stock in the future thanks to a combination of improved CPU sales and stronger pricing power.\n', 'slashdot', 'https://hardware.slashdot.org/story/20/10/18/0030256/motley-fool-amd-isnt-done-hammering-intel-yet', '2020-10-18 09:04:19.690073', NULL),
(4, 'Make Remote Work Permanent? No Way, Say Bay Area Leaders', '\n			\n		 	\n				Last month a regional government agency in the San Francisco Bay Area voted \"to move forward\" with a proposal to eventually require people at large, office-based companies to work from home three days a week \"as a way to slash greenhouse gas emissions from car commutes,\" according to NBC News. \n\nBut today local newspapers report \"Bay Area leaders are already saying, no way.\"  [Shorter, non-paywalled article here.]\n\nThe Metropolitan Transportation Commission is drawing heavy fire from lawmakers, the business commmunity and transit supporters for a proposal that would require big companies to have their employees work from home at least 60 percent of the time by 2035. \n\nThe proposal is aimed at reducing vehicle commuters and greenhouse gas emissions, but Bay Area politicians and business leaders say it would encourage Silicon Valley companies to pick up and leave. \"This will spur a flight of large employers from the Bay Area,\" said San Jose Mayor Sam Liccardo, comparing the idea to paving lanes directly from Silicon Valley to Texas. After recovering from the pandemic-caused recession, Liccardo said, \"we\'re going to miss those jobs.\"  Liccardo and San Francisco Mayor London Breed this week urged MTC leaders to find a better solution to hit the region\'s long-term clean air goals... \n\n\nRebecca Saltzman, a BART director, is introducing a resolution asking MTC to re-examine the requirement, which was added late in the process. It would drive down transit use with no clear proof it would reduce greenhouse gases, she said. \"We know we would lose riders,\" she said.  Bay Area lawmakers said a work-from-home mandate would hurt small businesses located around large employers, drain vitality from downtowns and diminish transit use. The requirements would also fall heavily on low-wage workers who typically must report to work to cook, clean, build or serve customers. San Jose and San Francisco both have tech giants — Google and Salesforce — spending billions of dollars to design and develop new campuses with a higher density of homes and apartments near transit. A work-from-home mandate could disrupt those plans, Liccardo said. \n\n\"I\'m concerned about a parade of unintended consequences,\" he said. \"This undermines the incentives to live near work.\"\n', 'slashdot', 'https://news.slashdot.org/story/20/10/17/0038238/make-remote-work-permanent-no-way-say-bay-area-leaders', '2020-10-18 09:04:19.690177', NULL),
(5, 'Google/EdX Are Charging $298 For Their Remake of a Free 2012 How-to-Google Course', '\n			\n		 	\n				Long-time Slashdot reader theodp writes: After near death, MOOCs are booming during the coronavirus pandemic, reported the NY Times in May. That news apparently wasn\'t lost on Google and EdX, who on Thursday announced they\'ve teamed up and are asking $298 (temporarily reduced to $268.20!) for Google\'s Power Searching with Google XSeries Program (learn \"how to create an effective search query to yield the most relevant results\").  \n\nIn case that seems familiar to some, Google offered a free 5-hour online course called Power Searching with Google with the same instructor way back in 2012 (followed by the free Advanced Power Searching with Google in 2013). But before dismissing the new program as tone-deaf pandemic price gouging, check out the $0 course audit option for yourself or your kids.  \n\nThe instructor for both Power Searching with Google and Advanced Power Searching With Google is Google\'s Daniel Russell, author of The Joy of Search, who gives students an engaging lesson in how to conduct fast and effective online research. Sure beats card catalog, and Readers\' Guide to Periodical Literature searches, kids!\n', 'slashdot', 'https://news.slashdot.org/story/20/10/17/2126235/googleedx-are-charging-298-for-their-remake-of-a-free-2012-how-to-google-course', '2020-10-18 09:04:19.690270', NULL),
(6, 'How Ransomware Puts Your Hospital At Risk', '\nnickwinlund77 quotes a New York Times opinion piece:\n\nIn March, several cybercrime groups rushed to reassure people that they wouldn\'t target hospitals and other health care facilities during the Covid-19 pandemic. The operators of several prominent strains of ransomware all announced they would not target hospitals, and some of them even promised to decrypt the data of health care organizations for free if one was accidentally infected by their malware. But any cybersecurity strategy that relies on the moral compunctions of criminals is doomed to fail, particularly when it comes to protecting the notoriously vulnerable computer systems of hospitals. \n\nSo it\'s no surprise that Universal Health Services was hit by ransomware late last month, affecting many of its more than 400 health care facilities across the United States and Britain. Or that clinical trials for a Covid-19 vaccine have been held up by a similar ransomware attack disclosed in early October. Or that loose-knit coalitions of volunteers all over the world are working around the clock to try to protect the computer systems of hospitals that are already straining under the demands of providing patient care during a global pandemic. \n\nIn the midst of the Covid-19 pandemic, the potential consequences of these cyberattacks are terrifying. Hospitals that have lost access to their databases or had their networks infected by ransomware may not be able to admit patients in need of care or may take longer to provide those patients with the treatment they need, if they switch to relying on paper records...  \n\nEvery hospital and clinic should be re-evaluating their computer networks right now and ramping up the protections they have in place to prevent their services from being interrupted by malware or their sensitive patient data from being stolen.\n', 'slashdot', 'https://it.slashdot.org/story/20/10/17/218228/how-ransomware-puts-your-hospital-at-risk', '2020-10-18 09:04:19.690362', NULL),
(7, 'College President Resigns After 712 Students Test Positive For Covid-19', '\n			\n		 	\n				CNN reports:\n\nThe president of the State University of New York at Oneonta has resigned, as the school grapples with hundreds of reported Covid-19 cases within the university since the beginning of the semester... SUNY Oneonta has reported 712 student cases of Covid-19 since residence halls opened on August 17...  \n\nThe resignation of the sitting president of SUNY Oneonta comes after the university decided not to test students or quarantine them on arrival.  Soon after, the University saw an uptick in positive results. By the time leadership tried to take punitive measures against students for disobeying social distancing orders, the virus had spread...  \nSUNY Oneonta has about 6,700 students enrolled, according to its website. \n\nIn an official statement the school\'s chancellor said the president now wanted to \"pursue other opportunities.\" \n\nBut one student told CNN the outbreak was partly the fault of the student body.  \"I believe that much of the spreading could have been prevented if the students hadn\'t partied or hadn\'t gone anywhere without masks on.\"\n', 'slashdot', 'https://news.slashdot.org/story/20/10/17/156214/college-president-resigns-after-712-students-test-positive-for-covid-19', '2020-10-18 09:04:19.690454', NULL),
(8, 'Tesla Owner:  I Butt-Dialed a $4,280 Autopilot Upgrade -- And They Haven\'t Refunded Me', '\n			\n		 	\n				CNBC reports:\n\nOn September 24th, physician Dr. Ali Vaziri was unpleasantly surprised by a mobile alert from his bank, which said he had just purchased a $4,280 upgrade for his Tesla Model 3. The large transaction, he quickly surmised, was a \"butt dial\" or accidental purchase made through the Tesla app on his iPhone.  \"My phone was in my jeans,\" Vaziri told CNBC. \"I took it out, put it on this charger that comes with your Tesla and that\'s it. A minute later? I got the text. I\'ve never purchased anything through the Tesla app before....\"  \n\nMoments after he received the mobile alert from his bank, Vaziri called his local Tesla store and service center. They couldn\'t help directly, but gave him the number for a customer service hotline. He called the number, and requested a refund. Instead of processing the doctor\'s refund request on the spot, the customer service rep told Vaziri to click on the refund button in his Tesla app to process his request.   Vaziri informed them there was no such button in the Tesla app, just some text and a link to the refund policy.  An e-mail he received from Tesla confirming the unauthorized purchase contained only vague information about a refund, and no buttons to click or links to a page where he could process a refund request either. The email, which Vaziri shared with CNBC, drove him to Tesla\'s support web site, which in turn told him to call his local service center.  \n\nTo this date, Vaziri says, Tesla customer service has not provided him with a refund, nor has the call center provided him with so much as a confirmation number or e-mail to acknowledge his calls about the refund.  Instead, he processed a stop payment request through his credit card company.\n', 'slashdot', 'https://idle.slashdot.org/story/20/10/17/0425239/tesla-owner-i-butt-dialed-a-4280-autopilot-upgrade----and-they-havent-refunded-me', '2020-10-18 09:04:19.690545', NULL),
(9, 'US Antitrust Regulators Could Target Google\'s Chrome Browser For Breakup', '\n			\n		 	\n				Slashdot reader alternative_right shares a report from Politico:\nJustice Department and state prosecutors investigating Google for alleged antitrust violations are considering whether to force the company to sell its dominant Chrome browser and parts of its lucrative advertising business, three people with knowledge of the discussions said... \n\nThe conversations — amid preparations for an antitrust legal battle that the Department of Justice is expected to begin in the coming weeks — could pave the way for the first court-ordered break-up of a U.S. company in decades. The forced sales would also represent major setbacks for Google, which uses its control of the world\'s most popular web browser to aid the search engine that is the key to its fortunes. \n\nDiscussions about how to resolve Google\'s control over the $162.3 billion global market for digital advertising remain ongoing, and no final decisions have been made, the people cautioned, speaking anonymously to discuss confidential discussions. But prosecutors have asked advertising technology experts, industry rivals and media publishers for potential steps to weaken Google\'s grip... A major antitrust report that the House Judiciary Committee released this week found that Chrome\'s market share allows Google to \"effectively set standards for the industry,\" an issue of particular relevance as Chrome phases out cookies.    \"Google\'s ad-based business model can prompt questions about whether the standards Google chooses to introduce are ultimately designed primarily to serve Google\'s interests,\" the House report said. \"Market participants are concerned that while Google phases out third-party cookies needed by other digital advertising companies, Google can still rely on data collected throughout its ecosystem.\" \n\nFriday Politico reported the antitrust suit against Google is likely to be filed \"early next week, but without the sign-on of any Democratic attorneys general, four people familiar with the case said Friday — upending the Trump administration\'s hopes to enlist bipartisan support for its fight against the internet giant...\" \n\nInstead a bipartisan group of states \"expects to file an antitrust complaint challenging Google\'s search practices at a later date, the people said. That group, led by Democratic attorneys general in Colorado and Iowa along with Nebraska\'s Republican attorney general, has expressed concern about what they view as the Justice Department\'s narrow approach to the case, the people said. Filing a separate suit would allow more leverage if the Department of Justice negotiates a settlement with Google they don\'t like, they said.\"\n', 'slashdot', 'https://yro.slashdot.org/story/20/10/17/0349230/us-antitrust-regulators-could-target-googles-chrome-browser-for-breakup', '2020-10-18 09:04:19.690637', NULL),
(10, 'Home-Made Covid Vaccine Appeared to Work, but Questions Remained', '\n			\n		 	\n				\"Josiah Zayner\'s plan was simple: replicate a Covid-19 vaccine that had worked in monkeys, test it on himself and then livestream the experiment online over a period of months,\" reports Bloomberg.\n \n\"Zayner discovered, testing a vaccine is far more complicated than he had imagined.\"\nEven though his experiment yielded a promising result, Zayner found too many unanswered questions to say that it worked. For one, it wasn\'t clear whether antibodies he found in his own body in extremely tiny measures before the experiment began made a difference...   As the U.S. rushes to bring a vaccine to market far faster than has ever been done, Zayner said he has discovered why the long, slow process of clinical trials shouldn\'t be rushed. A promising early stage result is just that: promising...  \n\nInitially, Zayner assumed that the experiment he named Project McAfee, after the antiviral software, would be relatively straightforward. The vaccine selected had  triggered protective immunity against the virus in rhesus macaque monkeys in a paper published in May. Zayner was able to order the same spike protein sequence from the DNA-synthesis company the researchers had used. The plan: He and two fellow biohackers — Daria Dantseva in Ukraine and David Ishee in Mississippi — would themselves test the concoction they ordered online. They would then livestream the entire process online over several months, with the first showing to occur in June. \n\nBut early on in the experiment, complications arose. Before starting, Zayner took a test at Lab Corp Inc. that told him he didn\'t already have antibodies to the virus. But when he performed a similar test on himself shortly afterward, he found that he did have some antibodies, just not enough to produce a positive result on Lab Corp\'s test. While those antibodies didn\'t appear to be the neutralizing type, he wondered whether the result came because the vaccine was picking up signals from antibodies to a different virus — or how this faint antibody signal might affect things.   \"I\'m very suspicious of my own data,\" he said. \nHe\'s not alone. Hank Greely, a bioethicist at Stanford University, said Zayner\'s experiment pointed out an underappreciated reality of vaccine development. \"Actually making the vaccine isn\'t that hard,\" he said. \"It\'s testing it and knowing that it\'s safe — and knowing that it\'s effective....\" Zayner\'s next project will focus on showing people how to grow chicken cells to make their own fake meat.  With vaccines,  Zayner concluded, \"Large scale clinical trials are probably required, because it is so messy.\"\n', 'slashdot', 'https://science.slashdot.org/story/20/10/17/0329236/home-made-covid-vaccine-appeared-to-work-but-questions-remained', '2020-10-18 09:04:19.690728', NULL),
(11, 'A Chicken Nugget Was Just Launched Into Space', '\n			\n		 	\n				A British supermarket celebrated its 50th anniversary by playing with its food — specifically, one lucky piece of breaded protein:\n\nThe grocery store chain hired Sent Into Space to launch the chicken nugget into space. According to its website, Sent Into Space is the \"world\'s leading space marketing company, specialising in space-themed marketing campaigns and publicity stunts.\" \n\n\"From a site in rural Wales, the nugget traveled through the Earth\'s atmosphere to an altitude of 110,000 feet (that\'s 33.5 km) where it floated in the region known as Near Space,\" Sent Into Space wrote in a statement on its website. That would be 20.7 miles.  The nugget spent an hour \"floating\" in space in low pressure and temperatures that can drop to -65 degrees Celsius, according to Sent Into Space... The nugget was launched near the company\'s headquarters in Wales in a gas-filled weather balloon with an auxiliary satellite tracking system and integrated camera support. The Irish News reported that the nugget descended at 200 mph, with a parachute deploying around 62,000 feet for the nugget\'s protection.\n', 'slashdot', 'https://science.slashdot.org/story/20/10/17/1451223/a-chicken-nugget-was-just-launched-into-space', '2020-10-18 09:04:19.690819', NULL),
(12, 'Trump Scrambles To Loosen America\'s Biometric Data and Gig Worker Regulations', '\n			\n		 	\n				\"Facing the prospect that President Trump could lose his re-election bid, his cabinet is scrambling to enact regulatory changes affecting millions of Americans in a blitz so rushed it may leave some changes vulnerable to court challenges,\" reports the New York Times:\n\nThe effort is evident in a broad range of federal agencies and encompasses proposals like easing limits on how many hours some truckers can spend behind the wheel, giving the government more freedom to collect biometric data and setting federal standards for when workers can be classified as independent contractors rather than employees. In the bid to lock in new rules before Jan. 20, Mr. Trump\'s team is limiting or sidestepping requirements for public comment on some of the changes and swatting aside critics who say the administration has failed to carry out sufficiently rigorous analysis.  Some cases, like a new rule to allow railroads to move highly flammable liquefied natural gas on freight trains, have led to warnings of public safety threats...\n \nIf Democrats take control of Congress, they will have the power to reconsider some of these last-minute regulations, through a law last used at the start of Mr. Trump\'s tenure by Republicans to repeal certain rules enacted at the end of the Obama administration. But the Trump administration is also working to fill key vacancies on scientific advisory boards with members who will hold their seats far into the next presidential term, committees that play an important role in shaping federal rule making... \nThe Homeland Security Department is also moving, again with an unusually short 30-day comment period, to adopt a rule that will allow it to collect much more extensive biometric data from individuals applying for citizenship, including voice, iris and facial recognition scans, instead of just the traditional fingerprint scan. The measure, which the agency said was needed to curb fraud, would also allow it for the first time to collect DNA or DNA test results to verify a relationship between an application for citizenship and someone already in the United States.\n', 'slashdot', 'https://news.slashdot.org/story/20/10/17/0453215/trump-scrambles-to-loosen-americas-biometric-data-and-gig-worker-regulations', '2020-10-18 09:04:19.690950', NULL),
(13, 'Sweden\'s New Car Carrier Is the World\'s Largest Wind-Powered Vessel', '\n			\n		 	\n				An anonymous reader quotes a report from CNN: Oceanbird might look like a ship of the future, but it harks back to ancient maritime history -- because it\'s powered by the wind. The transatlantic car carrier is being designed by Wallenius Marine, a Swedish shipbuilder, with support from the Swedish government and several research institutions. With capacity for 7,000 vehicles, the 650 foot-long vessel is a similar size to conventional car carriers, but it will look radically different. The ship\'s hull is topped by five telescopic \"wing sails,\" each 260 feet tall. Capable of rotating 360 degrees without touching each other, the sails can be retracted to 195 feet in order to clear bridges or withstand rough weather.\n \nThe sails, which will be made of steel and composite materials, need to be this size to generate enough propulsive power for the 35,000-ton ship. Although \"the general principles of solid wing sails is not new,\" designing the Oceanbird\'s sails has been a challenge, says Mikael Razola, a naval architect and research project manager for Oceanbird at Wallenius Marine. That\'s because these are the tallest ship sails that have ever been constructed. \"This ship, at the top of the mast, will be more than 100 meters (328 feet) above the water surface,\" says Razola. \"When you move up into the sky that much, wind direction and velocity change quite a lot.\" Oceanbird has a projected top speed of about 10 knots and will take around 12 days to cross the Atlantic. While that\'s considerably slower than standard car carriers, which can travel at 17 knots, the Oceanbird will emit 90% less CO2 than conventional car carriers.\n \nRazola says their plan is \"to see Oceanbird sailing in 2024.\"\n', 'slashdot', 'https://tech.slashdot.org/story/20/10/17/0015241/swedens-new-car-carrier-is-the-worlds-largest-wind-powered-vessel', '2020-10-18 09:04:19.691042', NULL),
(14, 'New Benchmark Shows iPhones Throttle So Hard They Lose Their Edge Over Android', '\nMojoKid writes: Apple has repeatedly asserted its dominance in terms of performance versus competitive mobile platforms. And it has been historically true that, in cross-platform benchmarks, iPhones generally can beat out Android phones in both CPU and GPU (graphics) performance. However, a new benchmark recently released from trusted benchmark suite developer UL Benchmarks sheds light on what could be the iPhone\'s Achilles\' Heel in terms of performance, or more specifically, performance over extended duration.\n \nThe new benchmark, 3DMark WildLife, employs Apple\'s Metal API for rendering and Vulkan on Android devices. In testing at HotHardware, for basic single-run tests, again iPhones trounce anything Android, including flagship devices like the Samsung Galaxy S20 Ultra, ASUS ROG Phone 3 and OnePlus 8. However, in the extended duration WildLife Stress Test, which loops the single test over and over for 20 minutes, the current flagship iPhone 11 Pro and A13 Bionic\'s performance craters essentially to Snapdragon 865/865+ performance levels, while Android phones like the OnePlus 8 maintain 99+% of their performance. Though this is just one gaming benchmark test that employs the latest graphics technologies and APIs, it\'s interesting to see that perhaps Apple\'s focus on tuning for quick bursty workloads (and maybe benchmark optimization too?) falls flat if the current class of top-end iPhone is pushed continuously.\n', 'slashdot', 'https://apple.slashdot.org/story/20/10/17/008226/new-benchmark-shows-iphones-throttle-so-hard-they-lose-their-edge-over-android', '2020-10-18 09:04:19.691133', NULL),
(15, 'Japan Decides To Release Treated Fukushima Water Into the Sea', '\nhcs_$reboot shares a report from CBS News:  Japan will release more than a million tons of treated radioactive water from the stricken Fukushima nuclear plant into the sea in a decades-long operation, reports said Friday, despite strong opposition from environmentalists, local fishermen and farmers. The release of the water, which has been filtered to reduce radioactivity, is likely to start in 2022 at the earliest. The decision ends years of debate over how to dispose of the liquid that includes water used to cool the power station after it was hit by a massive tsunami in 2011. A government panel said earlier this year that releasing the water into the sea or evaporating it were both \"realistic options.\" The treated water is currently kept in a thousand huge tanks at the Fukushima Daiichi site, where reactors went into meltdown nearly a decade ago after the earthquake-triggered tsunami. Plant operator TEPCO is building more tanks, but all will be full by mid-2022.\n', 'slashdot', 'https://slashdot.org/story/20/10/17/000238/japan-decides-to-release-treated-fukushima-water-into-the-sea', '2020-10-18 09:04:19.691224', NULL),
(16, 'Ardern Wins by Landslide in New Zealand', 'Prime Minister Jacinda Ardern is the first leader under New Zealand’s current system to be elected outright', 'time', 'https://www.time.com/5900627/jacinda-ardern-wins-new-zealand-election/', '2020-10-18 09:04:19.691315', NULL),
(17, 'Trump\'s Defining Feature Is Now a Bug', 'Republicans strategists warn that a trailing Trump needs to stick to the script in the final stretch before Election Day', 'time', 'https://www.time.com/5900987/trump-campaign-message-distraction/', '2020-10-18 09:04:19.691407', NULL),
(18, 'The 100 Best Fantasy Books of All Time', 'With a panel of leading fantasy authors, TIME presents the 100 most engaging, inventive and influential works of fantasy fiction', 'time', 'https://www.time.com/collection/100-best-fantasy-books/', '2020-10-18 09:04:19.691498', NULL),
(19, 'U.S. Swing States Revealed a Nation Plagued by Misinformation', 'Voters often reacted to news events in ways that conformed to what they already believed — accurate or not', 'time', 'https://www.time.com/5897887/swing-states-2020-election/', '2020-10-18 09:04:19.691590', NULL),
(20, 'Thousands of People in Jails Could Miss Their Chance to Vote', 'Voting in jails is something of a blackbox, with systemic inconsistencies that render it hard to access', 'time', 'https://www.time.com/5895219/voting-jail-2020-election/', '2020-10-18 09:04:19.691681', NULL),
(21, 'Native Americans Could Swing Arizona But Lack Voting Access', 'The outcome of current court cases could make it easier or more difficult for Native Americans to vote', 'time', 'https://www.time.com/5895299/native-american-vote-arizona-elections/', '2020-10-18 09:04:19.691773', NULL),
(22, 'Donald Trump Faces a Personal and Political Vulnerability', 'When the President gets COVID-19, America, too, must contemplate its frailty', 'time', 'https://www.time.com/5897886/trump-coronavirus/', '2020-10-18 09:04:19.691864', NULL),
(23, 'Tammy Duckworth', 'We Need to do More to Support America\'s Moms', 'time', 'https://www.time.com/5874524/tammy-duckworth-americas-moms-running-on-empty/', '2020-10-18 09:04:19.692138', NULL),
(24, 'Ban Ki-moon', '75 Years After Hiroshima, It\'s Time to Disarm Nuclear Weapons', 'time', 'https://www.time.com/5875424/ban-ki-moon-hiroshima-nagasaki-nuclear/', '2020-10-18 09:04:19.692230', NULL),
(25, 'Dr. Ashish K. Jha', 'America Needs to Rethink Its COVID-19 Testing', 'time', 'https://www.time.com/5873444/radically-rethink-covid-19-testing-approach/', '2020-10-18 09:04:19.692322', NULL),
(26, 'Zachary Karabell', 'We Need Smarter Stimulus from Washington', 'time', 'https://www.time.com/5872777/we-need-smarter-stimulus/', '2020-10-18 09:04:19.692414', NULL),
(27, 'Padma Lakshmi', 'The Food World Needs to Hear Cultural Experts', 'time', 'https://www.time.com/5858245/food-world-needs-to-listen-to-the-real-cultural-experts/', '2020-10-18 09:04:19.692509', NULL),
(28, 'Jamil Zaki', 'Don’t Be Afraid to Virtue Signal — It Can Be a Powerful Tool', 'time', 'https://www.time.com/5859459/in-defense-of-virtue-signaling-2/', '2020-10-18 09:04:19.692603', NULL),
(29, 'COVID-19 Conspiracy Theories Risk Public Health', 'People who believe pandemic conspiracies are less likely to follow health guidelines, a study found', 'time', 'https://www.time.com/5891333/covid-19-conspiracy-theories/', '2020-10-18 09:04:19.692694', NULL),
(30, 'How England\'s COVID-19 Reopening Went Terribly Wrong', 'Pubs, bars and restaurants will be forced to close from 10 p.m. in England from Thursday in new measures to combat rising cases of COVID-19, Prime Minister Boris Johnson said Tuesday. Britain recorded 4,422 cases', 'time', 'https://www.time.com/5891509/uk-coronavirus-restrictions/', '2020-10-18 09:04:19.692786', NULL),
(31, 'Why Nursing Homes Hit By COVID-19 Still Need Help', 'COVID-19 death tolls are rising again in nursing homes—but the Trump admin has done little to help.', 'time', 'https://www.time.com/5887699/nursing-homes-covid-19-federal-help/', '2020-10-18 09:04:19.692877', NULL),
(32, 'Contagion of Fear', 'TIME spent a month inside a hospital in Brooklyn to see how the coronavirus outbreak played out within its walls as it treated more than 2,000 patients', 'time', 'https://www.time.com/wyckoff-hospital-brooklyn-coronavirus/', '2020-10-18 09:04:19.692969', NULL),
(33, 'For Protesters Injured by Police, There\'s No Real Recovery', 'Police offices have shot, beaten, and even used cars to run down Black Lives Matter protesters, leaving some with permanent disabilities', 'time', 'https://www.time.com/5894356/protesters-injured-police/', '2020-10-18 09:04:19.693060', NULL),
(34, 'Family of NY Inmate Who Died After Pepper Spray Speak Out', '\"Momma\'s not stopping until that jail goes down,\" says Donna Mays, Jamel Floyd\'s mother', 'time', 'https://www.time.com/5880800/jamel-floyd-jail-death-family-pepper-spray/', '2020-10-18 09:04:19.693152', NULL),
(35, 'What Reparations for Black Americans Could Look Like', 'Rosewood Massacre survivors and descendants were awarded millions decades later. Could this be a model for reparations?', 'time', 'https://www.time.com/5887247/reparations-america-rosewood-massacre/', '2020-10-18 09:04:19.693244', NULL),
(36, 'Breonna Taylor Grand Jury Records Offer Rare Insight', 'An unnamed juror filed a motion on accusing the Kentucky Attorney General of using the grand jury to deflect from his own responsibility', 'time', 'https://www.time.com/5894291/breonna-taylor-grand-jury/', '2020-10-18 09:04:19.693335', NULL),
(37, 'The Costs of Post-Pandemic Childcare Leave Parents in a Crunch', 'For years, the cost of childcare has been rising faster than wages. A weak and uncertain economy may be pushing parents to the breaking point.', 'time', 'https://www.time.comhttps://bit.ly/3dqyG9k', '2020-10-18 09:04:19.693426', NULL),
(38, 'Don’t Wait Until 2021 to Refresh Your Finances. Do These 5 Things Now', 'It may sound strange to ask for a raise in a pandemic, but don\'t feel awkward. Now is a smart time to do it.', 'time', 'https://www.time.comhttps://bit.ly/3nR9my8', '2020-10-18 09:04:19.693517', NULL),
(39, 'Easy Strategies to Help You Save Money on Groceries', 'The average household spends $372 a month on groceries. Here are ways to get your bill down.', 'time', 'https://www.time.comhttps://bit.ly/33UUEhC', '2020-10-18 09:04:19.693610', NULL),
(40, 'Venmo’s New Credit Card Has a Virtual Account Number. Here’s What That Means for You', 'Recent products, like the new Venmo Credit Card, make virtual account numbers easier to use than ever. ', 'time', 'https://www.time.comhttps://bit.ly/3754bF5', '2020-10-18 09:04:19.693707', NULL),
(41, 'As Coronavirus Continues to Spread in the U.S., the Clinical Trials Cancer Patients Rely on Are Disappearing', 'Since the start of the pandemic, the National Cancer Institute says enrollment in trials has dropped by about 10% each month', 'time', 'https://www.time.com/5870461/cancer-clinical-trials-coronavirus/', '2020-10-18 09:04:19.693801', NULL),
(42, 'COVID-19 Killed the Hug. What Will Replace It?', 'Dr. Mark Sklansky has always hated shaking hands. He can think of about a dozen better ways to greet patients than the icky exchange. “Hands are warm, they’re wet, and we know that they transmit', 'time', 'https://www.time.com/5842469/coronavirus-handshake-social-touch/', '2020-10-18 09:04:19.693893', NULL),
(43, 'How to Avoid Back Pain While Working at Home', 'If you\'re working from home during the coronavirus pandemic, you may be noticing new aches and pains. We asked an expert for their advice', 'time', 'https://www.time.com/5821252/back-pain-work-from-home-tips/', '2020-10-18 09:04:19.693985', NULL),
(44, 'Is Melatonin Safe to Take Every Night?', 'As in so many things, caution is warranted', 'time', 'https://www.time.com/5672106/melatonin-safety/', '2020-10-18 09:04:19.694125', NULL),
(45, 'Trump and Pelosi haven’t spoken in a year as grave crises grip the nation', 'House Speaker Nancy Pelosi (D-Calif.) rips up her copy of President Trump’s State of the Union address on Feb. 4. (Toni L. Sandys/The Post)@PKCapitolAnalysisTrump and Pelosi haven’t spoken in a year as grave crises grip the nationHistory is littered with fractious relationships between leaders of the executive and legislative branches, but they often found a way to work together.By Paul Kane', 'washingtonpost', 'https://www.washingtonpost.com/powerpost/trump-pelosi-coronavirus-election/2020/10/17/392fcdd2-0fe1-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.694222', NULL),
(46, 'How does Amy Coney Barrett’s judicial philosophy square with who was left out of the Constitution?', 'The FixAnalysisHow does Amy Coney Barrett’s judicial philosophy square with who was left out of the Constitution?By Eugene Scott', 'washingtonpost', 'https://www.washingtonpost.com/politics/2020/10/17/originalism-diverse-america-how-does-amy-coney-barretts-judicial-philosophy-square-with-who-was-left-out-constitution/', '2020-10-18 09:04:19.694318', NULL),
(47, 'Let history, not partisans, prosecute Trump', 'Let history, not partisans, prosecute TrumpOpinion by Jill Lepore', 'washingtonpost', 'https://www.washingtonpost.com/outlook/truth-reconciliation-tribunal-trump-historians/2020/10/16/84026810-0e88-11eb-b1e8-16b59b92b36d_story.html', '2020-10-18 09:04:19.694409', NULL),
(48, 'Trump has shredded norms. Here’s an exhaustive – and still partial – list.', 'Trump has shredded norms. Here’s an exhaustive – and still partial – list.By Amy Siskind', 'washingtonpost', 'https://www.washingtonpost.com/graphics/2020/outlook/siskind-list-trump-norms/', '2020-10-18 09:04:19.694500', NULL),
(49, 'As pandemic surges and economy stalls, Trump fails to live up to dealmaker image', 'As pandemic surges and economy stalls, Trump fails to live up to dealmaker imageBy Toluse Olorunnipa and Erica Werner', 'washingtonpost', 'https://www.washingtonpost.com/politics/trump-democrats-coronvirus-economy/2020/10/17/5533bcbe-102c-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.694592', NULL),
(50, 'The 5 types of attack ads defining the 2020 congressional elections', 'The FixAnalysisThe 5 types of attack ads defining the 2020 congressional electionsBy Amber Phillips', 'washingtonpost', 'https://www.washingtonpost.com/politics/2020/10/17/5-types-attack-ads-defining-2020-congressional-elections/', '2020-10-18 09:04:19.694683', NULL),
(51, 'CBS is remaking its police shows for the Black Lives Matter era', 'CBS is remaking its police shows for the Black Lives Matter eraBy Steven Zeitchik', 'washingtonpost', 'https://www.washingtonpost.com/business/2020/10/14/cbs-police-shows-black-lives-matter/', '2020-10-18 09:04:19.694774', NULL),
(52, 'How a lifelong obsession with snow leopards led me to northern India  ', 'How a lifelong obsession with snow leopards led me to northern India  Dubbed \"ghost cats\" they are among the most difficult animals to see in the wild.By Dina Mishev', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/travel/trailing-the-elusive-snow-leopard-in-northern-india/2020/01/09/7d592b02-2d9c-11ea-bcb3-ac6482c4a92f_story.html', '2020-10-18 09:04:19.694866', NULL),
(53, 'First Latina to be elected in a blue-leaning Va. county. But she’s a Republican and an object of hate.', 'First Latina to be elected in a blue-leaning Va. county. But she’s a Republican and an object of hate.By Antonio Olivo', 'washingtonpost', 'https://www.washingtonpost.com/local/virginia-politics/yesli-vega-prince-william-republican/2020/10/16/a88e61a2-f76d-11ea-be57-d00bb9bc632d_story.html', '2020-10-18 09:04:19.694957', NULL),
(54, 'At VMI, Black cadets endure lynching threats, Klan memories and veneration of Confederacy', 'Race & ReckoningAt VMI, Black cadets endure lynching threats, Klan memories and veneration of ConfederacyAfrican American students and alumni describe a hostile atmosphere at the state-supported military college, which was the last in Virginia to integrate.By Ian Shapira', 'washingtonpost', 'https://www.washingtonpost.com/local/at-vmi-black-cadets-endure-lynching-threats-klan-memories-and-confederacy-veneration/2020/10/17/3bf53cec-0671-11eb-859b-f9c27abe638d_story.html', '2020-10-18 09:04:19.695048', NULL),
(55, 'What’s so special about this toilet? It’s the first one NASA designed for women.', 'The LilyWhat’s so special about this toilet? It’s the first one NASA designed for women.By Soo Youn', 'washingtonpost', 'https://www.thelily.com/whats-so-special-about-this-toilet-its-the-first-one-nasa-designed-for-women/', '2020-10-18 09:04:19.695139', NULL),
(56, 'Joe Biden’s ‘Animal Crossing’ island was definitely made by a pro gamer', 'Joe Biden’s ‘Animal Crossing’ island was definitely made by a pro gamerBy Gene Park', 'washingtonpost', 'https://www.washingtonpost.com/video-games/2020/10/16/biden-animal-crossing-island/', '2020-10-18 09:04:19.695230', NULL),
(57, '‘Strangest time I’ve ever been in’: Music venues deal with the new normal', '‘Strangest time I’ve ever been in’: Music venues deal with the new normalBy Hau Chu and Fritz Hahn', 'washingtonpost', 'https://www.washingtonpost.com/goingoutguide/music/music-venues-reopen-dc-md-va/2020/10/14/6085adc0-08ac-11eb-859b-f9c27abe638d_story.html', '2020-10-18 09:04:19.695322', NULL),
(58, 'Jacinda Ardern rolls to reelection in New Zealand amid global praise for pandemic battle', 'Jacinda Ardern rolls to reelection in New Zealand amid global praise for pandemic battleThe victory gave her the opportunity to form the country\'s first single-party government in decades. But a battered economy awaits the New Zealand leader.By Emanuel Stoakes and Miriam Berger', 'washingtonpost', 'https://www.washingtonpost.com/world/asia_pacific/jacinda-ardern-new-zealand-election/2020/10/17/89a8d21a-0931-11eb-8719-0df159d14794_story.html', '2020-10-18 09:04:19.695414', NULL),
(59, 'NFL games on TV: Steelers and Browns tangle; Aaron Rodgers and Tom Brady meet up', 'NFL games on TV: Steelers and Browns tangle; Aaron Rodgers and Tom Brady meet upBy Cindy Boren1 hour ago', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/18/nfl-games-on-tv-today-week-6/', '2020-10-18 09:04:19.695519', NULL),
(60, 'Gather around Tabla for another helping of Georgian cooking', 'ReviewGather around Tabla for another helping of Georgian cookingTabla is the casual spinoff of Supra. Of course there’s khachapuri on the menu.By Tom Sietsema', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/food/tabla-restaurant-review/2020/10/15/a6b7c408-0c95-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.695664', NULL),
(61, 'Should you bring covid-19 into your college application essay?', 'College penants hang in a classroom at Wheaton High School. (Bonnie Jo Mount/The Post)PerspectiveShould you bring covid-19 into your college application essay?It depends on what you say and how you say it.By Jay Mathews', 'washingtonpost', 'https://www.washingtonpost.com/local/education/should-you-bring-covid-19-into-your-college-application-essay/2020/10/16/4c03baca-0d5e-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.695839', NULL),
(62, 'Women’s March in D.C. draws thousands in protest of Supreme Court nominee, Trump', 'Women’s March in D.C. draws thousands in protest of Supreme Court nominee, TrumpThe marches in D.C. and cities around the country took place days before the Senate holds its first vote to confirm Amy Coney Barrett to replace the late Justice Ruth Bader Ginsburg, a liberal leader and feminist icon.By Samantha Schmidt, Rebecca Tan and Susan Svrluga‘Honor her wish’: Signs from the Women’s March in D.C.', 'washingtonpost', 'https://www.washingtonpost.com/dc-md-va/2020/10/17/womens-march-dc-updates/', '2020-10-18 09:04:19.695949', NULL),
(63, 'When your co-worker is your roommate, and making bad choices', 'PerspectiveWhen your co-worker is your roommate, and making bad choicesBy Karla L. Miller', 'washingtonpost', 'https://www.washingtonpost.com/business/2020/10/15/coworker-roommate-tension-coronavirus/', '2020-10-18 09:04:19.696062', NULL),
(64, 'Teofimo Lopez earns biggest win of his career with unanimous decision over Vasiliy Lomachenko', 'Teofimo Lopez earns biggest win of his career with unanimous decision over Vasiliy LomachenkoBy Gene Wang', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/vasiliy-lomachenko-teofimo-lopez-fight-live-updates/', '2020-10-18 09:04:19.696183', NULL),
(65, 'Is it time to stop segregating kids by ability in middle school math?', 'Is it time to stop segregating kids by ability in middle school math?By Steven Yoder', 'washingtonpost', 'https://www.washingtonpost.com/local/education/is-it-time-to-stop-segregating-kids-by-ability-in-middle-school-math/2020/10/16/eaacc4f8-0fcc-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.696390', NULL),
(66, 'How a Biden White House can hold Trump accountable by holding itself back', 'How a Biden White House can hold Trump accountable by holding itself backOpinion by Laurence H. Tribe and Joshua A. Geltzer', 'washingtonpost', 'https://www.washingtonpost.com/outlook/biden-white-house-prosecute/2020/10/16/f2ef9114-09a9-11eb-9be6-cf25fb429f1a_story.html', '2020-10-18 09:04:19.696769', NULL),
(67, 'With Nick Saban on the sideline, No. 2 Alabama outclasses No. 3 Georgia again', 'Alabama Coach Nick Saban, pictured during last week’s game against Mississippi, was on the sideline for Saturday night’s matchup with Georgia. (Rogelio V. Solis/AP)With Nick Saban on the sideline, No. 2 Alabama outclasses No. 3 Georgia againThe Crimson Tide posted its sixth straight victory against the Bulldogs on Saturday night in Tuscaloosa.By Chuck Culpepper', 'washingtonpost', 'https://www.washingtonpost.com/sports/colleges/alabama-georgia-nick-saban/2020/10/17/fcae5df8-10ba-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.697494', NULL),
(68, 'All the Presidents’ Drinks: How to make Gerald Ford’s Martini', 'VideoAll the Presidents’ Drinks: How to make Gerald Ford’s MartiniBy The Washington Post', 'washingtonpost', 'https://www.washingtonpost.com/video/lifestyle/food/gerald-fords-martini-all-the-presidents-drinks/2020/10/16/6e507248-2c7d-430e-8337-98c9e04d962d_video.html', '2020-10-18 09:04:19.697919', NULL),
(69, 'Soaking up history in Arkansas’ Hot Springs National Park', 'Soaking up history in Arkansas’ Hot Springs National ParkAn hour outside Little Rock, taking the waters in a revitalized nineteenth-century spa town.By Christine Dell\'Amore', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/travel/soaking-up-history-in-arkansas-hot-springs-national-park/2020/02/06/edce129e-437c-11ea-b5fc-eefa848cde99_story.html', '2020-10-18 09:04:19.698030', NULL),
(70, 'Can Biden compete in Trump’s rural strongholds? Democrats hope so.', 'Can Biden compete in Trump’s rural strongholds? Democrats hope so.Democrats say that Joe Biden’s populist message can win back voters in America’s heartland, narrowing the president’s big 2016 margins among rural residents.By Annie Gowen and Jenna Johnson', 'washingtonpost', 'https://www.washingtonpost.com/national/biden-trump-rural-voters/2020/10/17/569ddd26-0fca-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.698168', NULL);
INSERT INTO `news_news` (`id`, `title`, `news_body`, `source`, `url`, `created_on`, `updated_on`) VALUES
(71, 'Ask Amy: Train gift may derail friendship … or a marriage', 'Ask Amy: Train gift may derail friendship … or a marriageReader’s wife is annoyed that his godson sold a present years later.', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/style/ask-amy-train-gift-may-derail-friendship--or-a-marriage/2020/10/13/f1f45826-ffae-11ea-8d05-9beaaa91c71f_story.html', '2020-10-18 09:04:19.698268', NULL),
(72, 'Tired of the same old home office? Punch the clock in a hotel guest room.', 'Tired of the same old home office? Punch the clock in a hotel guest room.By Andrea Sachs', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/travel/work-hotels-day-rates/2020/10/15/f58f9494-081b-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.698366', NULL),
(73, '‘Top Chef’ is getting more Black judges — finally. Other cooking shows need to follow suit.', 'VoraciouslyPerspective‘Top Chef’ is getting more Black judges — finally. Other cooking shows need to follow suit.By Johnna French', 'washingtonpost', 'https://www.washingtonpost.com/food/2020/10/16/top-chef-black-judges/', '2020-10-18 09:04:19.698499', NULL),
(74, 'The Rays are off to the World Series after sending the Astros home empty-handed', 'ALCSGame 7The Rays are off to the World Series after sending the Astros home empty-handedBy Jesse Dougherty', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/tampa-bay-rays-are-headed-world-series-after-taking-game-7-alcs-eliminate-houston-astros/', '2020-10-18 09:04:19.698594', NULL),
(75, 'The bogus U.S. census numbers showing slavery’s ‘wonderful influence’ on the enslaved', 'RetropolisThe Past, RediscoveredThe bogus U.S. census numbers showing slavery’s ‘wonderful influence’ on the enslavedIn 1840, the government\'s count found that “insanity and idiocy” was 10 times more common among free Blacks than the enslaved — a number that was completely wrong but never corrected.By Peter Whoriskey', 'washingtonpost', 'https://www.washingtonpost.com/history/2020/10/17/1840-census-slavery-insanity/', '2020-10-18 09:04:19.698689', NULL),
(76, 'During the pandemic, a lifelong travel writer takes a journey inward to reflect on what he has learned around the globe', 'What exactly is a travel writer who cannot travel? (llustration by Spiros Halaris for The Post)During the pandemic, a lifelong travel writer takes a journey inward to reflect on what he has learned around the globeJason Wilson takes measure of what is lost right now and looks back to key moments in his decades of travel that solidified not only the importance of travel, but also of being a witness.By Jason Wilson', 'washingtonpost', 'https://www.washingtonpost.com/magazine/2020/10/14/lifelong-travel-writer-takes-journey-inward/', '2020-10-18 09:04:19.698785', NULL),
(77, 'Full coverage and resources', 'Full coverage and resources', 'washingtonpost', 'https://www.washingtonpost.com/coronavirus/', '2020-10-18 09:04:19.698883', NULL),
(78, 'PM Update: Clear and chilly overnight, and fine weather continues Sunday', 'Capital Weather GangPM Update: Clear and chilly overnight, and fine weather continues SundayYou may need to pop on the heat tonight, with temperatures expected to fall into the 30s.By Greg Porter', 'washingtonpost', 'https://www.washingtonpost.com/weather/2020/10/17/pm-update-clear-chilly-overnight-fine-weather-continues-sunday/', '2020-10-18 09:04:19.699014', NULL),
(79, 'A lifetime of travel writing prepared her for everything — but staying in one place', 'A lifetime of travel writing prepared her for everything — but staying in one placeBy Andrea Sachs', 'washingtonpost', 'https://www.washingtonpost.com/magazine/2020/10/12/travel-writer-andrea-sachs-on-being-grounded-during-the-pandemic/', '2020-10-18 09:04:19.699116', NULL),
(80, '‘Amnesia’ developers aim a spotlight on something truly terrifying: You', 'LauncherVideo Game News & Analysis‘Amnesia’ developers aim a spotlight on something truly terrifying: YouBy Gene Park', 'washingtonpost', 'https://www.washingtonpost.com/video-games/2020/10/15/amnesia-rebirth-developer-interview/', '2020-10-18 09:04:19.699475', NULL),
(81, 'Femme fatale from Hollywood’s golden age, dies at 97', 'Rhonda Fleming1923–2020Femme fatale from Hollywood’s golden age, dies at 97Fleming excelled as a sensual villain in several film noirs, including the desert-set “Inferno.”By Adam Bernstein', 'washingtonpost', 'https://www.washingtonpost.com/local/obituaries/rhonda-fleming-femme-fatale-from-hollywoods-golden-age-dies-at-97/2020/10/16/5721c830-7233-11e7-8f39-eeb7d3a2d304_story.html', '2020-10-18 09:04:19.699599', NULL),
(82, 'Asked and answered: What to know about coronavirus', 'Asked and answered: What to know about coronavirus', 'washingtonpost', 'https://www.washingtonpost.com/graphics/2020/health/coronavirus-frequently-asked-questions/', '2020-10-18 09:04:19.699699', NULL),
(83, 'Truly exceptional wines deserve four stars, so we’re adding one to our rating system', 'Truly exceptional wines deserve four stars, so we’re adding one to our rating systemBy Dave McIntyre', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/food/truly-exceptional-wines-deserve-four-stars-so-were-adding-one-to-our-rating-system/2020/10/16/7a56e422-0ef5-11eb-b1e8-16b59b92b36d_story.html', '2020-10-18 09:04:19.699798', NULL),
(84, 'I’m not a doctor, but I play one at home', 'PerspectiveI’m not a doctor, but I play one at homeBy Gene Weingarten', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/magazine/gene-weingarten-im-not-a-doctor-but-i-play-one-at-home/2020/10/09/7e66342a-fe9f-11ea-b555-4d71a9254f4b_story.html', '2020-10-18 09:04:19.699904', NULL),
(85, 'Cozy up to these 9 fall-friendly brunch recipes', 'Cozy up to these 9 fall-friendly brunch recipesBy Becky Krystal', 'washingtonpost', 'https://www.washingtonpost.com/food/2020/10/17/fall-brunch-recipes/', '2020-10-18 09:04:19.700068', NULL),
(86, 'As isolation takes a deadly toll on older adults, a senior dance group finds a new way to connect', 'PerspectiveAs isolation takes a deadly toll on older adults, a senior dance group finds a new way to connectBy Theresa Vargas', 'washingtonpost', 'https://www.washingtonpost.com/local/isolation-is-killing-older-adults-a-senior-dance-group-is-finding-a-new-way-to-connect/2020/10/17/ed6efe58-1027-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.700197', NULL),
(87, 'How a motorcycle rally may have spread virus across Upper Midwest', '(Misty Prochaska for The Post)How a motorcycle rally may have spread virus across Upper MidwestWeeks after the Sturgis Motorcycle Rally, the Dakotas and three nearby states led the nation in new coronavirus infections per capita.By Brittany Shammas and Lena H. Sun', 'washingtonpost', 'https://www.washingtonpost.com/health/2020/10/17/sturgis-rally-spread/', '2020-10-18 09:04:19.700294', NULL),
(88, 'Wolves are on the ballot in Colorado ', 'Wolves are on the ballot in Colorado By Jennifer Oldham', 'washingtonpost', 'https://www.washingtonpost.com/science/2020/10/16/wolves-are-ballot-colorado/', '2020-10-18 09:04:19.700396', NULL),
(89, 'How to vote in your state', 'How to vote in your state', 'washingtonpost', 'https://www.washingtonpost.com/elections/2020/how-to-vote/', '2020-10-18 09:04:19.700492', NULL),
(90, 'Texas is the most intriguing political state in the country this fall', 'AnalysisTexas is the most intriguing political state in the country this fallFor three decades, Texas has been reliably red, but the state is undergoing significant changes. Whichever way it goes in November, there’s no question that President Trump is a problem for Republicans in the Lone Star State.By Dan Balz', 'washingtonpost', 'https://www.washingtonpost.com/politics/texas-election-demographics-trump/2020/10/17/c952f440-108e-11eb-b1e8-16b59b92b36d_story.html', '2020-10-18 09:04:19.700592', NULL),
(91, 'Fatal police shootings of mentally ill people are more likely to take place in small and midsized metro areas', 'Fatal police shootings of mentally ill people are more likely to take place in small and midsized metro areasAlthough the number of these fatalities has declined, these confrontations remain a vexing issue, especially in metropolitan areas with populations of less than 1 million. A case in Oregon showed what can go wrong when police use violence with a mentally ill person.By Kimberly Kindy, Julie Tate, Jennifer Jenkins and Ted Mellnik', 'washingtonpost', 'https://www.washingtonpost.com/national/police-mentally-ill-deaths/2020/10/17/8dd5bcf6-0245-11eb-b7ed-141dd88560ea_story.html', '2020-10-18 09:04:19.700701', NULL),
(92, 'The country can’t recover from Trump’s presidency unless he’s held accountable', 'The country can’t recover from Trump’s presidency unless he’s held accountableOpinion by Sam Tanenhaus', 'washingtonpost', 'https://www.washingtonpost.com/outlook/2020/10/16/prosecute-trump-accountability-presidency/', '2020-10-18 09:04:19.700806', NULL),
(93, '‘Honor her wish’: Signs from the Women’s March ', '‘Honor her wish’: Signs from the Women’s March By Samantha Schmidt, Rebecca Tan and Teddy Amenabar', 'washingtonpost', 'https://www.washingtonpost.com/dc-md-va/2020/10/17/womens-march-signs/', '2020-10-18 09:04:19.700952', NULL),
(94, 'A restless Virginia resident finds sights that evoke the West within driving distance', 'The Sand Cave in Ewing, Virginia. (Billy Bowling for the Washington Post)A restless Virginia resident finds sights that evoke the West within driving distanceBy Erin Gifford', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/travel/a-restless-virginia-resident-finds-sights-that-evoke-the-west-within-driving-distance/2020/10/15/27a63ad8-08d4-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.701056', NULL),
(95, 'Could Japan finally kill the fax and kick its paper habit?', 'Could Japan finally kill the fax and kick its paper habit?By Simon Denyer', 'washingtonpost', 'https://www.washingtonpost.com/world/asia_pacific/japan-fax-paper-suga/2020/10/16/fc6fcdd8-06ef-11eb-8719-0df159d14794_story.html', '2020-10-18 09:04:19.701162', NULL),
(96, 'Saints and Pelicans owner ‘doing fine’ after thwarting attempted carjacking', 'Saints and Pelicans owner ‘doing fine’ after thwarting attempted carjackingGayle Benson, 73, was \'shaken at the time\' but was unharmed.By Jake Russell', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/saints-pelicans-gayle-benson-car-theft/', '2020-10-18 09:04:19.701268', NULL),
(97, 'How the Cares Act gave millions to energy companies with no strings attached', 'How the Cares Act gave millions to energy companies with no strings attachedBy Desmond Butler, Steven Mufson and Douglas MacMillan', 'washingtonpost', 'https://www.washingtonpost.com/climate-environment/2020/10/06/cares-act-money-companies/', '2020-10-18 09:04:19.701377', NULL),
(98, 'Not even a pandemic can break rich cities’ grip on the U.S. economy', 'Not even a pandemic can break rich cities’ grip on the U.S. economyBy Hamza Shaban', 'washingtonpost', 'https://www.washingtonpost.com/road-to-recovery/2020/10/15/wealthy-cities-bounce-back-from-coronavirus/', '2020-10-18 09:04:19.701484', NULL),
(99, 'Post office mural depicting slavery is covered', 'Post office mural depicting slavery is coveredBy Taylor DeVille and Craig Clary', 'washingtonpost', 'https://www.washingtonpost.com/local/post-office-mural-depicting-slavery-covered/2020/10/17/ed123d34-0d6c-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.701592', NULL),
(100, 'Human-driven climate change is changing the colors of fall foliage, scientists say', 'Human-driven climate change is changing the colors of fall foliage, scientists sayBy Kat Long', 'washingtonpost', 'https://www.washingtonpost.com/science/humans-altered-fall-foliage/2020/10/16/0abc786c-03f5-11eb-897d-3a6201d6643f_story.html', '2020-10-18 09:04:19.701697', NULL),
(101, 'One last vote: In Michigan, a terminally ill man’s mission to cast a ballot', 'One last vote: In Michigan, a terminally ill man’s mission to cast a ballotBy Jose A. Del RealMichigan appeals court reinstates Election Day mail-in ballot deadline‘It needs to stop’: Mich. governor condemns Trump\'s rally rhetoric', 'washingtonpost', 'https://www.washingtonpost.com/politics/one-last-vote/2020/10/16/785419e4-0fd4-11eb-b1e8-16b59b92b36d_story.html', '2020-10-18 09:04:19.701855', NULL),
(102, 'Devastated by lockdowns, Hawaii’s struggling tourism industry pins its hopes on the first signs of reopening', 'Devastated by lockdowns, Hawaii’s struggling tourism industry pins its hopes on the first signs of reopeningBy Rachel Siegel', 'washingtonpost', 'https://www.washingtonpost.com/road-to-recovery/2020/10/15/hawaii-economy-tourism-travel-coronavirus/', '2020-10-18 09:04:19.701975', NULL),
(103, 'Should you get a coronavirus test if you think you have a cold? There may be ‘no right answer.’', 'Should you get a coronavirus test if you think you have a cold? There may be ‘no right answer.’By Elizabeth Chang', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/wellness/covid-test-cold-flu/2020/10/16/9b8a8d32-0ef1-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.702076', NULL),
(104, 'For the ‘New Wonders of the World,’ 2020 was a quiet year', 'For the ‘New Wonders of the World,’ 2020 was a quiet yearThe pandemic’s long-term repercussions for tourism to key sites are still uncertain.By Rick Noack', 'washingtonpost', 'https://www.washingtonpost.com/world/2020/10/17/seven-world-wonders-tourism-coronavirus/', '2020-10-18 09:04:19.702231', NULL),
(105, '‘Charm City Kings’ builds on a legacy of narrow-minded depictions of what it’s like to grow up Black in Baltimore', 'Meek Mill, far left, in \"Charm City Kings.\" (William Gray/HBO Max)Movie Review‘Charm City Kings’ builds on a legacy of narrow-minded depictions of what it’s like to grow up Black in BaltimoreThe new film streaming on HBO Max can’t get past stereotypes with its portrayals of the city’s dirt-bike riders and younger residents.By Lawrence Burney', 'washingtonpost', 'https://www.washingtonpost.com/entertainment/tv/charm-city-kings-baltimore-stereotypes/2020/10/15/f878ecd6-0ca9-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.702333', NULL),
(106, 'State asked to halt sale of three Baltimore Museum of Art paintings', 'State asked to halt sale of three Baltimore Museum of Art paintingsLetter calls on Maryland attorney general to investigate de-accessioning of important works, including a Warhol ‘masterpiece.’By Peggy McGlone', 'washingtonpost', 'https://www.washingtonpost.com/entertainment/museums/baltimore-museum-of-art-warhol-sale/2020/10/15/ea4f682a-0f14-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.702436', NULL),
(107, 'Trump aides seek to set aside division and plan for final sprint to Election Day', 'Trump aides seek to set aside division and plan for final sprint to Election DayThe president is behind in polls, but Republicans still see a chance for a repeat of his 2016 come-from-behind victory.By Michael Scherer and Josh Dawsey', 'washingtonpost', 'https://www.washingtonpost.com/politics/trump-aides-seek-to-set-aside-division-and-plan-for-final-sprint-to-election-day/2020/10/17/09f8cf22-0fbf-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.702533', NULL),
(108, 'The 31-day campaign against QAnon', 'Kevin Van Ausdal. (Kevin D. Liles for The Post)The 31-day campaign against QAnonIn Georgia, a political novice named Kevin Van Ausdal, who said he wanted to “bring civility back to Washington,” tried to run for Congress against a candidate known for her support of extremist conspiracy theories. This is what happened.By Stephanie McCrummen', 'washingtonpost', 'https://www.washingtonpost.com/nation/2020/10/17/kevin-van-ausdal-qanon-marjorie-greene-georgia/', '2020-10-18 09:04:19.702658', NULL),
(109, 'Trump is trying to woo suburban women. Suburban women aren’t buying it.', 'PerspectiveTrump is trying to woo suburban women. Suburban women aren’t buying it.By Petula Dvorak', 'washingtonpost', 'https://www.washingtonpost.com/local/trump-is-trying-to-woo-suburban-women-suburban-women-arent-buying-it/2020/10/15/f9e045b8-0f12-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.702759', NULL),
(110, 'The best things to do — virtually and in person — while quarantined in the D.C. area', 'The best things to do — virtually and in person — while quarantined in the D.C. areaVirtual film festivals, trivia nights, concerts and poetry slams offer an escape for everyone staying at home.By Going Out Guide Staff', 'washingtonpost', 'https://www.washingtonpost.com/dc-md-va/2020/04/02/things-to-do-dc-quarantine-coronavirus/', '2020-10-18 09:04:19.702859', NULL),
(111, 'Iowa derecho in August was most costly thunderstorm disaster in U.S. history', '(KC McGinnis for The Post)Iowa derecho in August was most costly thunderstorm disaster in U.S. historyNOAA estimates damage at $7.5 billion, higher than many hurricanes.By Bob Henson', 'washingtonpost', 'https://www.washingtonpost.com/weather/2020/10/17/iowa-derecho-damage-cost/', '2020-10-18 09:04:19.702958', NULL),
(112, 'The 150-mile bike trail from Maryland to Pennsylvania puts the cares of 2020 behind you', 'The 150-mile bike trail from Maryland to Pennsylvania puts the cares of 2020 behind youBy David Montgomery', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/magazine/the-150-mile-bike-trail-from-maryland-to-pennsylvania-puts-the-cares-of-2020-behind-you/2020/10/12/df3dcf20-fea3-11ea-9ceb-061d646d9c67_story.html', '2020-10-18 09:04:19.703066', NULL),
(113, 'Matt Berninger, the National frontman who just released his first solo record, is doing just fine', 'Matt Berninger, the National frontman who just released his first solo record, is doing just fineWith “Serpentine Prison,” his first solo outing, the National frontman “just wanted a Matt Berninger record, you know?”By Sonia Rao', 'washingtonpost', 'https://www.washingtonpost.com/entertainment/music/matt-berninger-the-national-serpentine-prison/2020/10/13/147045c2-035b-11eb-a2db-417cddf4816a_story.html', '2020-10-18 09:04:19.703423', NULL),
(114, 'A rap sheet for a former president', 'A rap sheet for a former presidentOpinion by Barbara McQuade and Joyce White Vance', 'washingtonpost', 'https://www.washingtonpost.com/outlook/rap-sheet-trump-crimes/2020/10/16/c6a539da-0e61-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.703628', NULL),
(115, 'College football week 7 winners and losers: Clemson puts up historic numbers in rout', 'AnalysisCollege football week 7 winners and losers: Clemson puts up historic numbers in routBy Patrick Stevens', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/college-football-week-7-winners-losers/', '2020-10-18 09:04:19.703754', NULL),
(116, 'The small city farm: An oasis in food deserts, during pandemic and beyond', 'The small city farm: An oasis in food deserts, during pandemic and beyondBy Adrian Higgins', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/home/small-urban-gardens-can-help-food-insecure-communities/2020/10/13/18521dca-0714-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.703994', NULL),
(117, 'Maryland Beltway expansion might require moving part of historic African American cemetery', 'Artifacts and memorabilia from the family of Diane Baxter is displayed before the tour of the Moses Morningstar Cemetery. (Robb Hill for The Post)Maryland Beltway expansion might require moving part of historic African American cemeteryState highway officials say they are trying to avoid the graveyard or limit the harm to it.By Katherine Shaver', 'washingtonpost', 'https://www.washingtonpost.com/local/trafficandcommuting/maryland-beltway-expansion-might-require-moving-part-of-historical-african-american-cemetery/2020/10/17/ae4696ca-0da5-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.704104', NULL),
(118, 'FAQ: What to know about masks and covid-19', 'FAQ: What to know about masks and covid-19', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/2020/09/30/mask-guidelines-covid-faq/', '2020-10-18 09:04:19.704435', NULL),
(119, 'The leg brace that allows Alex Smith to play football', 'The leg brace that allows Alex Smith to play footballBy Nicki Jhabvala', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/15/alex-smith-leg-brace-washington-football/', '2020-10-18 09:04:19.704805', NULL),
(120, 'Where Trump and Biden stand on the issues', 'Where Trump and Biden stand on the issuesBy Kevin Uhrmacher and Andrew Braford', 'washingtonpost', 'https://www.washingtonpost.com/elections/2020/trump-policies-vs-biden-policies/', '2020-10-18 09:04:19.705010', NULL),
(121, 'Missing the Waldorf Astoria? Take home a piece of the historic NYC hotel.', 'Missing the Waldorf Astoria? Take home a piece of the historic NYC hotel.The property is auctioning off items from its celebrity suites, guest rooms, bars and even gym.By Andrea Sachs', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/travel/waldorf-astoria-online-auction/2020/10/16/59a3e9b2-0f1f-11eb-8a35-237ef1eb2ef7_story.html', '2020-10-18 09:04:19.705150', NULL),
(122, 'How to watch football: Understanding pass blocking', 'AnalysisHow to watch football: Understanding pass blockingBy Richard Johnson', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/16/understanding-pass-blocking-schemes-football/', '2020-10-18 09:04:19.705259', NULL),
(123, 'Carolyn Hax: How do you get over your disillusionment about your parents?', 'Carolyn Hax: How do you get over your disillusionment about your parents?Try to allow yourself to see them as flawed humans and maybe let yourself be one, too.', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/style/carolyn-hax-how-do-you-get-over-your-disillusionment-about-your-parents/2020/10/14/5d652f94-0a6e-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.705372', NULL),
(124, 'Without crowd noise, NFL defenses are at the mercy of the hard count', 'Without crowd noise, NFL defenses are at the mercy of the hard countA lack of crowd noise has given quarterbacks yet another advantage over defenses, and it\'s considered a major reason scoring is up this season.By Adam Kilgore', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/16/nfl-crowd-noise-hard-counts/', '2020-10-18 09:04:19.705490', NULL),
(125, 'Spanning years of drug wars, U.S. indictments claim cartels reached into Mexico’s top security ranks', 'Spanning years of drug wars, U.S. indictments claim cartels reached into Mexico’s top security ranksBy Kevin Sieff', 'washingtonpost', 'https://www.washingtonpost.com/world/the_americas/mexico-cartels-drugs-indictments/2020/10/17/101e1f06-0fe7-11eb-b404-8d1e675ec701_story.html', '2020-10-18 09:04:19.705611', NULL),
(126, 'The best way to manage joint pain is also the least intuitive: Keep active', 'The best way to manage joint pain is also the least intuitive: Keep activeBy Christie Aschwanden', 'washingtonpost', 'https://www.washingtonpost.com/health/arthritis-joint-pain-remedies/2020/10/16/5c1beab0-08a2-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.705720', NULL),
(127, 'Claire Messud has an antidote to our current polarized isolation', 'Book ReviewClaire Messud has an antidote to our current polarized isolationBy Wendy Smith', 'washingtonpost', 'https://www.washingtonpost.com/entertainment/books/claire-messud-has-an-antidote-to-our-current-polarized-isolation/2020/10/15/52c4f822-0e3c-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.705831', NULL),
(128, '‘The NRA has blood on its hands,’ says ‘Inside the NRA’ author and former strategist', '‘The NRA has blood on its hands,’ says ‘Inside the NRA’ author and former strategistBy KK Ottesen', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/magazine/the-nra-has-blood-on-its-hands-says-inside-the-nra-author-and-former-strategist/2020/10/09/2c1f8630-f6ac-11ea-a275-1a2c2d36e1f1_story.html', '2020-10-18 09:04:19.705963', NULL),
(129, 'For when the world is scarier than Halloween, these 12 streaming movies are simply a treat', 'For when the world is scarier than Halloween, these 12 streaming movies are simply a treatBy Sonia Rao', 'washingtonpost', 'https://www.washingtonpost.com/arts-entertainment/2020/10/16/halloween-movies-streaming-guide/', '2020-10-18 09:04:19.706074', NULL),
(130, 'Nine people detained in connection with beheading of French teacher who showed students Muhammad cartoons', 'A man lays a flower outside the school where a slain history teacher worked northwest of Paris. (AP)Nine people detained in connection with beheading of French teacher who showed students Muhammad cartoonsBy James McAuley', 'washingtonpost', 'https://www.washingtonpost.com/world/gruesome-details-emerge-in-beheading-of-french-teacher-who-showed-students-mohammed-cartoons/2020/10/17/9bcaeedc-107b-11eb-b404-8d1e675ec701_story.html', '2020-10-18 09:04:19.706193', NULL),
(131, 'Even after being impeached for it, Trump is leveraging his office to bolster his mud-slinging', 'Even after being impeached for it, Trump is leveraging his office to bolster his mud-slingingOpinion by the Editorial Board', 'washingtonpost', 'https://www.washingtonpost.com/opinions/global-opinions/even-after-being-impeached-for-it-trump-is-still-leveraging-his-office-to-bolster-his-mud-slinging/2020/10/16/1e9ecba0-0fcb-11eb-8074-0e943a91bf08_story.html', '2020-10-18 09:04:19.706291', NULL),
(132, 'The life of George Floyd', 'listen-solidPost ReportsPodcastThe life of George FloydBy Martine PowersplayAdd to:Apple Podcasts,Google Podcasts,Stitcher', 'washingtonpost', 'https://www.washingtonpost.com/podcasts/post-reports/the-life-of-george-floyd', '2020-10-18 09:04:19.706387', NULL),
(133, 'Metro selects new director for its operations control center', 'Metro selects new director for its operations control centerEdward Donaldson, a longtime Federal Aviation Administration official, has been tapped to help reform the transit agency\'s troubled unit.By Justin George', 'washingtonpost', 'https://www.washingtonpost.com/transportation/2020/10/17/metro-selects-new-director-troubled-operations-control-center/', '2020-10-18 09:04:19.706484', NULL),
(134, 'Washington’s Week 6 preview: Ron Rivera needs more from his linebackers', 'Washington’s Week 6 preview: Ron Rivera needs more from his linebackersWashington has been getting beaten soundly by tight ends this season, placing a focus this week on how its linebackers match up with the Giants\' Evan Engram.By Sam Fortier', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/washington-football-preview-new-york-giants/', '2020-10-18 09:04:19.706581', NULL),
(135, 'Why the coronavirus is killing more men than women', 'Why the coronavirus is killing more men than womenMen have weaker immune systems that, in some cases, may actually sabotage the body’s response to an invader. But social and cultural factors may also play a role.By Ben Guarino', 'washingtonpost', 'https://www.washingtonpost.com/science/2020/10/17/coronavirus-men-immune-system/', '2020-10-18 09:04:19.706677', NULL),
(136, 'SNL calls Biden town hall ‘thoughtful,’ compares Trump’s to WrestleMania — and mocks them both', 'SNL calls Biden town hall ‘thoughtful,’ compares Trump’s to WrestleMania — and mocks them bothThe SNL cold open skewered Democratic presidential candidate Joe Biden and President Trump\'s dueling town halls — while making it clear the latter was more ripe for comedy.By Emily Yahr1 hour ago', 'washingtonpost', 'https://www.washingtonpost.com/arts-entertainment/2020/10/18/snl-trump-biden-town-hall-cold-open/', '2020-10-18 09:04:19.706775', NULL),
(137, 'Sign up to get our Coronavirus Updates newsletter', 'Sign up to get our Coronavirus Updates newsletter', 'washingtonpost', 'https://wapo.st/coronavirusnewsletterhp', '2020-10-18 09:04:19.706871', NULL),
(138, 'If you crack your knuckles, don’t worry too much about getting arthritis. But the habit isn’t harmless.', 'If you crack your knuckles, don’t worry too much about getting arthritis. But the habit isn’t harmless.By Katherine Ellison', 'washingtonpost', 'https://www.washingtonpost.com/health/knuckle-cracking-arthritis-harm-/2020/10/16/5e904d0e-09a6-11eb-a166-dc429b380d10_story.html', '2020-10-18 09:04:19.706966', NULL),
(139, 'My kids’ online gaming drove me crazy — until I joined them', 'My kids’ online gaming drove me crazy — until I joined themBy Gina Rich', 'washingtonpost', 'https://www.washingtonpost.com/road-to-recovery/2020/10/14/roblox-online-gaming-family-covid/', '2020-10-18 09:04:19.707060', NULL),
(140, 'Regarding using a public bathroom in the middle of a pandemic', 'Regarding using a public bathroom in the middle of a pandemicBy Teddy Amenabar', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/2020/10/15/coronavirus-public-restroom/', '2020-10-18 09:04:19.707155', NULL),
(141, 'Miss Manners: I didn’t get a stimulus check, but don’t want to say why', 'Miss Manners: I didn’t get a stimulus check, but don’t want to say whyIn talking with friends, reader doesn’t want to be left out but doesn’t want to reveal too much.', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/advice/miss-manners-i-didnt-get-a-stimulus-check-but-dont-want-to-say-why/2020/10/13/21ca8d24-ffad-11ea-8d05-9beaaa91c71f_story.html', '2020-10-18 09:04:19.707249', NULL),
(142, 'Dodgers blast off early, close door late to beat Braves and force Game 7', 'NLCSGame 6Dodgers blast off early, close door late to beat Braves and force Game 7By Dave Sheinin', 'washingtonpost', 'https://www.washingtonpost.com/sports/2020/10/17/dodgers-braves-nlcs-game-6/', '2020-10-18 09:04:19.707344', NULL),
(143, 'Avoiding the dreaded ‘What do you do?’ question', 'Date LabAvoiding the dreaded ‘What do you do?’ question“I don’t want that to be a deciding factor around who I am,” one dater said.By Tanya Ballard Brown', 'washingtonpost', 'https://www.washingtonpost.com/lifestyle/magazine/date-labavoiding-the-dreaded-what-do-you-do-question/2020/10/09/7ed474c0-f775-11ea-a275-1a2c2d36e1f1_story.html', '2020-10-18 09:04:19.707439', NULL),
(144, 'A domestic violence shelter put up Black Lives Matter signs, and law enforcement revolted', 'A domestic violence shelter put up Black Lives Matter signs, and law enforcement revoltedFundamental disagreements about the meaning of “Black Lives Matter” and the prevalence of racism have divided people who normally work hand-in-hand to provide critical public services.By Hannah Knowles', 'washingtonpost', 'https://www.washingtonpost.com/nation/2020/10/17/embrace-black-lives-matter/', '2020-10-18 09:04:19.707535', NULL),
(145, 'Covid-19’s first wave largely missed southern Italy. The second wave is hitting it hard.', 'Covid-19’s first wave largely missed southern Italy. The second wave is hitting it hard.By Chico Harlan and Stefano Pitrelli', 'washingtonpost', 'https://www.washingtonpost.com/world/europe/italy-coronavirus-second-wave/2020/10/17/a1e143da-0f21-11eb-b404-8d1e675ec701_story.html', '2020-10-18 09:04:19.707639', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news_news`
--
ALTER TABLE `news_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news_news`
--
ALTER TABLE `news_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
