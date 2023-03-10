-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 19, 2023 at 11:23 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdw_php`
--
CREATE DATABASE IF NOT EXISTS `tdw_php` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tdw_php`;

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `mot_de_passe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `mot_de_passe`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `AdminParams`
--

CREATE TABLE `AdminParams` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `valeur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdminParams`
--

INSERT INTO `AdminParams` (`id`, `nom`, `valeur`) VALUES
(1, 'mainColor', '0,222,90'),
(2, 'ideeRecettePourcentage', '70');

-- --------------------------------------------------------

--
-- Table structure for table `Diaporama`
--

CREATE TABLE `Diaporama` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Diaporama`
--

INSERT INTO `Diaporama` (`id`, `url`) VALUES
(1, 'http://localhost/Projet_Final/public/recipe/2'),
(5, 'http://localhost/Projet_Final/public/recipe/1'),
(7, 'http://localhost/Projet_Final/public/news/show/1');

-- --------------------------------------------------------

--
-- Table structure for table `Etape`
--

CREATE TABLE `Etape` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `ordre` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Etape`
--

INSERT INTO `Etape` (`id`, `description`, `ordre`, `id_recette`) VALUES
(1, 'Faire revenir la viande dans de l\'huile. Ajouter les oignons faire revenir quelques minutes.', 1, 1),
(2, 'Ajouter les tomates mix??es, le concentre de tomate ainsi que les epices et les l??gumes (carottes et c??leri).', 2, 1),
(3, 'Je laisse revenir le tout afin que la sauce s???impr??gne d?????pices.', 3, 1),
(4, 'Ajouter 1,5 L d\'eau ainsi que les pois-chiche couvrir et laisser cuire.', 4, 1),
(5, 'Quand la viande a presque cuit on ajoute le reste des l??gumes (courgettes, pomme de terre et navet). On continue la cuisson.', 5, 1),
(6, 'En fin de cuisson on rectifie l\'assaisonnement (je rajoute une pinc??e de cannelle en fin de cuisson). Place la viande dans un assiette.', 6, 1),
(7, 'Dresser le couscous dans une grande assiette creuse, placer la viande au centre, les l??gumes autour et arroser de sauce et pois chiche.', 7, 1),
(8, 'Accompagner de Lben', 8, 1),
(9, 'Retirer les graines de potimarron et le couper en gros cubes (garder la peau). ??plucher les pommes de terre et les couper en cubes. ??mincer l\'oignon.', 1, 2),
(10, 'Faire fondre le beurre dans une po??le et ajouter l\'oignon. Ajouter les cubes de potimarron et les pommes de terre. Faire sauter ?? feu moyen pendant 20 minutes.', 2, 2),
(11, 'Retirer la po??le du feu et verser la cr??me liquide. Saler et poivrer et ajouter une pinc??e de muscade.', 3, 2),
(12, 'Transvaser le contenu de la po??le dans un plat ?? gratin. Parsemer de fromage.', 4, 2),
(13, 'Enfourner dans le four pr??chauff?? ?? 180 C (350 F) environ 30 ?? 35 minutes ou jusqu????? ce que la surface soit dor??e.', 5, 2),
(14, 'A la sortie du four laisser reposer 5 minutes avant de servir.', 6, 2),
(43, '??plucher et couper grossi??rement les l??gumes.', 0, 906),
(44, 'Dans une cocotte faire revenir la viande pr??alablement coup??e en petits morceaux avec de l???huile.', 1, 906),
(45, 'Ajouter l\'oignon hach?? ainsi que les les tomates et laisser revenir.\r\n', 2, 906),
(46, 'Ajouter les ??pices (curcuma, gingembre, paprika, cannelle, sel et poivre).\r\n', 3, 906),
(47, 'Incorporer les l??gumes ainsi que le c??leri (branches et feuilles) et la coriandre.\r\n', 4, 906),
(48, 'Ajouter les pois chiches (j\'utilise les pois chiche en conserve que je rajoute en fin de cuisson). Verser l\'eau (environ 1L ?? 1,5L) et porter ?? ??bullition pendant 20 min.\r\n', 5, 906),
(49, 'Ajouter le concentr?? de tomate. Fermer la cocotte et laisser cuire.\r\n', 6, 906),
(50, 'Une fois la viande et les l??gumes bien cuits, faire passer la chorba dans une passoire pour r??cup??rer le bouillon.\r\n', 7, 906),
(51, 'Retirer les carottes, la courgette, le c??leri, la viande et remettre le reste avec le bouillon. Passer ce que vous avez obtenu au moulin ?? l??gumes.\r\n', 8, 906),
(52, 'Porter le tout ?? ??bullition et ajouter la botte de menthe (na3na3 l???ftour ficel??e). Rectifier l???assaisonnement.\r\n', 9, 906),
(53, 'Ajouter les vermicelles tout en remuant sans baisser le feu. Les cheveux d\'ange cuisent tr??s vite, il faut compter environ 10 min.\r\n', 10, 906),
(54, 'Si la chorba est assez liquide rajouter des cheveux d\'ange et si au contraire un peu ??paisse ajouter un peu d\'eau chaude (selon le go??t).\r\n', 11, 906),
(55, 'Retirer du feu et remettre Les morceaux de viande dans la soupe.\r\n', 12, 906),
(56, 'Avant de servir parsemer de cannelle et de feuille de menthe.\r\n', 13, 906),
(57, 'Faire chauffer l\'huile dans une marmite ou couscoussier c\'est plus pratique, ajouter les morceaux de poulet et faire dorer de tous les cotes.\r\n', 0, 907),
(58, 'Ajouter l\'oignon r??p?? ainsi que les ??pices. Laisser revenir quelques minutes.\r\n', 1, 907),
(59, 'Verser 1 L d\'eau l???eau ainsi que les pois chiches si elles sont trempes la veille (je rajoute a la fin des pois chiche en conserve) couvrir et laisser cuire.\r\n', 2, 907),
(60, 'Verser 2 c-a-soupe d???huile d???olives ?? la rechta fra??che et v??rifier si la sauce commence a bouillir.\r\n', 3, 907),
(61, 'Disposer la rechta dans le haut du couscoussier et le m??me proc??d?? que le couscous apr??s la 1 ere ??vaporation laisser cuire 15 minutes.\r\n', 4, 907),
(62, 'Verser la rechta dans une gas3a ou un grand plat en g??n??ral j\'utilise un grand moule a cake en m??tal.\r\n', 5, 907),
(63, 'Retirer une louche d\'eau de cuisson et asperger la rechta tout en la d??tachant.\r\n', 6, 907),
(64, 'Remettre la rechta dans le haut du couscoussier et ?? la 1 ??re ??vaporation laisser cuire une quinzaine de minute.\r\n', 7, 907),
(65, 'Verser une seconde fois la rechta dans une gas3a, retirer le poulet ou la viande qui est cuite et ajouter les l??gumes coup??es dans le sens de la longueur ?? la sauce, laisser cuire les l??gumes.\r\n', 8, 907),
(66, 'Quand les l??gumes sont cuits tester en enfon??ant la lame du couteau qui doit traverser facilement, disposer la rechta dans un grand plat creux, d??poser autour les l??gumes et arroser de sauce et pois chiche.\r\n', 9, 907),
(67, 'Faire bouillir un bol d\'eau le verser sur un citron coup?? en rondelles laisser infuser jusqu????? refroidissement.', 0, 911),
(68, 'Dans une carafe ou une bouteille mettre le jus de 3 citrons, le sucre, la fleur d oranger et le lait. Bien m??langer.\r\n', 1, 911),
(69, 'Ajouter le citron infus?? qui aura refroidit. Gouter et ajouter du sucre selon le gout de chacun.\r\n', 2, 911),
(70, 'Placer au frais jusqu????? moment du ftour.\r\n', 3, 911),
(83, 'Dans une po??le sur feu doux, faire fondre le beurre avec l???huile puis faire dorer l???oignon ??minc??. Ajouter la viande hach??e, les ??pices, saler et poivrer puis remuer jusqu????? ce que la viande cuise et le liquide soit compl??tement absorb??. Retirer du feu puis ajouter la coriandre et le persil cisel??, l???oeuf battu en omelette et le fromage d??coup?? en petits morceaux, laisser refroidir.', 0, 913),
(84, 'Faire fondre les 50 g de beurre .\r\n', 1, 913),
(85, 'D??rouler les feuilles de filo en prenant soin de les garder sous un linge propre pour ??viter qu???elles se d??sechent .\r\nSur le plan de travail, d??poser une feuilles de filo plier la en deux sur la longueur.', 2, 913),
(86, 'D??poser tout au long du bord de la feuille de filo 2 ?? 2,5 cm de farce. Rouler la feuille de pastilla autour de la farce pour obtenir un long boudin. Enrouler le boudin de Mhancha sur lui-m??me pour lui donner une forme d???escargot.\r\nR??p??ter l???op??ration pour obtenir 7 Mhancha.', 3, 913),
(87, 'D??poser les Mhancha sur une plat allant au four chemis?? de papier cuisson, les badigeonner de smen ou de beurre fondu .', 4, 913),
(88, 'Faire cuire les Mhanche dans un four pr??chauff?? ?? 190??C pendant environ 20 ?? 25 minutes jusqu????? ce qu???elles prennent une belle couleur dor??e .', 5, 913),
(89, 'Servir les Mhancha nature ou d??cor??es d???amandes effil??es, de sucre glace et de cannelle.\r\nBonne r??alisation et bonne d??gustation !', 6, 913),
(90, 'Dans un saladier, mettez la semoule non cuite, le jus des citrons et l\'huile d\'olive.', 0, 912),
(91, 'Ajoutez-y les tomates coup??es en petits morceaux, l\'oignon ??minc??, et les herbes hach??es. Salez et poivrez.', 1, 912),
(92, 'M??langez bien et laissez 2 heures au frais. La semoule va gonfler gr??ce ?? l\'huile d\'olive et au jus de citron. M??langez bien avant de servir.', 2, 912),
(93, 'Et voil??, votre taboul?? est pr??t !', 3, 912),
(150, 'Dans une jatte mettez la farine, le sel et ajoutez le beurre fondu. Incorporez bien le gras en frottant le tout entre les mains, ajoutez la fleur d???oranger et l???eau pour obtenir une p??te souple.', 0, 914),
(151, 'Divisez la p??te en 8 parties ??gales et faites des boules. Couvrez avec un papier film et laissez reposer au moins 2h.', 1, 914),
(152, 'M??langez tous les ingr??dients de la farce y compris le beurre fondu. Sur un plan de travail farinez et ??talez une boule de p??te avec un rouleau et tirez sur le bord avec les doigts sans la d??chirer.', 2, 914),
(153, 'Beurrez un plateau et mettez la feuille de p??te sans l???ab??mer VOIR PHOTOS', 3, 914),
(154, 'Beurrez la feuille de p??te avant de mettre la 2eme. Faites la m??me chose pour les 2 autres et versez ensuite la farce et couvrez avec les 4 feuilles de p??te que vous travaillez de la m??me fa??on que celles de base.', 4, 914),
(155, 'Beurrez la derni??re feuille et commencez a tracer sans les couper les losanges de la baklawa. Piquer dans chaque losange une amande enti??re et coupez les.', 5, 914),
(156, 'Enfournez a 180?? pour environ 50 minutes ?? 1 heure. Surveillez la cuisson r??guli??rement. A la sortie du four , arrosez la baklawa de miel jusqu????? ce qu???il d??passe la surface de la baklawa.', 6, 914),
(157, 'Laissez toute une nuit ou une journ??e pour qu???elle absorbe totalement le miel. Le lendemain coup?? en losanges et mettes les baklawa dans des caissettes en  papiers.', 7, 914);

-- --------------------------------------------------------

--
-- Table structure for table `F??tes`
--

CREATE TABLE `F??tes` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Ingredient`
--

