-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2026 at 02:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--
CREATE DATABASE IF NOT EXISTS `projekt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projekt`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) DEFAULT NULL,
  `prezime` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `razina` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `username`, `password`, `razina`) VALUES
(6, 'admin', 'admin', 'admin', '$2y$10$G.hn6rLnog5hJbN.hJ43M.xbTVzbHUXkEXFYFut5gdu8thU5M9zmq', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` datetime DEFAULT current_timestamp(),
  `naslov` varchar(255) NOT NULL,
  `sazetak` text NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(255) DEFAULT NULL,
  `kategorija` varchar(50) DEFAULT NULL,
  `arhiva` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(25, '2026-06-21 13:25:05', 'US-Iran talks to begin in Switzerland as Tehran says it closed Strait of Hormuz', 'Direct talks between the US and Iran are set to begin in Switzerland despite the Iranian military saying it has closed the Strait of Hormuz again over Israel\'s attacks on southern Lebanon.', 'Iran also cited a breach of its agreement with the US to end the war as a reason for the closure. However, the US military has said \"traffic continues to flow\" in the strait.\r\n\r\nUS Vice-President JD Vance arrived in Switzerland early on Sunday morning. The new round of negotiations is expected to start later in the day.\r\n\r\nAn Iranian delegation including parliamentary speaker Mohammad Bagher Ghalibaf and Foreign Minister Abbas Araghchi arrived late on Saturday.\r\n\r\nOfficials from the US and Iran will be joined at the talks by Pakistan\'s Prime Minister Shehbaz Sharif and the head of the country\'s armed forces, Field Marshal Asim Munir.\r\n\r\nPakistan has acted as a mediator throughout the war, and hosted a previous round of negotiations between the US and Iran.\r\n\r\n\"Pakistan will continue to support the implementation of the understandings between Iran and the United States,\" the Pakistan Ministry of Foreign Affairs said in a statement ahead of the talks.\r\n\r\nVance said he hoped to make progress \"on the nuclear issue\" and on the \"Lebanon ceasefire issue\".\r\n\r\nSpeaking to the press before he boarded his flight, he was asked about clashes between Israel and Hezbollah and Israeli air strikes in southern Lebanon and said: \"Things are actually getting better there, and things are slowing down a little bit.\"\r\n\r\n\"It\'s going to be something we\'re just going to have to continuously manage to ensure that Israel and Lebanon are both safe and secure. That\'s fundamentally the goal of this, to make the whole region safe and secure,\" he said.\r\n\r\nIran\'s foreign ministry spokesman Esmail Baghaei said his country would be \"demanding that the other side fulfil its commitments\".\r\n\r\nEarlier this week the US and Iranian presidents signed an initial agreement aiming to end the war, including in Lebanon, with immediate effect. It includes a commitment to further talks to reach a final deal over the next 60 days.', 'e26b0400-6ce9-11f1-b961-db0ce038568c.jpg.webp', 'News', 0),
(26, '2026-06-21 13:32:58', 'France bans alcohol at music festival events under red heatwave alert', 'France has banned alcohol at some events at a massive national music festival on Sunday as a heatwave pushes temperatures towards record levels.', 'Annual Fête de la Musique celebrations draw millions to the streets across France. But with a third of the country covered by the most serious heatwave warnings, the government has banned alcohol consumption in public places under the red alerts.\r\n\r\n\"For all events organised by the state and its agencies, instructions have been given not to offer alcohol,\" the office of Prime Minister Sébastien Lecornu said.\r\n\r\nTemperatures of 39-40C (102-104F) are expected from the southwest through the Paris region into Burgundy on Sunday, with some areas possibly reaching 41C.\r\n\r\nTemperatures have been forecast to peak on Monday, and authorities have warned they could match historic highs.\r\n\r\nThe government has called for limits on alcohol consumption \"to preserve emergency and healthcare services and allow medical staff to focus on caring for the most vulnerable\".\r\n\r\nBBC Weather graphic showing Europe with temperatures into the 30s Celsius in many major European cities, with 40C shown for Bordeaux and Paris\r\nAn intense heatwave has been developing over Europe with many places seeing temperatures 10-15C above the seasonal average\r\nThe heatwave has been going for days and has disrupted the country, forcing the cancellation of dozens of trains and the suspension of classes.\r\n\r\nFrance\'s weather service Météo-France said it was \"uncertain\" how long the heatwave, which has been estimated to affect about three quarters of the population, would last.\r\n\r\nTo help Parisians and tourists cope with the heat, authorities are keeping parks and gardens in the French capital open through the night.\r\n\r\nFête de la Musique has been going for more than 40 years, and is always held on the summer solstice.\r\n\r\nLast year, about two million people attended events in Paris.', '91e33450-6d00-11f1-9f29-21c4f4a06079.jpg.webp', 'News', 0),
(27, '2026-06-21 13:34:10', 'Why an AI company cleaned my New York City apartment for free', 'Picture this: a team of camera-clad cleaners and a private chef to boot, all wired with high-tech recording apparatus show up at your home.', 'You are not part of a reality TV show, and have not woken up in an Aldous Huxley or Margaret Atwood novel.\r\n\r\nInstead, you are a resident of New York City, where AI companies are sending free cooking and cleaning staff straight to people\'s doors.\r\n\r\nBut, there is a catch: this AI company is gathering data to train the next generation of cooking and cleaning robots, and every inch of your apartment is now being recorded.\r\n\r\nThe initiative, dubbed Shift by AI firm Micro AGI, is part of a growing number of companies developing the next generation of autonomous robots, which tech bosses hope will be able to do everything from the washing up to serving as live-in personal carers.\r\n\r\nAt my apartment on New York\'s Upper East Side, I am greeted by two mid-twenties college graduates who have bounced around the start-up world and were looking for work.\r\n\r\nBecause demand for the free cleans is so high, they are stationed in New York indefinitely, cleaning around five apartments a day, five days a week. The only difference between these guys and a regular cleaner is they have built-in cameras attached to their caps, connected via a lead to their mobile phones.\r\n\r\nThe main aim of the offer is to perform tasks requiring dexterity, to train the robots of the future to use their hands. As a result, the cleaners were intensely focused on their hands while carrying out the job.\r\n\r\n\'Tonnes\' of data\r\nBercan Kilic, Shift\'s founder, told the BBC the goal of the data-gathering exercise is \"to advance humanity\".\r\n\r\nHe pointed to existing AI models such as ChatGPT, which are able to create sentences based on previously written passages of text available online. But he said every kitchen, living room and tool is slightly different, so robots will need to be trained to adapt to being in different spaces and using different items.\r\n\r\nThe biggest difficulty, Kilic said, is that to work, its cleaners will need to collect \"tonnes\" of data.\r\n\r\n\"In the real world, every object is different, the lighting is different and nothing is the same as it was a couple of hours earlier. Models need to learn how their hands, cameras and environments work together,\" he said.\r\n\r\nThe company\'s business model relies on it being able to sell the valuable data it gathers from inside people\'s homes, anonymised, to robotics and other AI companies to train robots.', 'e50fcaa0-697a-11f1-a63b-a7cb529e1ca8.jpg.webp', 'News', 0),
(28, '2026-06-21 13:35:21', 'Meloni tells Trump to \'focus on your own popularity\' as row escalates', 'Italy\'s Giorgia Meloni has again hit back at US President Donald Trump on social media after he questioned her political popularity and repeated his claim that she asked \"over and over\" for a photo together', 'Trump said on Saturday that the prime minister was \"doing poorly in Italy with her level of popularity\".\r\n\r\nHe also accused her of not supporting US efforts to prevent Iran \"from obtaining or developing a nuclear weapon\".\r\n\r\nIn a statement on Instagram, Meloni said Trump\'s \"constant, unprovoked attacks\" were \"senseless\".\r\n\r\n\"As for my popularity, being your friend has certainly not helped it, nor does it depend on my relationship with you,\" said Meloni.\r\n\r\n\"My popularity is none of your concern. I suggest you focus on yours,\" she added.\r\n\r\nEarlier on Saturday, Trump also said Meloni had caused \"a great logistical inconvenience\" by barring the US from using Italian air facilities for American military operations in Iran.\r\n\r\nBut the Italian leader said the use of Italian bases \"is government by agreements that we have always respected, and that cannot be violated as long as I am prime minister\".\r\n\r\nOn Friday, Meloni said she had been astonished by Trump\'s initial claim that she \"begged\" for a photo during a G7 meeting this week in France.\r\n\r\nThe continuing exchange between the pair has highlighted a developing rift between the two countries since Trump\'s military action against Iran this year.\r\n\r\nItalian Foreign Minister Antonio Tajani has cancelled a trip to the US early next week.\r\n\r\n\r\n\'Neither I nor Italy ever beg\': Meloni on Trump after \'false\' anecdote\r\nTrump and Meloni were pictured in close conversation at the G7 summit, and the Italian leader later told reporters their relationship was unchanged and there had been \"no recriminations\".\r\n\r\nBut soon afterwards, Trump gave a phone interview with Italy\'s La7 TV channel in which he alleged: \"She begged me to take a photo with her; I felt sorry for her.\"\r\n\r\n\"She\'s probably happy I spoke to her,\" he said. La7 did not produce Trump\'s original words in English, but voiced them over in Italian.\r\n\r\nResponding to the claim, Meloni in an Instagram video said she was \"frankly stunned\".\r\n\r\n\"I don\'t know why the US president behaves this way towards allies,\" she said, adding it was not the first time it had happened.\r\n\r\n\"But there is one thing he needs to remember: neither I nor Italy ever beg,\" she said.\r\n\r\nMeloni received support for her comments from across the Italian political spectrum.\r\n\r\nThe leaders also clashed earlier this year after Trump accused Pope Leo XIV of being \"WEAK on Crime and terrible for Foreign Policy\" in a Truth Social post, later telling reporters he was \"not a big fan\".\r\n\r\nMeloni later said the comments were \"unacceptable\".\r\n\r\nThe two country leaders have had a close political relationship, with Meloni the sole European leader to attend Trump\'s inauguration in January 2025.', '49688d60-6bd9-11f1-b1db-af71d47507d6.jpg.webp', 'News', 0),
(29, '2026-06-21 13:36:21', 'How the social media ban could reshape how all of us use the internet', '\"Everyone\'s really upset mum - loads of them have got their own YouTube channels.\"', 'That was my 12-year-old son\'s summary of how the news about the social media ban for UK under-16s went down in his classroom.\r\n\r\nExactly how a bunch of 12-year olds might have ended up with their own channels in the first place when the minimum age is supposed to be 13 shows just how big a change in culture the government is trying to make.\r\n\r\nIn Preston, school pupil Isabella went viral when a BBC colleague asked her on-camera what she would do instead with the nine hours of screentime she had racked up over the previous weekend: \"stare at the wall,\" she deadpanned.\r\n\r\nThe exact logistics of the ban have yet to be set out but it is very possible that its introduction will herald the biggest ever change in the UK in terms of how everyone, children and adults alike, accesses the internet. Millions of us might have to share some official ID which includes our date of birth, in order to access a whole range of platforms from next spring.\r\n\r\nThe ban has been broadly welcomed by campaigners, including a group of bereaved parents who say their children died as a result of a variety of harms on social media.\r\n\r\nEPA A silhouette of a child looking at his mobile phone. He has shoulder-length hair and is wearing glasses. The Sun is shining behind him.EPA\r\nThe exact logistics of the social media ban have yet to be set out\r\nBut for others, what the government is planning goes beyond getting the nation\'s kids to spend more time off screens and engaged in alternative pursuits (even if that does include staring at walls) and amounts to a profound reshaping of how it is assumed young people will accumulate fresh knowledge and also how the rest of us will move around online.\r\n\r\nThere is the potential impact on education. \"YouTube is where we all go to learn,\" says Dr Tom Crawford, aka Tom Rocks Maths, who shares maths skills with his 250,000 subscribers on YouTube, which is included in the ban. \"And that includes teenagers.\"\r\n\r\nSo, are we really witnessing the profound shift that some claim? And if we are, how will it reshape our relationship with the online world?', 'fe9b4df0-6bf0-11f1-8546-8f19e4fe30f4.jpg.webp', 'News', 1),
(31, '2026-06-21 13:53:30', 'Fastest World Cup to 100 goals in 68 years - are balls and breaks behind it?', 'The 2026 World Cup has become the fastest edition of the tournament to hit 100 goals since 1958 - with the landmark reached in the 33rd game.', 'Liverpool forward Cody Gakpo brought up the century with the Netherlands\' fourth goal in a 5-1 win over Sweden on Saturday.\r\n\r\nIt is the first time in 68 years it has taken 33 matches to reach triple figures.\r\n\r\nThe only faster tournament was in Switzerland in 1954 - won by West Germany - when it took just 20 matches.\r\n\r\n\"Probably the most compact and tactically tight game I\'ve seen so far was Netherlands versus Japan - and even that had four goals,\" England\'s Euro 2022 winner Ellen White told BBC Sport.\r\n\r\nIn the 2014 finals in Brazil, it took 36 games to reach 100, the same number as in 1982.\r\n\r\nIt took 38 games at Argentina 1978 and the United States in 1994.\r\n\r\nThis World Cup - co-hosted by the USA, Mexico and Canada - is averaging 3.09 goals per game and is on course to surpass 300 goals.\r\n\r\nSo why has it only taken 33 games to reach 100 goals?', 'p0nsmd0t.jpg', 'Sport', 0),
(32, '2026-06-21 13:54:19', 'Can \'best Northampton team ever\' become one of English rugby\'s greats?', 'Northampton Saints are proving themselves to be the formidable force in English club rugby union.', 'For the second time in three seasons, they have been crowned champions.\r\n\r\nBut they did it the hard way, pushed all the way by Exeter Chiefs in the Prem final before eventually running out 26-17 winners at Allianz Stadium.\r\n\r\nWere it not for George Hendy\'s quickfire second-half double when the Chiefs were down to 14 men following the sin-binning of Dafydd Jenkins, the story may have been different.\r\n\r\nBut nobody in Northampton will care. This is their third crown in all, and it would be hard to bet against more in the very near future.\r\n\r\nBBC rugby union correspondent Chris Jones certainly thinks so.\r\n\r\n\"Northampton are building a dynasty,\" he told BBC Radio 5 Live.\r\n\r\n\"With 14 academy graduates in their 23, it\'s based on developing their own, and you can see the connection here between the players and their supporters who are in raptures in the Twickenham sunshine.\r\n\r\n\"With time on their side, they will feel they can add to their legacy and be talked about in the future as one of the great English club sides in history.\"\r\n\r\nEngland World Cup winner and former Saints scrum-half Matt Dawson concurred: \"This crop are the best Northampton team there has ever been. Period.\r\n\r\n\"The trophies, their style, what they\'ve done for the town, for the fans is unrivalled. It has been a pleasure to watch them.\"\r\n\r\nRugby Union Weekly: Saints beat Exeter to the Prem title\r\nFurbank\'s perfect farewell\r\nHenry Pollock (L) and George Furbank of Northampton Saints celebrate after their victory over Exeter Chiefs in the Prem final\r\nImage source,Getty Images\r\nImage caption,\r\nGeorge Furbank has made 147 appearances for Northampton during his nine seasons with the club\r\n\r\nThat youth production line has been the cornerstone of their success, and ex-Northampton and England winger Chris Ashton says it has allowed them to make bold decisions.\r\n\r\nCaptain George Furbank bowed out in style as he prepares to leave his boyhood club to join Harlequins.\r\n\r\n\"They are what every club in England is aspiring to be,\" Ashton said. \"They\'ve got it right.\r\n\r\n\"They have a group of players who inspire kids in their tone that makes them want to play for Saints, which then produces an amazing academy with all these players coming through.\r\n\r\n\"The club is run properly. They\'ve made a business decision to let George Furbank go because it is right for the club. They can do that because they back the talent that is coming through.\r\n\r\n\"They are leading the way and are deserved winners.\"\r\n\r\nFurbank admitted he was feeling a wave of different emotions as his Saints career comes to an end.\r\n\r\n\"I said to the boys I don\'t really know how to feel after the final whistle,\" he told BBC Sport.\r\n\r\n\"It was a mix of relief, happiness, sadness, all merged into one.\r\n\r\n\"It was a different feeling to the last time we won it - I think we\'re going to have a good few days to celebrate and it\'ll all sink in.\"', 'd31b37d0-6cdb-11f1-9270-45824817f042.jpg.webp', 'Sport', 0),
(33, '2026-06-21 13:55:20', 'Chaotic England fortnight ends with huge defeat', 'England\'s miserable fortnight ended with a crushing defeat in the second Test against New Zealand at The Oval - setting up a high-stakes decider at Trent Bridge.', 'Under the shadow of the controversy surrounding absent captain Ben Stokes, an inexperienced England team were exposed by an excellent performance from New Zealand, who won by 253 runs.\r\n\r\nEngland began a baking final day with scant hope of an escape, resuming on 182-5, chasing a notional 463.\r\n\r\nThe home side lasted less than an hour thanks to the brilliance of New Zealand seamer Matt Henry, who claimed 6-29 for career-best match figures of 11-109.\r\n\r\nJoe Root was out for 77 in the third over of the day, again lbw to Henry with the keeper standing up, and the tail was exposed.\r\n\r\nJofra Archer was bowled by a shooter, Matthew Fisher played on and Josh Tongue was caught at first slip for a golden duck, giving Henry his first Test 10-wicket haul.\r\n\r\nAnd when Jordan Cox was bowled an attempting a sweep, England were beaten and Henry had the best match figures by a New Zealander in a Test in England.\r\n\r\nIt meant that exactly two weeks on from a confidence-boosting win in the first Test, England are trying to move on from a period of chaos while also facing the vital third Test.\r\n\r\nIn celebrating the win at Lord\'s, Stokes and pace bowler Gus Atkinson broke the England team\'s midnight curfew and were present when a member of security staff was struck by a Saracens rugby player.\r\n\r\nThe pair were stood down for this Test pending an investigation, the outcome of which is now due to be revealed as England need to name a squad for Trent Bridge.\r\n\r\nWhile it was already thought likely the duo will return, with Stokes as captain, a clear indication was given on Sunday morning when both were withdrawn from their county fixtures.', 'p0nt8fyr.jpg', 'Sport', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
