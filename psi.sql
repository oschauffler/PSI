-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 11 mai 2020 à 09:20
-- Version du serveur :  5.7.25
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `psi`
--

-- --------------------------------------------------------

--
-- Structure de la table `annuaire`
--

CREATE TABLE `annuaire` (
  `id` int(11) NOT NULL,
  `libelle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annuaire`
--

INSERT INTO `annuaire` (`id`, `libelle`) VALUES
(1, 'HARPEGE'),
(2, 'APOGEE'),
(3, 'FOMASUP');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `id` int(11) NOT NULL,
  `an` varchar(8) NOT NULL,
  `personne` int(11) NOT NULL,
  `groupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient`
--

INSERT INTO `appartient` (`id`, `an`, `personne`, `groupe`) VALUES
(3, '2017', 1, 5),
(5, '2012', 40, 6),
(6, '2012', 41, 6),
(7, '2012', 42, 6),
(8, '2029', 187, 6),
(10, '2013', 3, 5),
(11, '2013', 146, 5),
(12, '2013', 39, 5),
(13, '2013', 40, 5),
(14, '2013', 41, 5),
(15, '2020', 172, 7),
(16, '2020', 9, 7),
(17, '2020', 70, 7),
(18, '2020', 71, 7),
(19, '2020', 191, 7),
(20, '2020', 192, 7),
(21, '2020', 98, 7);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `intitule` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `intitule`) VALUES
(5, 'L3 APP'),
(6, 'L1'),
(7, 'M1 APP');

-- --------------------------------------------------------

--
-- Structure de la table `individu`
--