CREATE TABLE `Ingredient` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `saison` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ingredient`
--

INSERT INTO `Ingredient` (`id`, `nom`, `description`, `image`, `saison`) VALUES
(1, 'Viande', 'La viande est une excellente source de prot??ines animales, dont la composition en acides amin??s est ??quilibr??e. Elles repr??sentent en moyenne 20% du poids total de produit. La teneur en lipides varie avec les types de viande (de 3 ?? 23%). Ainsi les viandes blanches sont pauvres en graisses tandis que le porc et le b??uf sont plus riches. Cependant dans un m??me animal, les apports en lipides varient avec le morceau choisi. Par exemple, la noix de veau est beaucoup moins grasse que la c??te de veau. Il y a autant d\'acides gras monoinsatur??s (AGMI) que d\'acides gras satur??s (AGS) et tr??s peu d\'acides gras polyinsatur??s (sauf dans le c??ur, le foie ou les rognons). La viande contient aussi des acides gras trans (AGT) qui sont d\'origine naturelle, fabriqu??s dans le rumen des b??ufs ou de l\'agneau. En plus de ses teneurs ??lev??es en fer, la viande apporte du fer h??minique. Il repr??sente 50 ?? 80 % du fer de la viande selon les esp??ces et est mieux absorb?? que le fer non h??minique pr??sent dans les l??gumes, les l??gumes secs ou les c??r??ales. D???autre part, la viande am??liore de deux ?? trois fois l???absorption du fer non h??minique des autres aliments qui l???accompagne au cours du repas. La viande constitue l???une des meilleurs sources alimentaires de zinc avec ?? la fois des teneurs importants (2 ?? 7 mg/100g) et une tr??s bonne biodisponibilit?? par rapport au zinc des autres sources d???aliment. Elle fait ??galement partie des aliments qui contiennent le plus de s??l??nium soit 6 ?? 14 ??g/100g pour les viandes en moyenne et jusqu????? 90 pour le foie ou 116 pour les rognons. La viande repr??sente aussi une source majeure de vitamines PP, B6 et tout particuli??rement la vitamine B12 qui est exclusivement pr??sente dans les produits d???origine animale. Tous les morceaux de viande pou de produits tripiers sont riches en vitamine B12 : 100 g suffisent ?? couvrir 50 ?? 100 % des apports nutritionnels conseill??s (ANC).', 'https://images.unsplash.com/photo-1565988845864-9e8e0ba7aa42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80', ''),
(2, 'Pommes de terre', 'La pomme de terre est un l??gume consid??r?? comme un f??culent en raison de sa richesse en amidon (f??cule). Si elle repr??sente une bonne source de glucides complexes, elle offre ??galement de bonnes teneurs en vitamine C et min??raux. Pour profiter de ses atouts nutritionnels, mieux vaut opter pour un mode de cuisson sans mati??re grasse, et la consommer avec sa peau. La cuisson est par ailleurs n??cessaire ?? la bonne assimilation de son amidon.\r\nLa pomme de terre renferme 77% d???eau, contre plus de 90 % pour les l??gumes verts.\r\n\r\nSon taux de glucides est de 3 ?? 5 fois plus important que celui de la plupart des l??gumes frais. Ces glucides sont essentiellement constitu??s d???amidon (90 %), et de petites quantit??s de glucose, saccharose et fructose. Les prot??ines sont ??galement  bien repr??sent??es. Les lipides en revanche ne sont pr??sents qu????? l?????tat de traces.\r\n\r\nLa pomme de terre est source de vitamine C et de vitamines du groupe B, notamment B1 et B3.\r\n\r\nElle apporte aussi une quantit?? importante de min??raux : potassium, phosphore, magn??sium ; ainsi que de nombreux oligo-??l??ments : fer, zinc, cuivre, mangan??se???\r\nSes fibres sont peu abondantes (1g aux 100 g, contre 2,5 ?? 3,5 g pour les l??gumes verts).  Elles se composent d???h??micelluloses et de pectines.\r\n\r\nLes pommes de terre rouges et violettes renferment ??galement des antioxydants : flavono??des (anthocyanines), lut??ine et z??axanthine.', 'https://images.unsplash.com/photo-1603048719539-9ecb4aa395e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2084&q=80', ''),
(3, 'Carotte', 'Les bienfaits de la carotte proviennent pour beaucoup du b??ta-carot??ne qu\'elle contient. C\'est un puissant antioxydant qui lutte contre les radicaux libres responsables du vieillissement. Ainsi, il am??liore l\'??tat de la peau en favorisant sa r??g??n??ration et sa cicatrisation. Quelques gouttes d\'huile de carotte dans la cr??me de jour permet de nourrir et renforcer la peau contre les rayons du soleil, tout en lui apportant bonne mine gr??ce ?? ses pigments orang??s. En application sur les cheveux, ses propri??t??s nourrissantes, r??g??n??ratrices et r??paratrices sont efficaces contre les cheveux secs et cassants mais aide ??galement ?? ma??triser le volume des cheveux fris??s et cr??pus. Par ailleurs, sa richesse en fibres joue un r??le important sur le bon fonctionnement du syst??me digestif. Elle agit aussi bien en r??gulant le transit pour lutter contre la constipation que comme anti-diarrh??ique, sous forme de soupe ou de pur??e, gr??ce au fort pouvoir de r??tention d\'eau de ses fibres (et notamment la pectine). Celles-ci contribuent ??galement ?? une sensation de sati??t?? plus pr??coce qui ajout??e ?? sa faible teneur en calories et son pouvoir anti-cholesterol, font de la carotte un alli?? minceur. Le Programme National Nutrition Sant?? recommande de consommer chaque jour au moins 5 portions (de 80 g minimum) de fruits ou de l??gumes et de profiter au maximum de leur vari??t?? saisonni??re. Une portion repr??sente le volume d\'un poing ferm??. Concernant les l??gumes c\'est par exemple : 1 carotte.\r\n\r\nQuel est son apport nutritionnel ?\r\nUne carotte crue est constitu??e majoritairement d\'eau (88 %)  et 7,6%  de glucides (7,6%  en moyenne). Cette concentration en glucides est sup??rieure aux celles des autres l??gumes. Par contre elle contient une faible teneur en prot??ines (0,6 %), et quasi nulle en lipides. Avec une concentration en fibres de 2,7%, la carotte est au dessus de la moyenne des l??gumes.  Par ailleurs, elle est tr??s riche en vitamines et min??raux dont principalement la provitamine A ou b??ta carot??ne, les vitamines B9, C et E, le potassium et le calcium. ', 'https://images.unsplash.com/photo-1606355601253-61a57fe375e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fycm90fGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60', ''),
(4, 'Oignon', 'L???oignon est un aromate universel, consomm?? dans toutes les r??gions du monde. Il en existe plusieurs vari??t??s, dont certaines sont particuli??rement riches en antioxydants. L???oignon fait partie de la grande famille des alliac??s et, tout comme l???ail, on lui attribue certaines propri??t??s b??n??fiques pour la sant??. C??t?? cuisine, il est un ingr??dient incontournable et se retrouve dans de nombreuses sp??cialit??s culinaires bien fran??aises.\r\n        L???oignon est une source de mangan??se pour la femme, les besoins en mangan??se ??tant sup??rieurs chez l???homme. Le mangan??se agit comme cofacteur de plusieurs enzymes qui facilitent une douzaine de diff??rents processus m??taboliques. Il participe ??galement ?? la pr??vention des dommages caus??s par les radicaux libres.\r\n\r\nDe plus, l???oignon est une source de vitamine B6. La vitamine B6, aussi appel??e pyridoxine, fait partie de coenzymes qui participent au m??tabolisme des prot??ines et des acides gras ainsi qu????? la fabrication des neurotransmetteurs (messagers dans l???influx nerveux). Elle collabore ??galement ?? la production des globules rouges et leur permet de transporter davantage d???oxyg??ne. La pyridoxine est aussi n??cessaire ?? la transformation du glycog??ne en glucose et elle contribue au bon fonctionnement du syst??me immunitaire. Enfin, cette vitamine joue un r??le dans la formation de certaines composantes des cellules nerveuses.\r\n\r\nEnfin, l???oignon est une source de vitamine C. Le r??le que joue la vitamine C dans l???organisme va au-del?? de ses propri??t??s antioxydantes; elle contribue aussi ?? la sant?? des os, des cartilages, des dents et des gencives. De plus, elle prot??ge contre les infections, favorise l???absorption du fer contenu dans les v??g??taux et acc??l??re la cicatrisation.', 'https://images.unsplash.com/photo-1620574387735-3624d75b2dbc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b25pb258ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(5, 'Courgette', 'Peu calorique, riche en eau (83,6 ?? 93,8 g/100g), la courgette apporte 16,5 kcal/100 crue et 15,5 kcal/100 g cuite1; 2, soit 0,8 ?? 0,7 % des apports ??nerg??tiques conseill??s pour un adulte. Crue, elle est source de vitamine C, de vitamine B9 et contribue aux apports de potassium, mangan??se et vitamines B2 et B6. Cuite, la courgette reste source de vitamine B9 et contribue aux apports de phosphore et cuivre. Elle se d??marque par une teneur int??ressante en lut??ine et en z??axanthine3,des carot??no??des non facteurs de provitamine A.\r\n\r\nUne courgette p??se en moyenne 200 ?? 300 g.\r\nLa courgette est principalement constitu??e d???eau (83,6 % crue, 93,8 % cuite) : c???est un l??gume id??al pour contribuer aux apports en eau quotidiens. Ces derniers, estim??s en moyenne ?? 2,5 litres par jour, sont assur??s par l???eau de composition des aliments (1 litre) et l???eau de boisson (1,5 litre) sous toutes ses formes (eau, th??, caf??, tisanes???.). Les 400 ?? 500 g de fruits et l??gumes recommand??s par jour dans le cadre du Programme National Nutrition Sant??5 apportent en moyenne 340 ?? 475 ml d???eau, soit le tiers voire la moiti?? de l???eau des aliments. Consommer quotidiennement une quantit?? suffisante de fruits et l??gumes est conseill?? pour s???assurer de bons apports en eau et une bonne hydratation de l???organisme. De quoi nous motiver ?? inviter r??guli??rement la courgette dans nos menus.', 'https://images.unsplash.com/photo-1495026206962-e8b160431ffe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y291cmdldHRlfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60', ''),
(6, 'Pois chiche', 'Le pois chiche appartient ?? la famille des l??gumes secs1. Il concilie de nombreux atouts nutritionnels : un apport de prot??ines et de glucides, peu de mati??res grasses de bonne qualit??, ainsi qu???une richesse en fibres et vitamine B9. Indispensable ingr??dient du couscous ou du traditionnel houmous, il permet de cr??er de savoureuses recettes de l???ap??ritif au dessert.\r\n        Le pois chiche cuit apporte 147 kcal/100 g. C???est un bon contributeur ?? l???apport d?????nergie, de prot??ines v??g??tales, de glucides sous forme d???amidon, de fibres, de plusieurs min??raux (phosphore, cuivre, mangan??se???) et de vitamine B9. Le pois chiche contient des polyph??nols dont des flavono??des aux propri??t??s anti-oxydantes, ainsi que des phytost??rols et des saponines qui participent ?? la pr??vention de maladies comme les maladies cardiovasculaires ou encore certains cancers.\r\n        Le pois chiche fait partie de la famille des l??gumes secs (lentilles, pois cass??s, haricots rouges???) longtemps consid??r??e comme ?? la prot??ine des pauvres ??. Ses nombreux atouts en font aujourd???hui un partenaire pour notre sant??.\r\n\r\n\r\n', 'https://images.unsplash.com/photo-1596564823703-d28706a620e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9pcyUyMGNoaWNoZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60', ''),
(7, 'C??leri', 'Ce l??gume riche en eau et faiblement calorique contient de nombreux nutriments protecteurs : fibres, min??raux et oligo-??l??ments, vitamines A, B, C et K, polyph??nols anti-oxydants. Utilis?? durant des si??cles par plusieurs m??decines traditionnelles, il appara??t pr??ventif des maladies cardio-vasculaires, avec un int??r??t particulier pour r??guler la tension art??rielle et semble avoir des effets neuro-protecteurs. Ses atouts pour la sant?? restent n??anmoins ?? confirmer par des ??tudes cliniques. Tr??s parfum??, il se pr??te ?? de multiples recettes et peut se d??guster cru ou cuit, de l???ap??ritif au plat principal.\r\n        Tr??s riche en eau, comportant moins de glucides que la moyenne des l??gumes, le c??leri-branche est faiblement calorique. Il contient ??galement moins de fibres que la moyenne des l??gumes. Il fournit une quantit?? notable de potassium. Il est source de vitamine B9 et riche en vitamine K. Il contribue en proportions non n??gligeables aux apports de calcium, cuivre, mangan??se, b??ta-carot??ne (pro-vitamine A), vitamines C, B2, B5 et B6. Il apporte en plus faible quantit?? d???autres min??raux et oligo-??l??ments (magn??sium, fer, zinc???) ainsi que les vitamines E, B1, B3 et B8.', 'https://images.unsplash.com/photo-1476277540808-4885072ada84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=983&q=80', ''),
(8, 'Navets', 'Le navet est un l??gume de la famille des crucif??res, de forme bulbeuse et ?? chair blanche ; ses feuilles sont ??galement comestibles. Il est originaire du bassin m??diterran??en mais on retrouve ??galement certaines vari??t??s cultiv??es en Asie depuis des centaines d\'ann??es. Souvent confondu avec le rutabaga, il a un go??t plus neutre, il est facile ?? cuisiner et se marie avec une multitude d\'autres aliments.\r\n\r\nLe navet est caract??ris?? par une tr??s grande teneur en eau et sa faiblesse calorique (21,1 Cal/100 g). Il b??n??ficie d???une bonne densit?? nutritionnelle (de min??raux, oligo??l??ments et vitamines).\r\nLe navet est source de potassium. Dans l???organisme, le potassium sert ?? ??quilibrer le pH du sang et ?? stimuler la production d???acide chlorhydrique par l???estomac, favorisant ainsi la digestion. Le navet est source de magn??sium qui participe au d??veloppement osseux, ?? la construction des prot??ines, aux actions enzymatiques, ?? la contraction musculaire, ?? la sant?? dentaire et au fonctionnement du syst??me immunitaire.\r\n\r\nLe rutabaga est une source de phosphore. Le phosphore constitue le deuxi??me min??ral le plus abondant de l???organisme apr??s le calcium. Il joue un r??le essentiel dans la formation et le maintien de la sant?? des os et des dents. De plus, il participe entre autres ?? la croissance et ?? la r??g??n??rescence des tissus et aide ?? maintenir ?? la normale le pH du sang. Finalement, le phosphore est l???un des constituants des membranes cellulaires.\r\n\r\n', 'https://images.unsplash.com/photo-1671613627651-5baa8e595cd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bmF2ZXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(9, 'Gingembre', 'Le gingembre est une plante tropicale originaire de l\'Asie. Depuis des mill??naires, on utilise sa racine (rhizome) comme ??pice pour relever et agr??menter de nombreuses recettes, en plus de l\'utiliser comme plante m??dicinale. Le gingembre a la r??putation d\'??tre aphrodisiaque...\r\n\r\nLe gingembre est principalement utilis?? sous deux formes : frais ou s??ch??, et r??duit en une fine poudre. Sur les march??s traditionnels, on retrouve diverses vari??t??s de gingembre qui diff??rent par leur saveur : plus ou moins sucr??es, plus ou moins piquantes, plus ou moins citronn??es. Il agr??mente ?? merveille plusieurs pr??parations sal??es et sucr??es, et il est aussi l\'??pice principale dans un grand nombre de recettes d\'inspiration orientale et moyen-orientale.\r\n\r\nComme il est consomm?? en tr??s petite quantit??, l\'apport ??nerg??tique du gingembre est n??gligeable. Toutefois, il est un v??ritable concentr?? de sels min??raux et on lui reconna??t plusieurs qualit??s : il contient plus de 40 compos??s antioxydants, il est efficace pour traiter les naus??es et les vomissements, entre autres pendant la grossesse, pris en infusion ?? la fin d\'un repas copieux, il aide ?? la digestion et ses propri??t??s anti-inflammatoires en font un alli?? dans le traitement des rhumes, grippes et refroidissements.', 'https://images.unsplash.com/photo-1606486746458-e44951581ade?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2luZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(10, 'Curcuma', 'Le curcuma est un rhizome appartenant ?? la m??me famille que le gingembre mais qui se diff??rencie de celui-ci par sa couleur orange vif. Surtout r??put?? pour ses multiples vertus sant??, le curcuma se consomme frais ou moulu et permet la r??alisation de recettes aussi saines que d??paysantes. \r\n        Le curcuma moulu est une source de fer. Chaque cellule du corps contient du fer. Ce min??ral est essentiel au transport de l???oxyg??ne et ?? la formation des globules rouges dans le sang. Il joue aussi un r??le dans la fabrication de nouvelles cellules, d???hormones et de neurotransmetteurs (messagers dans l???influx nerveux). Il est ?? noter que le fer contenu dans les aliments d???origine v??g??tale (comme le curcuma) est moins bien absorb?? par l???organisme que le fer contenu dans les aliments d???origine animale. L???absorption du fer des v??g??taux est toutefois favoris??e lorsqu???il est consomm?? avec certains nutriments, telle la vitamine C.\r\n        Le curcuma moulu est ??galement une source de mangan??se. Le mangan??se agit comme cofacteur de plusieurs enzymes qui facilitent une douzaine de diff??rents processus m??taboliques. Il participe ??galement ?? la pr??vention des dommages caus??s par les radicaux libres.\r\n\r\n', 'https://images.unsplash.com/photo-1615485500834-bc10199bc727?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3VyY3VtYXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60', ''),
(11, 'Cannelle', 'Connue depuis l???Antiquit??, la cannelle est une substance v??g??tale aromatique provenant de l\'??corce interne du cannelier. Sa forme d???origine ressemble ?? de petits tubes, mais on la consomme souvent moulue. Tr??s appr??ci??e pour sa saveur parfum??e, elle est ??galement riche en antioxydants b??n??fiques pour la sant??.\r\n\r\nContrairement ?? ce que l???on pourrait croire, la cannelle n???est pas d??pourvue de nutriments. Au contraire, elle renferme des min??raux essentiels pour booster votre sant?? au quotidien. \r\nLa cannelle moulue est une bonne source de mangan??se. Le mangan??se agit comme cofacteur de plusieurs enzymes qui facilitent une douzaine de diff??rents processus m??taboliques. Il participe ??galement ?? la pr??vention des dommages caus??s par les radicaux libres.\r\nGr??ce ?? sa teneur exceptionnelle en antioxydants, min??raux et fibres, la cannelle est pr??cieuse pour notre sant??. D???ailleurs, elle est consid??r??e comme un rem??de naturel dans de nombreuses r??gions du monde et int??gr??e ?? de nombreuses th??rapeutiques sous forme de d??coctions, d???infusions ou encore d???huiles essentielles. ', 'https://images.unsplash.com/photo-1601379758962-cadba22b1e3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(12, 'Paprika', 'Le paprika est une poudre de piment doux utilis??e en tant que condiment. Il est utilis?? depuis des centaines d\'ann??es dans la cuisine hongroise et espagnole, vous connaissez sans doute son go??t mais connaissez-vous les nombreux bienfaits qui se cachent derri??re cette ??pice color??e ?\r\n        Le paprika est une mine de bienfaits tout aussi int??ressants les uns que les autres.\r\n\r\nLutte contre les infections\r\nC\'est la capsa??cine contenue dans le paprika qui va permettre ?? votre organisme de lutter efficacement contre les petits maux hivernaux.\r\n\r\n\r\n\r\nDiminution de la douleur\r\nDe r??centes ??tudes ont d??montr?? que la consommation r??guli??re de paprika pouvait aider ?? diminuer les douleurs articulaires notamment li??es ?? l\'arthrite.\r\n\r\nFavorise une bonne circulation sanguine\r\nConsomm?? r??guli??rement, le paprika permettra de favoriser une bonne circulation sanguine, ?? incorporer dans vos recettes donc si vous ??tes sujet aux jambes lourdes par exemple.\r\n\r\nLutte contre l???an??mie\r\nLe fer pr??sent dans le paprika va permettre de transporter l\'oxyg??ne ?? travers le corps, s\'il est associ?? ?? d\'autres sources alimentaires de fer (l??gumineuses, viande...) il vous permettra d\'??viter les an??mies.\r\n\r\nUn bon apport de potassium\r\nUn bon apport en potassium vous permettra d\'optimiser la contraction des muscles et du c??ur. Il joue ??galement un r??le sur l\'influx nerveux.\r\n\r\n', 'https://images.unsplash.com/photo-1548368197-2fdad2455b9c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFwcmlrYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60', ''),
(13, 'Sel', 'Le sel, constitu?? en quasi-totalit?? de chlorure de sodium, est n??cessaire au fonctionnement de l\'organisme. En consommer en exc??s peut toutefois favoriser le d??veloppement de certaines maladies. D??couvrez les aliments riches en sel et nos recommandations pour limiter votre consommation.\r\n\r\nLe sel est en quasi-totalit?? constitu?? de chlorure de sodium (NaCl). Il contient ??galement, en faible proportion, d???autres min??raux. Il peut ??tre enrichi en iode ou en fluor.\r\nLes principales sources alimentaires de sodium sont le sel de table, les condiments et sauces ainsi que la charcuterie et le fromage.\r\n\r\nLa liste des aliments ayant une teneur ??lev??e en sel figure dans la table de composition nutritionnelle des aliments Ciqual.\r\n\r\nLe sodium joue un r??le d??terminant dans le maintien de l?????quilibre hydrique entre l???int??rieur et l???ext??rieur des cellules. Ce maintien est essentiel pour les transmissions nerveuses et les contractions musculaires. Il joue ??galement un r??le important dans l???absorption intestinale du chlore, des acides amin??s, du glucose et de l\'eau et dans leur r??absorption au niveau r??nal.\r\n\r\nLe sodium est ??limin?? principalement par la voie urinaire et par la transpiration.\r\n\r\nUne carence s??v??re en sodium est associ??e ?? l???apparition d?????d??mes c??r??braux, provoquant malaises, naus??es, pertes de conscience et convulsions.', 'https://images.unsplash.com/photo-1606588347049-62bfd0c118d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2FsdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60', ''),
(14, 'Poivre', '?? Le sel de l???existence est essentiellement dans le poivre qu???on y met. ??? Alphonse Allais.\r\n\r\nLe poivre a de nombreuses vertus:\r\n\r\n#1 Il aide ?? la digestion et diminue les flatulences. \r\n\r\n#2 Il est ??galement d??montr?? qu???il a un effet aphrodisiaque. Il peut en effet provoquer une dilatation micro-vasculaire sur les organes sexuels, notamment au niveau de l\'ut??rus de la femme\r\n\r\n#3 Il aurait un effet direct sur les endomorphines et la pip??rine augmente naturellement le taux de s??rotonine ; en fait, en quelques mots, il rend heureux et serein!\r\n\r\n#4 Le poivre contient de nombreux min??raux, des oligo ??l??ments et des vitamines, dont du potassium, du calcium, du magn??sium, du phosphore, du fer, du mangan??se, du zinc, du cuivre, du s??l??nium, de l???iode, des vitamines : E, A, B1, B2, B3, B6, B9\r\n\r\n#5 La pip??rine et la graisse du poivre vont augmenter l???assimilation d???antioxydants tels que la vitamine C, le coenzyme Q 10, le curcuma, le b??ta carot??ne, le s??l??nium, et plus encore.\r\n\r\nEt quelques tips: \r\n\r\n- Petit truc pour juger de sa qualit??: On reconna??t un poivre de qualit?? par sa graisse. En ??crasant un grain sur une feuille de papier, une trace de graisse devrait appara??tre s???il est de qualit?? !\r\n\r\n- Essayez de rajouter du poivre sur vos fraises. Leur go??t ressortira d???autant plus! \r\n\r\n- Attention ?? toujours le moudre au dernier moment, afin qu\'il puisse d??velopper pleinement ses ar??mes.', 'https://images.unsplash.com/photo-1574685379681-1aacfc4f22d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9pdnJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(16, 'Concentre de tomat', '100 grammes de cet aliment repr??sentent une valeur ??nerg??tique de 92 calories ou kilocalories (ou 386 kilojoules). En moyenne, les produits de la cat??gorie l??gumes apportent une valeur ??nerg??tique ??quivalente ?? 35 kilocalories.', 'https://images.unsplash.com/photo-1472476443507-c7a5948772fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', ''),
(17, 'Potimarron', 'Cousin asiatique du potiron, le potimarron est la star de nos assiettes d???automne et d???hiver. Si sa cote de popularit?? ne cesse de grimper en Europe, le potimarron a ??t?? introduit dans l???alimentation occidentale tr??s tardivement. Qu???on le pr??f??re en soupe, en tourte ou en pur??e, le potimarron est toujours aussi d??licieux que nutritif, pour le plus grand bonheur des gourmands.\r\n        Avec seulement 38 kcal pour 100g, le potimarron est tr??s peu calorique. Sa densit?? nutritionnelle, en revanche, est ??lev??e. Pour commencer, le potimarron est une bonne source de glucides et de prot??ines v??g??tales.', 'https://img.passeportsante.net/1200x675/2021-05-19/i107424-potimarron.webp', 'automne'),
(18, 'Cr??me fra??che liquide', 'La cr??me fra??che, cette mati??re grasse issue du lait de vache, f??t appr??ci??e tr??s t??t par de nombreux peuples : nomades d\'Asie, Celtes, Vikings??? En Europe, elle fut d\'abord servie sur les tables m??di??vales fran??aises, notamment pour accompagner les fromages frais, les l??gumes et les f??culents. Son usage se g??n??ralise au XVIIIe si??cle, puis elle s\'impose d??finitivement en cuisine au XIXe si??cle.\r\nPour qu\'un produit soit appel?? cr??me, il doit ??tre issu de l\'??cr??mage d\'un lait entier et contenir au moins 30 % de MG. Les cr??mes liquides all??g??es ne peuvent donc pas avoir la terminologie de cr??me.\r\nLa cr??me est une excellente source de calcium, qui contribue ?? la min??ralisation et au renouvellement osseux. Elle contient ??galement des lipides, de la vitamine A et du potassium. Malgr?? sa mauvaise r??putation, la cr??me liquide fait partie des corps gras les moins caloriques (en comparaison avec le beurre, la margarine ou l\'huile). Elle a donc toute sa place, consomm??e avec mod??ration, dans le cadre d\'une alimentation ??quilibr??e. C\'est ??galement le corps gras le plus riche en eau : sa teneur hydrique moyenne s\'??l??ve ?? 65 %.', 'https://img-3.journaldesfemmes.fr/ILwMM8uhsKdfiUEIpAreK8YyBKc=/1500x/smart/dfded104856c4ba3a6889b1d37dbeb63/ccmcms-jdf/25122452.jpg', ''),
(19, 'Beurre', 'Le beurre est l\'une des mati??res grasses les plus utilis??es en France et dont nous sommes les plus gros consommateurs ?? travers le monde. On le trouve doux ou sal?? et il peut m??me se trouver aromatis?? dans certaines ??piceries. Cru sur des tartines ou cuit dans des plats, c\'est l\'un des aliments de base de la cuisine fran??aise.\r\n        Le beurre est un aliment tr??s riche en lipides (en particulier en acides gras satur??s) donc calorique avec 753 Cal/100 g. Il est ??galement riche en cholest??rol, en b??ta-carot??ne et en vitamine D. En revanche, il brille par l???absence de vitamine C.', 'https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnV0dGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', ''),
(20, 'Noix de muscade', 'La noix de muscade est une ??pice ?? la saveur chaude et l??g??rement sucr??e qu\'il faut utiliser avec parcimonie car elle est puissante. On la retrouve dans de nombreux plats et dans des sauces telles que la b??chamel. Elle est ??galement utilis??e pour ses bienfaits pour la sant??.\r\n        La noix de muscade b??n??ficie d???une teneur remarquable en fibres et c???est une championne calorique avec 507 Cal/100 g.', 'https://img.passeportsante.net/1200x675/2021-05-03/i102108-noix-de-muscade-nu.webp', ''),
(24, 'Coriandre', 'Son usage dans les pr??parations culinaires en g??n??ral n???est que la partie ??merg??e de l???iceberg. ?? l???insu de beaucoup de personnes, la coriandre est remplie de potentiels avantages pour la sant?? que la plupart des gens ratent totalement, lorsqu???ils jettent cette garniture dans les poubelles, apr??s avoir mang?? leur repas. Elle d??tient onze composants d???huiles essentielles, six types d???acides (dont l???acide ascorbique, plus connu sous le nom de vitamine C), des min??raux et des vitamines, chacun disposant d???un certain nombre de propri??t??s avantageuses.', 'http://localhost/Projet_Final/storage/uploads/63c8cf972fe38lindsay-moe-WZzrQX5k2Ug-unsplash.jpg', 'anuelle'),
(27, 'Huile', 'L???huile de colza est une bonne source de vitamine K tandis que l???huile d???olive en est une source. La vitamine K est n??cessaire pour la synth??se (fabrication) de prot??ines qui participent ?? la coagulation du sang (autant ?? la stimulation qu????? l???inhibition de la coagulation sanguine). Elle joue aussi un r??le dans la formation des os. En plus de se trouver dans l???alimentation, la vitamine K est fabriqu??e par les bact??ries pr??sentes dans l???intestin, d???o?? la raret?? des carences en cette vitamine.', 'http://localhost/Projet_Final/storage/uploads/63c9038e5783droberta-sorge-uOBApnN_K7w-unsplash.jpg', 'anuelle'),
(28, 'Vermicelle', 'Vermicelle de soja cuite : 61 calories\r\n100 grammes de cet aliment repr??sentent une valeur ??nerg??tique de 61 calories ou kilocalories (ou 257 kilojoules). En moyenne, les produits de la cat??gorie p??tes et semoules apportent une valeur ??nerg??tique ??quivalente ?? 200 kilocalories.', 'http://localhost/Projet_Final/storage/uploads/63c906d258de4istockphoto-453959031-612x612.jpg', 'anuelle'),
(29, 'Poulet', 'Parmi les nutriments contenus en bonne quantit?? dans la viande de poulet, nous pouvons citer les suivants :\r\n\r\nPhosphore. Le poulet est une excellente source de phosphore. Celui-ci constitue le deuxi??me min??ral le plus abondant de l???organisme apr??s le calcium. Il joue un r??le essentiel dans la formation et le maintien de la sant?? des os et des dents. De plus, il participe entre autres ?? la croissance et ?? la r??g??n??rescence des tissus et aide ?? maintenir ?? la normale le pH du sang. Finalement, le phosphore est l???un des constituants des membranes cellulaires ;\r\nZinc. Le poulet (viande brune) est une excellente source de zinc. La viande blanche, quant ?? elle, en est une bonne source pour la femme et une source pour l???homme, dont les besoins sont sup??rieurs. Le zinc participe notamment aux r??actions immunitaires, ?? la fabrication du mat??riel g??n??tique, ?? la perception du go??t, ?? la cicatrisation des plaies et au d??veloppement du f??tus. Il interagit ??galement avec les hormones sexuelles et thyro??diennes. Dans le pancr??as, il participe ?? la fabrication, ?? la mise en r??serve et ?? la lib??ration de l???insuline ;\r\nS??l??nium. Le poulet est une excellente source de s??l??nium. Ce min??ral travaille avec l???une des principales enzymes antioxydantes, pr??venant ainsi la formation de radicaux libres dans l???organisme. Il contribue aussi ?? convertir les hormones thyro??diennes en leur forme active ;\r\nVitamine B3. Le poulet est une excellente source de vitamine B3. Appel??e aussi niacine, la vitamineB3 participe ?? de nombreuses r??actions m??taboliques et contribue particuli??rement ?? la production d\'??nergie ?? partir des glucides, des lipides, des prot??ines et de l\'alcool que nous ing??rons. Elle collabore aussi au processus de formation de l???ADN, permettant une croissance et un d??veloppement normaux.', 'http://localhost/Projet_Final/storage/uploads/63c90c5d8c847sophia-louw-w5l0oNGIxf4-unsplash.jpg', 'anuelle'),
(30, 'Rechta', 'Ce plat est g??n??ralement accompagn?? d\'une sauce blanche parfum??e de cannelle. Les ingr??dients principaux de la rechta sont les p??tes coup??es en lani??res fine fra??ches, la viande, le poulet, les pois chiches, le navet et la courgette.', 'http://localhost/Projet_Final/storage/uploads/63c90d5a56071maxresdefault.jpg', 'anuelle'),
(31, 'Citron', 'Le citron a une faible valeur ??nerg??tique* car il apporte en moyenne 27,60 calories (kcal) pour 100 g, soit 118 kJ. D\'apr??s les donn??es de la table Ciqual 2020, le citron est le fruit le moins calorique. Un citron p??se en moyenne 120 g, il apporte donc 32,40 kcal.', 'http://localhost/Projet_Final/storage/uploads/63c90f3a68529eggbank-ohNxxapID_k-unsplash.jpg', 'ete'),
(32, 'Eau', 'L???eau est une ressource naturelle essentielle ?? la vie. Le stock d???eau douce plan??taire existant est tr??s faible si on le compare ?? la masse d???eau sal??e qui recouvre 70 % de la surface du globe. Cette eau douce pr??cieuse est, non seulement, in??quitablement r??partie, mais se rar??fie. En 60 ans, sa consommation a ??t?? multipli??e par six.\r\n\r\nAu niveau mondial, 71 % de cette eau disponible (pluie, r??serve du sol) est utilis??e pour l???irrigation des cultures.', 'http://localhost/Projet_Final/storage/uploads/63c90f9bf180ddavid-becker-rrfdqjJWwmU-unsplash.jpg', 'anuelle'),
(33, ' Sucre', '                            Le sucre blanc ne contient que des glucides et il est tr??s riche : presque 400 calories par portion de 100 g. Lorsque c???est possible, il est pr??f??rable de le remplacer par du sucre brut (sucre brun) qui contient aussi des sels min??raux et certaines vitamines.\r\n\r\nLe sucre pur est aussi appel?? ?? sucre rapide ??, car il fournit rapidement de l?????nergie et peut donc ??tre utilis?? en cas d???effort intense ponctuel. Pour r??partir l?????nergie sur une longue p??riode, on pr??f??re toutefois les sucres lents (ceux contenus dans les c??r??ales et autres f??culents.)                            ', 'http://localhost/Projet_Final/storage/uploads/63c90ff2de46ealexander-grey-oKay0q7Pa30-unsplash.jpg', 'anuelle'),
(34, 'Lait', '100 grammes de cet aliment repr??sentent une valeur ??nerg??tique de 46 calories ou kilocalories (ou 194 kilojoules). En moyenne, les produits de la cat??gorie laits apportent une valeur ??nerg??tique ??quivalente ?? 141 kilocalories.', 'http://localhost/Projet_Final/storage/uploads/63c9102e9faa5eiliv-aceron-_8bnn1GqX70-unsplash.jpg', 'anuelle'),
(35, 'Viande Hach??', 'La viande hach??e est particuli??rement riche en prot??ines, qui jouent plusieurs r??les fondamentaux dans l\'organisme et permettent notamment le renouvellement et l\'augmentation de la masse musculaire et le maintien de l\'ossature. Ces prot??ines sont ??galement impliqu??es dans le transport de l\'oxyg??ne dans l\'organisme et la digestion. La viande hach??e apporte aussi du fer \" h??minique \", tr??s bien absorb?? par l\'organisme, et qui favorise l\'oxyg??nation du sang des cellules et des muscles.\r\n\r\nAutre atout, elle est riche en vitamine B12, essentielle pour le syst??me nerveux, et qui joue un r??le dans le processus de division cellulaire. \r\n\r\nAttention toutefois ?? ne pas en abuser. Manger trop de viande rouge augmenterait le risque de cancer colorectal, et peut entra??ner une hausse du taux de cholest??rol, et conduire ?? des maladies cardio-vasculaires, surtout si elle est riche en mati??res grasses. Optez de pr??f??rence pour des steaks ?? 5 ou 10% de MG.', 'http://localhost/Projet_Final/storage/uploads/63c9160976957viande-hachee.jpeg', 'anuelle'),
(36, 'Persil', 'Les fines herbes ne sont habituellement pas consomm??es en grande quantit??. Utilis??es comme assaisonnements, elles ne peuvent alors pas procurer tous les bienfaits sant?? qui leur sont attribu??s. L???ajout de fines herbes de fa??on r??guli??re et significative aux aliments permet de contribuer, ne serait-ce que de fa??on minime, ?? l???apport en antioxydants de l???alimentation. Par contre, la consommation de fines herbes ?? elle seule ne peut r??pondre aux besoins en antioxydants du corps.\r\n\r\nLa majorit?? des ??tudes sur les fines herbes ont ??t?? r??alis??es chez l???animal ?? partir d???extraits de la plante. L???extrait est utilis?? afin d?????tre en mesure d???isoler et de concentrer les principes actifs, ainsi que pour comprendre les m??canismes d???action. Chez l???humain, il est difficile d?????valuer les effets sant?? de la consommation de fines herbes puisque les quantit??s consomm??es sont g??n??ralement faibles.', 'http://localhost/Projet_Final/storage/uploads/63c91705cae03i102130-persil-nu.webp', 'anuelle'),
(37, 'Oeuf', 'L\'??uf poss??de une composition nutritionnelle tr??s int??ressante. On le classe parmi les aliments protidiques, au m??me titre que la viande et le poisson. Il contient 12,7% de prot??ines parfaitement ??quilibr??es en acides amin??s essentiels. Environ 10% de lipides de bonne composition nutritionnelle. C??t?? min??raux, l\'??uf est riche en fer, en s??l??nium et en zinc. C??t?? vitamines, il regorge de vitamines liposolubles (A, D, E) ainsi que de vitamines du groupe B (B2, B9, B5 et B12). Enfin, les ??ufs contiennent des carot??no??des antioxydants : lut??ine et la x??axanthine.', 'http://localhost/Projet_Final/storage/uploads/63c9179723a72i139020-comment-reconnaitre-un-oeuf-bio.jpeg', 'anuelle'),
(38, 'Farine', 'La farine est le produit pulv??rulent obtenu ?? partir d\'un lot de bl?? sain, loyal et marchand, pr??par?? en vue de la mouture et industriellement pur???. L\'amidon : (glucide) est insoluble dans l\'eau ; il en absorbe 1/3 de son poids et devient alors un empois visqueux et g??latineux.', 'http://localhost/Projet_Final/storage/uploads/63c91a9b0fbb5Farine ble??.jpg', 'anuelle'),
(39, 'P??te feuillet??e', 'Les p??tes feuillet??es sont des p??tes compos??es d\'une d??trempe (farine + eau + sel et selon le cas mati??re grasse) et d\'un corps gras, successivement pli??s entre eux pour constituer des couches ind??pendantes, s\'??levant ?? la cuisson en feuillets distincts.', 'http://localhost/Projet_Final/storage/uploads/63c91aed77031pate-feuilletee-inversee-felder.webp', 'anuelle'),
(40, 'Amande', 'On accorde une grande importance ?? l???amande pour son contenu ??lev?? en phytost??rols, en acides gras mono-insatur??s, en prot??ines v??g??tales, en fibres solubles, en vitamines et en min??raux. D???ailleurs, la Food and Drug Administration (FDA) des ??tats-Unis permet depuis 2003 d???inscrire sur les ??tiquettes de produits alimentaires l???all??gation suivante concernant les noix : ?? Des ??vidences laissent croire, mais ne prouvent pas, que la consommation d???une once et demie par jour de la plupart des noix, dans un r??gime alimentaire faible en gras satur??s et en cholest??rol, peut r??duire le risque de maladies coronariennes ??. Bien que les donn??es scientifiques abondent quant aux effets b??n??fiques reli??s ?? la consommation d???amande, cette all??gation n???est cependant pas permise ailleurs.', 'http://localhost/Projet_Final/storage/uploads/63c91b27ab9b0i101960-amande-nu.webp', 'anuelle'),
(41, 'Eau de rose', 'Bien que l\'eau de rose ait gagn?? en popularit?? au fil des ans en raison de ses bienfaits esth??tiques, elle serait ??galement int??ressante comme traitement pour certaines maladies. Originaire d\'Iran, l\'eau de rose contient de10 ?? 50% d\'huile de rose, et plusieurs composants tels que les terp??nes, les glycosides, les flavono??des, et les anthocyanines, tous b??n??fiques pour la sant?? humaine.\r\n\r\nL???eau de rose aurait d???ailleurs des propri??t??s hypnotiques, analg??siques, anti??pileptiques, respiratoires, cardiovasculaires, laxatives, antidiab??tiques, antimicrobiennes, anti-inflammatoires et antioxydantes. Il est toutefois important de rappeler qu???aucune ??tude scientifique fiable ne s???est pench??e sur les effets de ce produit. Il est donc recommand?? de l???utiliser avec prudence, en compl??ment d???un traitement adapt??, et avec l???accord d???un??e professionnel??le de sant??.', 'http://localhost/Projet_Final/storage/uploads/63c91ba8a06a4i106416-bienfaits-eau-rose-sante.webp', 'anuelle');

-- --------------------------------------------------------

--
-- Table structure for table `IngredientCuit`
--

CREATE TABLE `IngredientCuit` (
  `id` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  `methode_de_cuissance` text NOT NULL,
  `healthy` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `video` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`id`, `titre`, `description`, `image`, `video`) VALUES
(1, '   RATP et SNCF en gr??ve', 'La perspective d???un ?? jeudi noir ?? dans les transports se confirme, ?? la veille de cette grande journ??e de mobilisation contre la r??forme des retraites. D??couvrez les pr??visions de trafic de la RATP. \r\n    ??a se pr??cise. Si depuis plusieurs jours gouvernement et syndicats pr??parent les Fran??ais ?? l???id??e d???un ?? jeudi noir ??, les pr??visions d??finitives communiqu??es ce mercredi ?? la veille de la grande mobilisation contre la r??forme des retraites semblent confirmer le risque de ?? journ??e de gal??re ??. C??t?? RATP, tous les syndicats repr??sentatifs appellent en effet ?? participer au mouvement interprofessionnel de ce 19 janvier. En ??le-de-France, le trafic des transports en commun sera donc, sans surprise, grandement perturb??.\r\n\r\nLes Franciliens sont appel??s ?? privil??gier le t??l??travail. Mais pour ceux qui n???ont pas le choix, d??couvrez les pr??visions d??finitives de la RATP pour les RER, m??tros, bus et tramways.\r\n\r\n\r\n                                                                                                                    ', 'http://localhost/Projet_Final/storage/uploads/63c92fd27f251jato-young-zFLqXOECxKU-unsplash.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `NotationUtilisateur`
--

CREATE TABLE `NotationUtilisateur` (
  `id` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NotationUtilisateur`
--

INSERT INTO `NotationUtilisateur` (`id`, `id_recette`, `id_utilisateur`, `note`) VALUES
(14, 912, 16, 5),
(16, 914, 16, 4),
(18, 906, 16, 3),
(19, 913, 17, 4),
(20, 1, 17, 1),
(21, 911, 17, 3),
(22, 913, 16, 3),
(23, 911, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `PreferenceUtilisateur`
--

CREATE TABLE `PreferenceUtilisateur` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PreferenceUtilisateur`
--

INSERT INTO `PreferenceUtilisateur` (`id`, `id_utilisateur`, `id_recette`) VALUES
(9, 16, 907),
(10, 16, 912),
(11, 16, 906),
(12, 17, 913);

-- --------------------------------------------------------

--
-- Table structure for table `Recette`
--

CREATE TABLE `Recette` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `video` text,
  `creator_id` int(11) DEFAULT NULL,
  `temps_preparation` int(11) NOT NULL,
  `temps_cuisson` int(11) NOT NULL,
  `temps_repos` int(11) DEFAULT NULL,
  `difficulte` int(11) NOT NULL,
  `categorie` text NOT NULL,
  `notation` int(11) DEFAULT NULL,
  `etat` text NOT NULL,
  `healthy` tinyint(1) NOT NULL,
  `calories` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Recette`
--

INSERT INTO `Recette` (`id`, `titre`, `description`, `image`, `video`, `creator_id`, `temps_preparation`, `temps_cuisson`, `temps_repos`, `difficulte`, `categorie`, `notation`, `etat`, `healthy`, `calories`) VALUES
(1, 'Couscous', 'A la maison, le couscous alg??rien c???est chaque dimanche, parfois je pr??pare le couscous aux l??gumes, d???autres fois au poulet. Mais celui que je pr??f??re c???est le couscous kabyle el mesfouf aux f??ves et petits pois arrose d???un bon filet d???huile d???olive et accompagne d???un bon verre de lben (babeurre)??? le bonheur !!!', 'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y291c2NvdXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60', '', NULL, 10, 55, 10, 4, 'Plats', 1, 'published', 1, 152),
(2, 'Gratin de potimarron', 'Un gratin de potimarron des plus savoureux plat ??conomique et simple. Une recette d\'automne compos??e de pomme de terre, cr??me liquide et comt?? avec une pointe de noix de muscade.', 'https://img.cuisineaz.com/1024x768/2013/12/20/i7469-gratin-pdt-potiron-lardons.jpeg', '', NULL, 10, 35, 5, 4, 'Plats', 5, 'published', 1, 550),
(906, 'Chorba', 'Voici une Chorba algerienne {?????????? } qui est une soupe ?? base de vermicelle, bien parfum??e aux ??pices : curcuma, gingembre et paprika et herbes : coriandre, celeri et menthe sauvage lui donne un savoureux go??t subtile.', 'http://localhost/Projet_Final/storage/uploads/63c909d02b842la-chorba-cuisine-algerienne_thumb_2.jpg', NULL, NULL, 10, 50, 5, 3, 'Plats', 3, 'published', 0, 620),
(907, 'Rechta', 'Ce plat est g??n??ralement accompagn?? d\'une sauce blanche parfum??e de cannelle. Les ingr??dients principaux de la rechta sont les p??tes coup??es en lani??res fine fra??ches, la viande, le poulet, les pois chiches, le navet et la courgette.', 'http://localhost/Projet_Final/storage/uploads/63c90e89a1e9amaxresdefault.jpg', NULL, NULL, 15, 50, 5, 4, 'Plats', NULL, 'published', 0, 532),
(911, 'Charbet', 'La cherbet ou sherbet (???????? ) est une citronnade alg??rienne pr??sente sur toutes les tables durant le mois de ramadan. La meilleure cherbet est celle de la ville de Boufarik dont la recette reste secr??te. C???est notre boisson pr??f??r??e, elle s???est r??pandu sur tout le territoire alg??rien et se vend sur toutes les rues d???Alger.', 'http://localhost/Projet_Final/storage/uploads/63c911ff2cb76Lemonade-4.jpg', NULL, NULL, 10, 10, 30, 1, 'boissons', 4, 'published', 0, 20),
(912, 'Taboul??', '                                En accompagnement d\'un barbecue, pour un pique-nique ou un repas sans prise de t??te, le taboul?? sera parfait ! Bien frais, on se r??gale ?? d??guster cette recette remplie de saveurs gr??ce aux herbes hach??es.\r\nIci, pas de cuisson ! Il vous suffira simplement de m??langer vos aliments ensemble et de laisser gonfler la semoule de bl?? au r??frig??rateur. Pratique, si vous n\'avez pas de four ;-)\r\nUne alternative parfaite aussi si vous souhaitez vous concocter une recette v??g??talienne sans complication ! Ajoutez les crudit??s de votre choix et c\'est parti pour le test vegan !                            ', 'http://localhost/Projet_Final/storage/uploads/63c9140f7103029053202ef1e632188531f93559ad73d.jpg', NULL, NULL, 5, 10, 5, 1, 'Entrees', NULL, 'published', 0, 60),
(913, 'Mhancha', '                                                                Mhancha un succulent met qui trouve son origine dans les villes du Maghreb en Alg??rie et au Maroc notamment, son nom arabe signifie serpentin ou serpentine ?? cause de sa forme, ?? la base c???est une recette sucr??e des feuilles de pastilla enduites de smen ou de beurre fondu et enfermant une farce ?? base d???amandes parfum??es ?? la cannelle. Celle-ci est cuite au four puis arros??e de miel, une pure merveille.                                                        ', 'http://localhost/Projet_Final/storage/uploads/63c91581180e7DSCF9609.jpg', NULL, NULL, 35, 40, 10, 1, 'Entrees', 4, 'published', 0, 120),
(914, 'Baklawa', '                                                                                                                                                                                                                                Le Baklawa existe en de nombreuses variantes, en fonction des terroirs et des r??gions.\r\nC\'est un dessert assez sucr?? et constitu?? de p??te phyllo, de sirop de sucre (remplac?? par du miel en Gr??ce) et, selon les recettes, de pistaches, de noix ou de noisettes.\r\nSa pr??paration est longue ?? r??aliser car elle est constitu??e de fines feuilles de p??te beurr??es ou huil??es une ?? une, superpos??es dans un plat rond ou carr??, ou bien enroul??es sur elles-m??mes.\r\nUn m??lange de fruits secs, finement moulus, concass??s est d??pos?? entre les feuilles, lesquelles sont ensuite cuites puis tremp??es dans de l\'eau sucr??e (avec du jus de citron pour ??viter de caram??liser), du miel ou encore de l\'eau de fleur d\'oranger ou de rose. On y ajoute quelquefois des clous de girofle moulus.                                                                                                                                                                                                    ', 'http://localhost/Projet_Final/storage/uploads/63c91cd5ed6c9baklawa-6-sur-33.webp', NULL, NULL, 30, 60, 60, 5, 'Desserts', NULL, 'published', 0, 500);

-- --------------------------------------------------------

--
-- Table structure for table `RecetteF??tes`
--

CREATE TABLE `RecetteF??tes` (
  `id` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL,
  `id_fete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RecetteIngredient`
--

CREATE TABLE `RecetteIngredient` (
  `id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `unite` text NOT NULL,
  `id_recette` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RecetteIngredient`
--

INSERT INTO `RecetteIngredient` (`id`, `quantite`, `unite`, `id_recette`, `id_ingredient`) VALUES
(1, 200, 'g', 1, 1),
(2, 2, '', 1, 2),
(3, 3, '', 1, 3),
(4, 1, '', 1, 4),
(5, 3, '', 1, 5),
(6, 2, 'poign??es', 1, 6),
(7, 2, 'branche', 1, 7),
(8, 2, '', 1, 8),
(9, 1, 'c-a-c', 1, 9),
(10, 1, 'c-a-c', 1, 10),
(11, 1, 'c-a-c', 1, 11),
(12, 1, 'c-a-s', 1, 12),
(13, 1, 'c-a-c', 1, 13),
(14, 1, 'c-a-c', 1, 14),
(16, 1, 'c-a-s', 1, 16),
(17, 800, 'g', 2, 17),
(18, 2, '', 2, 2),
(19, 1, '', 2, 4),
(20, 300, 'ml', 2, 18),
(21, 30, 'g', 2, 19),
(22, 1, 'pinc??e', 2, 20),
(24, 1, 'c-a-c', 2, 14),
(197, 250, 'g', 906, 1),
(198, 2, '', 906, 4),
(199, 1, 'bouquet', 906, 24),
(200, 2, 'branches', 906, 7),
(201, 2, '', 906, 3),
(202, 1, '', 906, 5),
(203, 100, 'g', 906, 6),
(204, 200, 'g', 906, 28),
(205, 2, 'c-a-s', 906, 16),
(206, 2, 'c-a-s', 906, 27),
(207, 2, 'c-a-c', 906, 13),
(208, 2, 'c-a-c', 906, 14),
(209, 1, 'c-a-c', 906, 10),
(210, 1, 'c-a-c', 906, 12),
(211, 1, 'c-a-c', 906, 9),
(212, 1, 'c-a-c', 906, 11),
(213, 400, 'g', 907, 29),
(214, 1, '', 907, 4),
(215, 4, '', 907, 8),
(216, 3, '', 907, 5),
(217, 2, 'c-a-c', 907, 13),
(218, 1, 'c-a-c', 907, 14),
(219, 1, 'c-a-c', 907, 11),
(220, 1, 'poign??e', 907, 6),
(226, 4, '', 911, 31),
(227, 2, 'L', 911, 32),
(228, 120, 'g', 911, 33),
(229, 3, 'c-a-s', 911, 34),
(243, 450, 'g', 913, 35),
(244, 2, '', 913, 4),
(245, 30, 'g', 913, 19),
(246, 2, 'c-a-s', 913, 27),
(247, 3, 'c-a-s', 913, 36),
(248, 3, 'c-a-s', 913, 24),
(249, 1, 'c-a-c', 913, 20),
(250, 2, '', 912, 31),
(251, 1, '', 912, 4),
(252, 60, 'ml', 912, 27),
(253, 1, 'c-a-c', 912, 13),
(254, 1, 'c-a-c', 912, 14),
(304, 840, 'g', 914, 38),
(305, 250, 'g', 914, 19),
(306, 250, 'g', 914, 39),
(307, 3, 'g', 914, 13),
(308, 1, 'verre', 914, 32),
(309, 1, 'kg', 914, 40),
(310, 1, 'verre', 914, 41);

-- --------------------------------------------------------

--
-- Table structure for table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `approved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`id`, `nom`, `email`, `sexe`, `date_naissance`, `mot_de_passe`, `approved`) VALUES
(16, 'Nada', 'jn_hanad@esi.dz', 'Female', '2023-01-13', 'nada', 1),
(17, 'Nada', 'jn_hanead@esi.dz', 'Female', '2023-01-04', 'nada', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AdminParams`
--
ALTER TABLE `AdminParams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Diaporama`
--
ALTER TABLE `Diaporama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Etape`
--
ALTER TABLE `Etape`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_recette` (`id_recette`);

--
-- Indexes for table `F??tes`
--
ALTER TABLE `F??tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `IngredientCuit`
--
ALTER TABLE `IngredientCuit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NotationUtilisateur`
--
ALTER TABLE `NotationUtilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_recette` (`id_recette`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `PreferenceUtilisateur`
--
ALTER TABLE `PreferenceUtilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_recette` (`id_recette`);

--
-- Indexes for table `Recette`
--
ALTER TABLE `Recette`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`);

--
-- Indexes for table `RecetteF??tes`
--
ALTER TABLE `RecetteF??tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_recette` (`id_recette`),
  ADD KEY `id_fete` (`id_fete`);

--
-- Indexes for table `RecetteIngredient`
--
ALTER TABLE `RecetteIngredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_recette` (`id_recette`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- Indexes for table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `AdminParams`
--
ALTER TABLE `AdminParams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Diaporama`
--
ALTER TABLE `Diaporama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Etape`
--
ALTER TABLE `Etape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `F??tes`
--
ALTER TABLE `F??tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Ingredient`
--
ALTER TABLE `Ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `IngredientCuit`
--
ALTER TABLE `IngredientCuit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `News`
--
ALTER TABLE `News`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `NotationUtilisateur`
--
ALTER TABLE `NotationUtilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `PreferenceUtilisateur`
--
ALTER TABLE `PreferenceUtilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Recette`
--
ALTER TABLE `Recette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `RecetteF??tes`
--
ALTER TABLE `RecetteF??tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RecetteIngredient`
--
ALTER TABLE `RecetteIngredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Etape`
--
ALTER TABLE `Etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `Recette` (`id`);

--
-- Constraints for table `NotationUtilisateur`
--
ALTER TABLE `NotationUtilisateur`
  ADD CONSTRAINT `notationutilisateur_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `Recette` (`id`),
  ADD CONSTRAINT `notationutilisateur_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateurs` (`id`);

--
-- Constraints for table `PreferenceUtilisateur`
--
ALTER TABLE `PreferenceUtilisateur`
  ADD CONSTRAINT `preferenceutilisateur_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateurs` (`id`),
  ADD CONSTRAINT `preferenceutilisateur_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `Recette` (`id`);

--
-- Constraints for table `Recette`
--
ALTER TABLE `Recette`
  ADD CONSTRAINT `recette_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `Utilisateurs` (`id`);

--
-- Constraints for table `RecetteF??tes`
--
ALTER TABLE `RecetteF??tes`
  ADD CONSTRAINT `recettef??tes_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `Recette` (`id`),
  ADD CONSTRAINT `recettef??tes_ibfk_2` FOREIGN KEY (`id_fete`) REFERENCES `F??tes` (`id`);

--
-- Constraints for table `RecetteIngredient`
--
ALTER TABLE `RecetteIngredient`
  ADD CONSTRAINT `recetteingredient_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `Recette` (`id`),
  ADD CONSTRAINT `recetteingredient_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `Ingredient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