CREATE TABLE `individu` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `annuaire` int(11) NOT NULL,
  `statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `individu`
--

INSERT INTO `individu` (`id`, `nom`, `prenom`, `email`, `num`, `annuaire`, `statut`) VALUES
(1, 'Ahmed', 'Noufeine', 'Ahmed.Noufeine@parisnanterre.fr', 340001, 2, 1),
(2, 'Ait akli', 'Litissia', 'AitAkli.Litissia@parisnanterre.fr', 340002, 2, 1),
(3, 'Ba', 'Adja', 'Ba.Adja@parisnanterre.fr', 340003, 2, 1),
(4, 'Binous', 'Wassim', 'Binous.Wassim@parisnanterre.fr', 340004, 2, 1),
(5, 'Bocoum', 'Idy', 'Bocoum.Idy@parisnanterre.fr', 340005, 2, 1),
(6, 'Brochado', 'Alexandre', 'Brochado.Alexandre@parisnanterre.fr', 340006, 2, 1),
(7, 'Clebien', 'Nangninta', 'Clebien.Nangninta@parisnanterre.fr', 340007, 2, 1),
(8, 'Das', 'Rahul', 'Das.Rahul@parisnanterre.fr', 340008, 2, 1),
(9, 'Elarj', 'Aniss', 'Elarj.Aniss@parisnanterre.fr', 340009, 2, 1),
(10, 'Fall', 'Seynabou', 'Fall.Seynabou@parisnanterre.fr', 340010, 2, 1),
(11, 'Jestin', 'Gabriel', 'Jestin.Gabriel@parisnanterre.fr', 340011, 2, 1),
(12, 'Keloute ndamukong', 'Ubald', 'Keloute ndamukong.Ubald@parisnanterre.fr', 340012, 2, 1),
(13, 'Khalfi', 'Sofian', 'Khalfi.Sofian@parisnanterre.fr', 340013, 2, 1),
(14, 'Le men', 'Yann', 'Le men.Yann@parisnanterre.fr', 340014, 2, 1),
(15, 'Mboup', 'Gaye', 'Mboup.Gaye@parisnanterre.fr', 340015, 2, 1),
(16, 'Mouzouri', 'Ilhame', 'Mouzouri.Ilhame@parisnanterre.fr', 340016, 2, 1),
(17, 'Ndiaye', 'Moussa', 'Ndiaye.Moussa@parisnanterre.fr', 340017, 2, 1),
(18, 'Quellec', 'Nathan', 'Quellec.Nathan@parisnanterre.fr', 340018, 2, 1),
(19, 'Rajaratnam', 'Sarujan', 'Rajaratnam.Sarujan@parisnanterre.fr', 340019, 2, 1),
(20, 'Raypoulet', 'Hemanath', 'Raypoulet.Hemanath@parisnanterre.fr', 340020, 2, 1),
(21, 'Sakho', 'Assane', 'Sakho.Assane@parisnanterre.fr', 340021, 2, 1),
(22, 'Schauffler', 'Ophelie', 'Schauffler.Ophelie@parisnanterre.fr', 340022, 2, 1),
(23, 'Si-mohammed', 'Samy', 'Si-mohammed.Samy@parisnanterre.fr', 340023, 2, 1),
(24, 'Sidate', 'Alexis', 'Sidate.Alexis@parisnanterre.fr', 340024, 2, 1),
(25, 'Zemali', 'Lynda', 'Zemali.Lynda@parisnanterre.fr', 340025, 2, 1),
(27, 'Achou', 'Sara', 'Achou.Sara@parisnanterre.fr', 340027, 2, 1),
(28, 'Akkoura', 'Aniesse', 'Akkoura.Aniesse@parisnanterre.fr', 340028, 2, 1),
(29, 'Ali', 'Ikram-masjid', 'Ali.Ikram-masjid@parisnanterre.fr', 340029, 2, 1),
(30, 'Ali', 'Faiz', 'Ali.Faiz@parisnanterre.fr', 340030, 2, 1),
(31, 'Ali', 'Ikram-masjid', 'Ali.Ikram-masjid@parisnanterre.fr', 340031, 2, 1),
(32, 'Alouda', 'Lidao', 'Alouda.Lidao@parisnanterre.fr', 340032, 2, 1),
(33, 'Alouda', 'Lidao', 'Alouda.Lidao@parisnanterre.fr', 340033, 2, 1),
(34, 'Askar', 'Mohammad', 'Askar.Mohammad@parisnanterre.fr', 340034, 2, 1),
(35, 'Auger', 'Antoine', 'Auger.Antoine@parisnanterre.fr', 340035, 2, 1),
(36, 'Auger', 'Antoine', 'Auger.Antoine@parisnanterre.fr', 340036, 2, 1),
(37, 'Balde', 'Mamadou saliou', 'Balde.Mamadou saliou@parisnanterre.fr', 340037, 2, 1),
(38, 'Baro', 'Mohamed', 'Baro.Mohamed@parisnanterre.fr', 340038, 2, 1),
(39, 'Barolle', 'Romain', 'Barolle.Romain@parisnanterre.fr', 340039, 2, 1),
(40, 'Barolle', 'Romain', 'Barolle.Romain@parisnanterre.fr', 340040, 2, 1),
(41, 'Barry', 'Aissatou', 'Barry.Aissatou@parisnanterre.fr', 340041, 2, 1),
(42, 'Belhaimeur', 'Mohamed', 'Belhaimeur.Mohamed@parisnanterre.fr', 340042, 2, 1),
(43, 'Benaissa', 'Adam', 'Benaissa.Adam@parisnanterre.fr', 340043, 2, 1),
(44, 'Benali', 'Ahmed', 'Benali.Ahmed@parisnanterre.fr', 340044, 2, 1),
(45, 'Berte', 'Ulrich', 'Berte.Ulrich@parisnanterre.fr', 340045, 2, 1),
(46, 'Berte', 'Ulrich', 'Berte.Ulrich@parisnanterre.fr', 340046, 2, 1),
(47, 'Beyaz', 'Sefkan', 'Beyaz.Sefkan@parisnanterre.fr', 340047, 2, 1),
(48, 'Bodart', 'Valentin', 'Bodart.Valentin@parisnanterre.fr', 340048, 2, 1),
(49, 'Boucamus', 'Cassandra', 'Boucamus.Cassandra@parisnanterre.fr', 340049, 2, 1),
(50, 'Boumaza', 'Karim', 'Boumaza.Karim@parisnanterre.fr', 340050, 2, 1),
(51, 'Bouzekri', 'Ryan', 'Bouzekri.Ryan@parisnanterre.fr', 340051, 2, 1),
(52, 'Bouzekri', 'Ryan', 'Bouzekri.Ryan@parisnanterre.fr', 340052, 2, 1),
(53, 'Callet', 'Theo', 'Callet.Theo@parisnanterre.fr', 340053, 2, 1),
(54, 'Callet', 'Theo', 'Callet.Theo@parisnanterre.fr', 340054, 2, 1),
(55, 'Cazenave', 'Louis', 'Cazenave.Louis@parisnanterre.fr', 340055, 2, 1),
(56, 'Chatillon', 'Julien', 'Chatillon.Julien@parisnanterre.fr', 340056, 2, 1),
(57, 'Chatillon', 'Julien', 'Chatillon.Julien@parisnanterre.fr', 340057, 2, 1),
(58, 'Chen', 'Juline', 'Chen.Juline@parisnanterre.fr', 340058, 2, 1),
(59, 'Chen', 'Juline', 'Chen.Juline@parisnanterre.fr', 340059, 2, 1),
(60, 'Crentsil', 'Robert', 'Crentsil.Robert@parisnanterre.fr', 340060, 2, 1),
(61, 'Crentsil', 'Robert', 'Crentsil.Robert@parisnanterre.fr', 340061, 2, 1),
(62, 'Dandeu', 'Tom', 'Dandeu.Tom@parisnanterre.fr', 340062, 2, 1),
(63, 'Dandeu', 'Tom', 'Dandeu.Tom@parisnanterre.fr', 340063, 2, 1),
(64, 'Delaporte', 'Lucie', 'Delaporte.Lucie@parisnanterre.fr', 340064, 2, 1),
(65, 'Delaporte', 'Lucie', 'Delaporte.Lucie@parisnanterre.fr', 340065, 2, 1),
(66, 'Diop', 'Maguette', 'Diop.Maguette@parisnanterre.fr', 340066, 2, 1),
(67, 'Djamaldine ben', 'Hadji', 'Djamaldine ben.Hadji@parisnanterre.fr', 340067, 2, 1),
(68, 'Dubois', 'Dorian', 'Dubois.Dorian@parisnanterre.fr', 340068, 2, 1),
(69, 'El amrani', 'Amine', 'El amrani.Amine@parisnanterre.fr', 340069, 2, 1),
(70, 'Esmel', 'Nome', 'Esmel.Nome@parisnanterre.fr', 340070, 2, 1),
(71, 'Fahim', 'Aymane', 'Fahim.Aymane@parisnanterre.fr', 340071, 2, 1),
(72, 'Fekih', 'Kevin', 'Fekih.Kevin@parisnanterre.fr', 340072, 2, 1),
(73, 'Feugier', 'Augustin', 'Feugier.Augustin@parisnanterre.fr', 340073, 2, 1),
(74, 'Gac', 'Kevin', 'Gac.Kevin@parisnanterre.fr', 340074, 2, 1),
(75, 'Ganeshn', 'Haresh', 'Ganeshn.Haresh@parisnanterre.fr', 340075, 2, 1),
(76, 'Gavalda', 'Clement', 'Gavalda.Clement@parisnanterre.fr', 340076, 2, 1),
(77, 'Gilbert', 'Cyprien', 'Gilbert.Cyprien@parisnanterre.fr', 340077, 2, 1),
(78, 'Gilbert', 'Cyprien', 'Gilbert.Cyprien@parisnanterre.fr', 340078, 2, 1),
(79, 'Gorlicki', 'Paul', 'Gorlicki.Paul@parisnanterre.fr', 340079, 2, 1),
(80, 'Goyet', 'Camille', 'Goyet.Camille@parisnanterre.fr', 340080, 2, 1),
(81, 'Goyet', 'Camille', 'Goyet.Camille@parisnanterre.fr', 340081, 2, 1),
(82, 'Grandelaude', 'Mathias', 'Grandelaude.Mathias@parisnanterre.fr', 340082, 2, 1),
(83, 'Hadjara', 'Celina', 'Hadjara.Celina@parisnanterre.fr', 340083, 2, 1),
(84, 'Houhou', 'Sara', 'Houhou.Sara@parisnanterre.fr', 340084, 2, 1),
(85, 'Igoudjilene', 'Kenza', 'Igoudjilene.Kenza@parisnanterre.fr', 340085, 2, 1),
(86, 'Jalloh', 'Yusuf', 'Jalloh.Yusuf@parisnanterre.fr', 340086, 2, 1),
(87, 'Jardin', 'Samy', 'Jardin.Samy@parisnanterre.fr', 340087, 2, 1),
(88, 'Jardin', 'Samy', 'Jardin.Samy@parisnanterre.fr', 340088, 2, 1),
(89, 'Jules', 'Julissa', 'Jules.Julissa@parisnanterre.fr', 340089, 2, 1),
(90, 'Kadi', 'Imane', 'Kadi.Imane@parisnanterre.fr', 340090, 2, 1),
(91, 'Kadri', 'Nassim', 'Kadri.Nassim@parisnanterre.fr', 340091, 2, 1),
(92, 'Kende', 'Emmanuela', 'Kende.Emmanuela@parisnanterre.fr', 340092, 2, 1),
(93, 'Kouhafa', 'Latifa', 'Kouhafa.Latifa@parisnanterre.fr', 340093, 2, 1),
(94, 'Lacom', 'Marveen', 'Lacom.Marveen@parisnanterre.fr', 340094, 2, 1),
(95, 'Le', 'Phong sac', 'Le.Phong sac@parisnanterre.fr', 340095, 2, 1),
(96, 'Le lorier', 'Lucas', 'Le lorier.Lucas@parisnanterre.fr', 340096, 2, 1),
(97, 'Legendre', 'Angele', 'Legendre.Angele@parisnanterre.fr', 340097, 2, 1),
(98, 'Lemaza kunday ndjuka', 'Revelle', 'Lemaza kunday ndjuka.Revelle@parisnanterre.fr', 340098, 2, 1),
(99, 'Limbasse', 'Noemie', 'Limbasse.Noemie@parisnanterre.fr', 340099, 2, 1),
(100, 'Limbasse', 'Noemie', 'Limbasse.Noemie@parisnanterre.fr', 340100, 2, 1),
(101, 'Lin', 'Xinlei', 'Lin.Xinlei@parisnanterre.fr', 340101, 2, 1),
(102, 'Louveau', 'Christophe', 'Louveau.Christophe@parisnanterre.fr', 340102, 2, 1),
(103, 'Malinvaud', 'Paul', 'Malinvaud.Paul@parisnanterre.fr', 340103, 2, 1),
(104, 'Martin', 'Vanessa', 'Martin.Vanessa@parisnanterre.fr', 340104, 2, 1),
(105, 'Medaoud', 'Salim', 'Medaoud.Salim@parisnanterre.fr', 340105, 2, 1),
(106, 'Mousset', 'Pierre', 'Mousset.Pierre@parisnanterre.fr', 340106, 2, 1),
(107, 'Mousset', 'Pierre', 'Mousset.Pierre@parisnanterre.fr', 340107, 2, 1),
(108, 'Nanquette', 'Olivier', 'Nanquette.Olivier@parisnanterre.fr', 340108, 2, 1),
(109, 'Nanquette', 'Olivier', 'Nanquette.Olivier@parisnanterre.fr', 340109, 2, 1),
(110, 'Nass', 'Julien', 'Nass.Julien@parisnanterre.fr', 340110, 2, 1),
(111, 'Nass', 'Julien', 'Nass.Julien@parisnanterre.fr', 340111, 2, 1),
(112, 'Noursaid', 'Lahcen', 'Noursaid.Lahcen@parisnanterre.fr', 340112, 2, 1),
(113, 'Oumbe oumbe', 'David', 'Oumbe oumbe.David@parisnanterre.fr', 340113, 2, 1),
(114, 'Pires', 'Dany', 'Pires.Dany@parisnanterre.fr', 340114, 2, 1),
(115, 'Pires', 'Dany', 'Pires.Dany@parisnanterre.fr', 340115, 2, 1),
(116, 'Quenum', 'Heloise', 'Quenum.Heloise@parisnanterre.fr', 340116, 2, 1),
(117, 'Quenum', 'Heloise', 'Quenum.Heloise@parisnanterre.fr', 340117, 2, 1),
(118, 'Rageh', 'Nydel', 'Rageh.Nydel@parisnanterre.fr', 340118, 2, 1),
(119, 'Rageh', 'Nydel', 'Rageh.Nydel@parisnanterre.fr', 340119, 2, 1),
(120, 'Ripert', 'Alexandre', 'Ripert.Alexandre@parisnanterre.fr', 340120, 2, 1),
(121, 'Sadat', 'Halima', 'Sadat.Halima@parisnanterre.fr', 340121, 2, 1),
(122, 'Sardaoui', 'Amine', 'Sardaoui.Amine@parisnanterre.fr', 340122, 2, 1),
(123, 'Sereir', 'Zohra', 'Sereir.Zohra@parisnanterre.fr', 340123, 2, 1),
(124, 'Sharma', 'Aurelien', 'Sharma.Aurelien@parisnanterre.fr', 340124, 2, 1),
(125, 'Sintes', 'Manon', 'Sintes.Manon@parisnanterre.fr', 340125, 2, 1),
(126, 'Smahi', 'Lydia', 'Smahi.Lydia@parisnanterre.fr', 340126, 2, 1),
(127, 'Soleil', 'Emilie', 'Soleil.Emilie@parisnanterre.fr', 340127, 2, 1),
(128, 'Soumare', 'Fatimata', 'Soumare.Fatimata@parisnanterre.fr', 340128, 2, 1),
(129, 'Sun', 'Jialei', 'Sun.Jialei@parisnanterre.fr', 340129, 2, 1),
(130, 'Tahir', 'Mohamed - imrane', 'Tahir.Mohamed - imrane@parisnanterre.fr', 340130, 2, 1),
(131, 'Tissot', 'Guilhem', 'Tissot.Guilhem@parisnanterre.fr', 340131, 2, 1),
(132, 'Tliba', 'Ahmed', 'Tliba.Ahmed@parisnanterre.fr', 340132, 2, 1),
(133, 'LE ROUX', 'Annaig', 'LE ROUX.Annaig@parisnanterre.fr', 34100, 1, 2),
(134, 'Bouchakhchoukha', 'Adel', 'Bouchakhchoukha.Adel@parisnanterre.fr', 34101, 1, 2),
(135, 'BELLINI', 'Beatrice', 'BELLINI.Beatrice@parisnanterre.fr', 34102, 1, 2),
(136, 'Hardouin Ceccantini', 'Cecile', 'Hardouin Ceccantini.Cecile@parisnanterre.fr', 34103, 1, 2),
(137, 'Mesnager', 'Laurent', 'Mesnager.Laurent@parisnanterre.fr', 34104, 1, 2),
(138, 'Le Cun', 'Bertrand', 'Le Cun.Bertrand@parisnanterre.fr', 34105, 1, 2),
(139, 'Hanen', 'Claire', 'Hanen.Claire@parisnanterre.fr', 34106, 1, 2),
(140, 'Guyon', 'Thomas', 'Guyon.Thomas@parisnanterre.fr', 34107, 1, 2),
(141, 'Ben Hamida Mrabet', 'Sana', 'BenHamidaMrabet.Sana@parisnanterre.fr', 34108, 1, 2),
(142, 'Ikken', 'Sonia', 'Ikken.Sonia@parisnanterre.fr', 34109, 1, 2),
(143, 'Gervais', 'Marie-Pierre', 'Gervais.Marie-Pierre@parisnanterre.fr', 34110, 1, 2),
(144, 'Duvernet', 'Laurent', 'Duvernet.Laurent@parisnanterre.fr', 34111, 1, 2),
(145, 'Castillo', 'Alberto', 'Castillo.Alberto@parisnanterre.fr', 34112, 1, 2),
(146, 'Baarir', 'Souheib', 'Baarir.Souheib@parisnanterre.fr', 34113, 1, 2),
(148, 'Azhar-Arnal', 'Juliette', 'Azhar-Arnal.Juliette@parisnanterre.fr', 34115, 1, 2),
(149, 'Rukoz-Castillo', 'Marta', 'Rukoz-Castillo.Marta@parisnanterre.fr', 34116, 1, 2),
(150, 'Legond-Aubry', 'Fabrice', 'Legond-Aubry.Fabrice@parisnanterre.fr', 34117, 1, 2),
(151, 'Quinio', 'Bernard', 'Quinio.Bernard@parisnanterre.fr', 34118, 1, 2),
(152, 'Pradat-Peyre', 'Jean-Francois', 'Pradat-Peyre.Jean-Francois@parisnanterre.fr', 34119, 1, 2),
(154, 'Decallonne', 'Marc', 'Decallonne.Marc@parisnanterre.fr', 34121, 1, 2),
(155, 'Dubois', 'Alois', 'Dubois.Alois@parisnanterre.fr', 34122, 1, 2),
(156, 'Duriez', 'Nathalie', 'Duriez.Nathalie@parisnanterre.fr', 34123, 1, 2),
(157, 'Florea', 'Paul', 'Florea.Paul@parisnanterre.fr', 34124, 1, 2),
(158, 'Isoard', 'Thierry Michel', 'Isoard.Thierry Michel@parisnanterre.fr', 34125, 1, 2),
(159, 'Latif', 'Youssef', 'Latif.Youssef@parisnanterre.fr', 34126, 1, 2),
(160, 'Leloir', 'Nicole', 'Leloir.Nicole@parisnanterre.fr', 34127, 1, 2),
(161, 'Novelli', 'Emmanuelle', 'Novelli.Emmanuelle@parisnanterre.fr', 34128, 1, 2),
(162, 'Pujol', 'Nicolas', 'Pujol.Nicolas@parisnanterre.fr', 34129, 1, 2),
(163, 'Renaud', 'Francis', 'Renaud.Francis@parisnanterre.fr', 34130, 1, 2),
(164, 'Serdoun', 'Samy', 'Serdoun.Samy@parisnanterre.fr', 34131, 1, 2),
(165, 'Starck', 'Monia', 'Starck.Monia@parisnanterre.fr', 34132, 1, 2),
(167, 'Tourvieille', 'Marc', 'Tourvieille.Marc@parisnanterre.fr', 34134, 1, 2),
(168, 'Zamfirou', 'Michel', 'Zamfirou.Michel@parisnanterre.fr', 34135, 1, 2),
(170, 'Menouer', 'Tarek', 'Menouer.Tarek@parisnanterre.fr', 34137, 1, 2),
(171, 'Rodier', 'Lise', 'Rodier.Lise@parisnanterre.fr', 34138, 1, 2),
(172, 'Angarita Arocha', 'Rafael Enrique', 'AngaritaArocha.RafaelEnrique@parisnanterre.fr', 34139, 1, 2),
(173, 'Ait Salaht', 'Farah', 'AitSalaht.Farah@parisnanterre.fr', 34140, 1, 2),
(174, 'Rousseau', 'Pierre', 'Rousseau.Pierre@parisnanterre.fr', 34141, 1, 2),
(175, 'Medjek', 'Sarah', 'Medjek.Sarah@parisnanterre.fr', 34142, 1, 2),
(176, 'Guezou', 'Xavier', 'Guezou.Xavier@parisnanterre.fr', 34143, 1, 2),
(177, 'D_Alfonso', 'Giovanna', 'D_Alfonso.Giovanna@parisnanterre.fr', 34144, 1, 2),
(178, 'KELLOU-MENOUER', 'Kenza', 'KELLOU-MENOUER.Kenza@parisnanterre.fr', 34145, 1, 2),
(179, 'Oulhaci', 'Faiza', 'Oulhaci.Faiza@parisnanterre.fr', 34146, 1, 2),
(180, 'Poizat', 'Pascal', 'Poizat.Pascal@parisnanterre.fr', 34147, 1, 2),
(181, 'SADDEM', 'Rim ', 'SADDEM.Rim @parisnanterre.fr', 34148, 1, 2),
(182, 'BENAMMAR', 'Nassima ', 'BENAMMAR.Nassima @parisnanterre.fr', 34149, 1, 2),
(183, 'ARFAOUI', 'Khadija', 'ARFAOUI.Khadija@parisnanterre.fr', 34150, 1, 2),
(184, 'Walter', 'Jean-Marc', 'Walter.Jean-Marc@parisnanterre.fr', 34151, 1, 2),
(185, 'Bendraou', 'Reda', 'Bendraou.Reda@parisnanterre.fr', 34152, 1, 2),
(186, 'Cojean', 'Bruno', 'Cojean.Bruno@parisnanterre.fr', 34153, 1, 2),
(187, 'Abrantes', 'Pedro', 'Abrantes.Pedro@parisnanterre.fr', 34154, 1, 2),
(188, 'Zouari', 'Belhassen', 'Zouari.Belhassen@parisnanterre.fr', 34155, 1, 2),
(189, 'HOUHOU', 'Sara ', 'HOUHOU.Sara @parisnanterre.fr', 34156, 1, 2),
(190, 'GUEHIS-SAADAOUI', 'Sonia', 'GUEHIS-SAADAOUI.Sonia@parisnanterre.fr', 34157, 1, 2),
(191, 'Hillah', 'Lom Messan', 'Hillah.Lom Messan@parisnanterre.fr', 34158, 1, 2),
(192, 'Hmedeh', 'Zeinab', 'Hmedeh.Zeinab@parisnanterre.fr', 34159, 1, 2),
(193, 'Gherbi', 'Tahar', 'Gherbi.Tahar@parisnanterre.fr', 34160, 1, 2),
(194, 'Alaoui', 'Malek', 'Alaoui.Malek@parisnanterre.fr', 34161, 1, 2),
(195, 'Pierre', 'Laurent', 'Pierre.Laurent@parisnanterre.fr', 34163, 1, 2),
(196, 'Hyon', 'Emmanuel', 'Hyon.Emmanuel@parisnanterre.fr', 34164, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id` int(11) NOT NULL,
  `intitule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id`, `intitule`) VALUES
(1, 'ETU'),
(2, 'PR'),
(3, 'MCF'),
(4, 'VAC_EX'),
(5, 'VAC_INT');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annuaire`
--
ALTER TABLE `annuaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign1` (`groupe`),
  ADD KEY `foreign2` (`personne`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `individu`
--
ALTER TABLE `individu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkey` (`annuaire`),
  ADD KEY `fkey2` (`statut`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annuaire`
--
ALTER TABLE `annuaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `appartient`
--
ALTER TABLE `appartient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `individu`
--
ALTER TABLE `individu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `foreign1` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`id`),
  ADD CONSTRAINT `foreign2` FOREIGN KEY (`personne`) REFERENCES `individu` (`id`);

--
-- Contraintes pour la table `individu`
--
ALTER TABLE `individu`
  ADD CONSTRAINT `fkey` FOREIGN KEY (`annuaire`) REFERENCES `annuaire` (`id`),
  ADD CONSTRAINT `fkey2` FOREIGN KEY (`statut`) REFERENCES `statut` (`id`);
