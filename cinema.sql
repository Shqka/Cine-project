-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 nov. 2019 à 10:17
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `actor`
--

DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgactor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actor`
--

INSERT INTO `actor` (`id`, `name`, `description`, `imgactor`, `age`, `nationality`, `birthday`) VALUES
(10, 'Joaquin Phoenix', 'Joaquin est le seul enfant de la famille Phoenix à ne pas porter un nom en relation avec la nature (comme ses aînés River et Rain, ainsi que sa cadette Summer). Frustré, l\'acteur adopte le prénom de \"Leaf\" (feuille) pour l\'abandonner dans les années 90. Son enfance est nomade, puisque ses parents, cueilleurs de fruits itinérants, parcourent le continent nord-américain dans une caravane et fréquentent la secte des Enfants de Dieu. Encouragé par sa famille, le comédien débute très tôt sa carrière d\'acteur. A peine âgé de 8 ans, Joaquin apparaît dans la série TV Seven Brides for Seven Brothers aux côtés de son frère River et de Richard Dean Anderson, puis deux ans plus tard, dans un épisode de la série Arabesque. Il lui faut toutefois attendre 1987 pour tourner son premier long-métrage, Spacecamp.', 'jphoenix.jpg', 44, 'Américain', '1974-10-28 00:00:00'),
(11, 'Robert De Niro', 'Robert De Niro grandit dans le quartier de Little Italy à New York. Il quitte l\'école à seize ans pour suivre les cours d\'art dramatique du Dramatic Workshop du Luther James Studio et de l\'école de théâtre de Stella Adler. Il suit également l\'enseignement de Lee Strasberg à l\'Actors\' Studio, où il fait la rencontre d\'Harvey Keitel, qu\'il retrouvera à plusieurs reprises au long de sa carrière. Il monte pour la première fois sur scène dans L\'Ours d\'Anton Tchekhov, et fait des débuts discrets au cinéma, en 1965, comme figurant dans le film de Marcel Carné, Trois chambres à Manhattan.', 'rdeniro.jpg', 76, 'Américain', '1943-08-17 00:00:00'),
(12, 'Zazie Beetz', 'Zazie Beetz est née à Berlin en 1991 d\'un père allemand et d\'une mère afro-américaine. Elle se passionne très jeune pour le théâtre, poursuivant des études à la Muscota New School de New York. La jeune femme continue ensuite son cursus à l\'école des arts d\'Harlem puis au lycée artistique LaGuardia Arts.Zazie fait ses premières armes de comédienne dans des courts métrages avant de décrocher ses premiers rôles au cinéma en 2015 dans la comédie Applesauce et le drame James White. C\'est l\'année suivante que l\'actrice se fait connaître du grand public en incarnant Van, la compagne de Donald Glover dans la série à succès Atlanta.', 'zbeetz.jpg', 28, 'Allemande', '1991-06-01 00:00:00'),
(13, 'Frances Conroy', 'Frances Conroy monte sur les planches dès son plus jeune âge et y consacre une majeure partie de sa carrière. Rapidement, John Houseman lui propose un rôle dans Othello et l’encourage à tenter sa chance à Los Angeles où elle intègre la Juilliard School et participe aux ateliers dramatiques, dispensés par les plus grands. C’est d’ailleurs grâce à ces prestations dans des œuvres de la littérature classique que Woody Allen mise sur elle pour jouer une actrice shakespearienne dans Manhattan en 1979.', 'fconroy.jpg', 65, 'Américaine', '1953-11-13 00:00:00'),
(14, 'Sylvester Stallone', 'Installé dans un quartier tranquille de la banlieue de Philadelphie, Sylvester Stallone se passionne pour la culture physique dès ses douze ans. Il s\'intéresse également à la comédie, tenant ses premiers rôles dans la troupe du lycée local, mais décide de privilégier le sport avant d\'être envoyé au Collège Américain de Genève pour y enseigner la gymnastique. A son retour aux Etats-Unis, le jeune homme suit les cours de comédies de l\'Université de Miami et écume les castings. Il finit par devenir en 1970 la vedette d\'un film érotique, L\'Etalon italien, puis figurant dans Bananas (1971) de Woody Allen.', 'stallone.jpg', 73, 'Américain', '1946-07-06 00:00:00'),
(15, 'Yvette Monreal', 'Sa carrière a débuté en 2013, lorsqu\'elle a joué le rôle de Temperance dans deux épisodes de la série Harpies2.\r\n\r\nElle a interprété Reagan dans la série Faking It.', 'ymontreal.jpg', 27, 'Américaine', '1992-07-09 00:00:00'),
(16, 'Adriana Barraza', 'Adriana Barraza, née le 5 mars 19561, est une actrice mexicaine.\r\nLes films les plus célèbres dans lesquels elle a participé sont Amours chiennes et Babel, pour lequel elle a été nommée pour un Oscar du cinéma, un Golden Globe Award, un Broadcast Film Critics Association Award et un Screen Actors Guild Award pour la meilleure interprétation féminine. Elle reçoit un Prix Platino d\'honneur en 2018.', 'abarraza.jpg', 63, 'Mexicaine', '1956-03-05 00:00:00'),
(17, 'Paz Vega', 'C\'est en faisant du théâtre à Séville que Paz Vega décide de devenir actrice. Elle commence à étudier l\'art dramatique avant de partir tenter sa chance à Madrid. Après quelques mois, elle débute à la télévision. Son rôle le plus populaire est celui de Laura, une jeune ingénue dans la série 7 Vidas, qu\'elle interprète de 1997 à 2000.L\'année 1999 marque ses premiers pas dans le septième art. On la voit à l\'affiche de Zapping, Raisons de vivre et surtout Jeu de rôles, gros succès populaire en Espagne dans lequel elle donne la réplique à Eduardo Noriega.', 'pvega.jpg', 43, 'Espagnole', '1976-01-02 00:00:00'),
(18, 'Rami Malek', 'D\'origine égyptienne, Rami Said Malek grandit à Los Angeles avec son frère jumeau, Sami, avant de déménager dans l’Indiana pour suivre des études d’arts à l’université́ d’Evansville. Le comédien en herbe commence sa carrière dans de petits théâtres régionaux avant de retourner à L.A. où il décroche son premier rôle dans la série Gilmore Girls dès sa première audition.', 'rmalek.jpg', 38, 'Américain', '1981-05-12 00:00:00'),
(19, 'Gwilym Lee', 'Gwilym Lee est un acteur britannique né le 24 novembre 1983 à Bristol (Angleterre). Il est principalement connu pour avoir interprété le sergent Nelson dans la série Inspecteur Barnaby et le guitariste du groupe Queen Brian May dans le biopic Bohemian Rhapsody.', 'wlee.jpg', 35, 'Britannique', '1983-11-24 00:00:00'),
(20, 'Lucy Boynton', 'Lucy Diana Boynton, née le 17 janvier 1994, à New York (États-Unis), est une actrice britannico-américaine, principalement connue pour les rôles de Raphina dans Sing Street et Mary Austin dans le biopic Bohemian Rhapsody.', 'lboynton.jpg', 25, 'Britannique', '1994-01-17 00:00:00'),
(21, 'Ben Hardy', 'Ben Jones, plus connu sous son nom de scène Ben Hardy, est un acteur et mannequin britannique, né le 2 janvier 1991 à Bournemouth en Angleterre. Il est connu pour le rôle de Peter Beale dans le soap opéra de la BBC EastEnders et pour avoir interprété le célèbre batteur du groupe Queen Roger Taylor dans le biopic Bohemian Rhapsody.', 'bhardy.jpg', 28, 'Britannique', '1991-01-02 00:00:00'),
(22, 'Dwayne Johnson', 'Descendant d\'une lignée de catcheurs professionnels (son père et son grand-père ont tous deux combattu sur les rings de la World Wrestling Federation), Dwayne Johnson se destine dès son plus jeune âge à une carrière sportive. Remarqué au lycée puis à l\'université pour ses qualités de défenseur au football américain, il rejoint les rangs des Calgary Stampeders dans le championnat canadien de 1995. Mais, victime d\'une blessure, il s\'oriente finalement vers la discipline qui fera sa gloire : le catch.', 'djohnson.jpg', 47, 'Américain', '1972-05-02 00:00:00'),
(23, 'Kevin Hart', 'Kevin Hart est vendeur dans un magasin de chaussures lorsqu’il fait ses débuts sur les planches au Philadelphia comedy club. Voulant s’impliquer pleinement dans sa passion, il démissionne et joue à temps plein dans plusieurs théâtres, comme The Boston Comedy Club, le Caroline\'s, le Stand-Up NY, The Laugh Factory et The Comedy Store à Los Angeles.', 'khart.jpg', 39, 'Américain', '1980-07-06 00:00:00'),
(24, 'Karen Gillan', 'Fille unique, Karen Gillan, Kaz de son surnom, naît en Ecosse où elle développe très tôt un amour du jeu d\'acteur. Elle participe à plusieurs groupes et production de théâtres durant ses études à la Charleston Academy. C\'est à 16 ans qu\'elle décide de définitivement s\'orienter vers une carrière d\'actrice, intégrant le Telford College d\'Édimbourg. Elle travaille sous la direction du metteur en scène renommé Scott Johnston avant d\'entrer à la prestigieuse Italia Conti Academy à Londres.', 'kgillan.jpg', 31, 'Britannique', '1987-10-28 00:00:00'),
(25, 'Jack Black', 'Après des études à l\'Université de Los Angeles, Jack Black intègre la troupe de théâtre du comédien Tim Robbins. C\'est dans Bob Roberts, réalisé par ce dernier, qu\'il fait d\'ailleurs ses débuts sur grand écran en 1992. Il multiplie alors les apparitions dans de grosses productions telles que Demolition man (1993), Waterworld (1995), Disjoncté (1996), Mars attacks ! (1997) ou encore Le Chacal (id.), où il a l\'honneur de se faire dessouder par Bruce Willis.Populaire outre-Atlantique en tant que chanteur du groupe de rock Tenacious D, c\'est tout naturellement que Stephen Frears lui confie le rôle d\'associé disquaire de John Cusack dans High fidelity (2000).', 'jblack.jpg', 50, 'Américain', '1969-08-28 00:00:00'),
(26, 'Angelina Jolie', 'Fille des comédiens Jon Voight et Marcheline Bertrand, Angelina Jolie baigne depuis sa plus tendre enfance dans la comédie. Ainsi, dès l\'âge de sept ans, elle joue aux côtés de ses parents dans le long métrage Lookin\' To Get Out (1982). Après avoir étudié au Lee Strasberg Theatre Institute, auprès du fameux co-fondateur de l\'Actors\' Studio, l\'actrice, désireuse de réussir par son seul talent, abandonne son patronyme afin de revendiquer une personnalité fougueuse qui lui est propre. Entamant au début des années 90 une carrière de mannequin, Angelina Jolie défile régulièrement à Londres, New York et Los Angeles.', 'ajolie.jpg', 44, 'Américaine', '1975-06-04 00:00:00'),
(27, 'Elle Fanning', 'Elle Fanning prend dès son plus jeune âge le même chemin que sa sœur Dakota. Elle a deux ans lorsqu’elle joue dans son premier film, Sam je suis Sam, où elle interprète le rôle de sa sœur lors des scènes où elle apparaît bébé. Elle réitère l’expérience pour la série Disparition, produite par Steven Spielberg, avant d’obtenir son premier rôle bien à elle, une courte apparition cependant, dans Ecole paternelle : elle a alors cinq ans.', 'efanning.jpg', 21, 'Américaine', '1998-04-09 00:00:00'),
(28, 'Sharlto Copley', 'Né en 1973 en Afrique du Sud, Sharlto Copley fait ses premières armes en tant que réalisateur amateur pendant ses années au lycée de Redhill. A l\'époque, le jeune cinéaste en herbe n\'a pas peur de repousser les limites et s\'affiche dans des projets de cinéma et de théâtre audacieux. Un an après avoir quitté le lycée, il co-fonde une société de production médias appelée Channel 69 Studios et rencontre Neill Blomkamp, alors âgé de quatorze ans, qu\'il engage comme graphiste et designer informatique.', 'scopley.jpg', 45, 'Sud-africain', '1973-11-27 00:00:00'),
(29, 'Sam Riley', 'Sam Riley grandit dans la petite ville de Menston en Angleterre. Après le lycée, il essaye de rentrer dans la prestigieuse London Academy of Music and Dramatic Art, mais il est refusé. Le jeune homme tente de nouveau sa chance dans une autre école réputée, la Royal Academy of Dramatic Art, mais là encore sans succès. Déçu mais pas abattu, il continue le métier d\'acteur en enchaînant les petits rôles dans des productions théâtrales et télévisuelles. En 2007, il se fait remarquer en tenant le rôle de Ian Curtis, le chanteur de Joy Division, dans le film Control.', 'sriley.jpg', 39, 'Britannique', '1980-01-08 00:00:00'),
(30, 'M. McConaughey', 'Matthew McConaughey n\'est encore qu\'un étudiant en droit à l\'université du Texas lorsqu\'un ami commun lui présente Richard Linklater, qui décide de lui confier une figuration dans son film Génération Rebelle en 1993. Après le tournage, il reprend consciencieusement ses études avant d\'enchaîner quelques petits rôles, qui lui permettent surtout de faire connaître son physique avantageux.Le grand public va vraiment retenir son nom grâce au film Le Droit de tuer ? de Joel Schumacher en 1996. Avec ce personnage d\'avocat battant, l\'acteur se retrouve de plus en plus en tête d\'affiche, avec les plus grands de la profession.', 'mmcco.jpg', 49, 'Américain', '1969-11-04 00:00:00'),
(31, 'Anne Hathaway', 'Membre du prestigieux Barrow Group new-yorkais, section cinéma, la jeune Anne Hathaway a 17 ans lorsqu\'elle fait ses grands débuts à l\'écran, en 1999, dans la série télévisée La Famille Green. Mais c\'est deux ans plus tard que l\'adolescente se révèle au grand public avec son incarnation de la Princesse Thermopolis dans la production Disney Princesse malgré elle. Ce rôle de figure royale empruntée, gaffeuse et d\'une naïveté confondante remporte un joli succès public qui appellera une suite en 2004, intitulée Un mariage de princesse.', 'ahathaway.jpg', 36, 'Américaine', '1982-11-12 00:00:00'),
(32, 'Michael Caine', 'Issu d\'une famille pauvre du sud de Londres, le petit Maurice Micklewhite se passionne très tôt pour le théâtre. A 18 ans, il est enrôlé dans les forces britanniques et est envoyé en Corée. A son retour, il exerce quelques petits jobs (garçon de course, accessoiriste...) et joue dans des théâtres régionaux. Il participe également à de très nombreuses pièces pour la télévision et adopte rapidement un nom de scène, en référence à son film préféré, Ouragan sur le Caine (1954) de Edward Dmytryk.', 'mcaine.jpg', 86, 'Britannique', '1933-03-14 00:00:00'),
(33, 'John Lithgow', 'Né d\'un père directeur de théâtre, John Lithgow est très vite plongé dans le milieu artistique. Dès l\'âge de six ans, il joue du Shakespeare sur scène, puis s\'intéresse à la peinture durant l\'adolescence. Diplomé de Harvard, il étudie à la London Academy of Music and Dramatic Art, travaille pour la Royal Shakespeare Company et devient au fil des ans l\'un des acteurs les plus respectés de Broadway.Au pic de sa popularité scènique, John Lithgow se lance à l\'assaut du septième art.', 'jlightgow.jpg', 74, 'Américain', '1945-10-19 00:00:00'),
(34, 'Martin Freeman', 'Après des études d\'art dramatique à Londres, Martin Freeman décide de se lancer dans la comédie en intégrant la \"Young Action Theatre Of Teddington\", une troupe de théâtre amateur qui connait un petit succès et qui va surtout permettre au comédien de se faire repérer. A partir de 1997, il enchaîne ainsi les apparitions télévisées dans des séries telles que The Bill (1997) et Casualty (1998). Ses nombreuses prestations à la télévision le font peu à peu connaître du grand public, notamment lorsqu’il décroche, en 2001, le rôle de Tim Canterbury dans la série comique The Office.', 'mfreeman.jpg', 48, 'Britannique', '1971-09-08 00:00:00'),
(35, 'Richard Armitage', 'Richard Armitage est natif de Huncote, un petit village campagnard situé dans le district de Blaby près de Leicester en Angleterre. Le Britannique apprend très jeune la musique et joue de la flûte, du violoncelle et de la guitare. Richard fait ses études au Brockington College à Enderby puis au Pattison College de Coventry ; il y étudie la musique, la danse et le théâtre. Par la suite, le comédien s\'inscrit à la prestigieuse RADA (Royal Academy of Dramatic Art). L\'acteur fait ses débuts au cinéma en 1999 avec un petit rôle dans Mariage à l\'anglaise de David Kane.', 'rarmitage.jpg', 48, 'Britannique', '1971-08-22 00:00:00'),
(36, 'Ian McKellen', 'C\'est dès son plus jeune âge que la famille de Ian McKellen encourage sa passion pour le théâtre. Son père et son grand-père sont prédicateurs et le jeune Ian baigne dans un environnement profondément ancré dans la religion chrétienne. Toutefois, sa famille pratique une religion dénuée de toute considération dogmatique en érigeant la croyance en tant que système de valeurs. C\'est cette tolérance et cette bonté familiale qui permet à Ian de vivre son homosexualité de façon saine sans mentir à ses proches. Le comédien fait ses débuts sur la scène durant ses études à Cambridge.', 'imckellen.jpg', 80, 'Britannique', '1939-05-25 00:00:00'),
(37, 'Orlando Bloom', 'Né à Canterbury, Orlando Bloom rejoint à l\'âge de seize ans le National Youth Theatre de Londres avant de poursuivre ses études à la prestigieuse British American Drama Academy.En 1997, l\'acteur tourne dans son premier film, Wilde, aux côtés de Stephen Fry, de Jude Law et de Vanessa Redgrave. Malgré de nombreuses autres propositions, Bloom décide de parfaire sa formation de comédien à la Guildhall School of Music and Drama de Londres.', 'obloom.jpg', 40, 'Britannique', '1977-01-13 00:00:00'),
(38, 'Bill Skarsgard', 'Bill Skarsgard est né en 1990 en Suède ; il est le fils de My Skarsgard et du célèbre acteur Stellan Skarsgard. Naturellement, le jeune homme s’oriente vers une carrière de comédien, au même titre que ses frères Alexander et Gustaf Skarsgard. Après des petits rôles à la télévision suédoise, Bill s’illustre au cinéma dans Simple Simon d’Andreas Ohman (2010). Dans ce film, l’acteur incarne Simon, un jeune homme souffrant du syndrôme d’Asperger. L’œuvre fait sensation, manquant de peu de représenter la Suède à l’Oscar du meilleur film étranger.', 'bskarsgard.jpg', 29, 'Suédois', '1990-08-09 00:00:00'),
(39, 'James McAvoy', 'Élevé par ses grands-parents maternels avec sa sœur (la chanteuse Joy McAvoy) après le divorce de ses parents, James McAvoy monte sur les planches dès son adolescence, en jouant notamment \"Roméo et Juliette \". En 1995, David Hayman fait appel à l\'adolescent qu\'il a rencontré quelques temps auparavant et lui offre son premier rôle au cinéma. A seize ans, il incarne ainsi un fils de proxénète dans The Near Room, un premier film qui va le pousser à intégrer la Royal Scottish Academy of Music and Drama dont il ressort en 2000.', 'jmcavoy.jpg', 40, 'Britannique', '1979-04-21 00:00:00'),
(40, 'Jessica Chastain', 'Jessica Howard grandit dans le nord de la Californie. A l’âge de 9 ans, elle découvre la danse et rejoint une troupe jusqu\'à ses 13 ans. Par la suite, elle prend le nom de jeune fille de sa mère et se lance dans le théâtre. Après le lycée, elle entre à la Juilliard School, grande école d’art dramatique de New York. Ses premiers pas de comédienne se font donc sur les planches où elle incarne entre autres, Desdemona, dans la pièce de William Shakespeare, \"Othello\".La jeune comédienne en herbe fait également ses classes à la télévision avec de petits rôles dans Urgences, Veronica Mars ou encore New York Cour de Justice.', 'jchastain.jpg', 42, 'Américaine', '1977-03-24 00:00:00'),
(41, 'Bill Hader', 'Fan de science-fiction, d\'horreur et de romans policiers, Bill Hader débute pourtant sa carrière sous le signe de la comédie, avec le Saturday Night Live. S\'inspirant aussi bien des Monty Python et de Mel Brooks que des premiers films de Woody Allen, il ne tarde pas à se faire remarquer, grâce à ses apparitions dans le show, ainsi que dans divers courts métrages.Le grand saut vers l\'écran de la même taille a lieu, pour lui, en 2006, (soit un an après son entrée au Saturday Night Live), lorsqu\'il rejoint le casting de Toi et moi... et Duprée, pour donner la réplique à Owen Wilson.', 'bhader.jpg', 41, 'Américain', '1978-06-07 00:00:00'),
(42, 'Bryan Cranston', 'Né en Californie, Bryan Cranston décide très jeune de suivre l’exemple de son père Joe, lui-même acteur. Après quelques apparitions dans des publicités, il décroche ses premiers rôles à la télévision dans de nombreuses séries cultes des années 80 comme CHiPs, Supercopter ou Arabesque. Il participe à la même époque au soap Amoureusement Vôtre dans lequel il officie durant deux ans. En 1988, il obtient l’un de ses premiers rôles sur grand écran dans le film The Big Turnaround réalisé par son père. Acteur prolifique, Bryan Cranston fait des apparitions régulières à la télévision.', 'bcranston.jpg', 63, 'Américain', '1956-03-07 00:00:00'),
(43, 'Aaron Paul', 'Aron Paul est le dernier des 5 enfants de Darla et Robert Sturtevant, un pasteur. Très tôt, le petit Paul ambitionne de devenir acteur. Pour ce, il commence par faire du théâtre et se rend à Los Angeles une fois sa scolarité terminée, pour y faire carrière. Après quelques apparitions dans des clips et des publicités, il effectue ses premiers pas devant la caméra dans les méconnus téléfilms \"Even the Losers\" (1998) et \"Locust Valley\" (1999). Il enchaine ensuite les petits rôles dans les séries pendant plus de 10 ans.', 'apaul.jpg', 40, 'Américain', '1979-08-27 00:00:00'),
(44, 'Anna Gunn', 'Anna Gunn est une actrice américaine née le 11 août 1968 à Cleveland, dans l\'Ohio.\r\nElle est connue notamment grâce à la série Breaking Bad, dans laquelle elle incarne Skyler White.', 'agunn.jpg', 51, 'Américaine', '1968-08-11 00:00:00'),
(45, 'Dean Norris', 'Comédien à partir de 1985, Dean Norris doit attendre de longues années avant que son talent ne soit reconnu par le plus grand nombre. Au début de sa carrière, il fait ses armes essentiellement dans des téléfilms et quelques séries, mais toujours dans des petits rôles. Sa carrure imposante et son visage dur le conduisent à incarner majoritairement des flics ou des agents des forces spéciales dans des longs-métrages tournés vers l’action. Ainsi, au début des années 90, il figure aux génériques de succès du genre comme L’arme fatale 2, Total Recall, Gremlins 2, Terminator 2 ou La Firme.', 'dnorris.jpg', 56, 'Américain', '1963-04-08 00:00:00'),
(46, 'Álvaro Morte', 'Álvaro Morte est un acteur espagnol, né le 23 février 1975 à Algésiras. Il est principalement connu pour son rôle dans la série télévisée La casa de papel, dans laquelle il incarne El Profesor.', 'amorte.jpg', 44, 'Espagnol', '1975-02-23 00:00:00'),
(47, 'Úrsula Corberó', 'A l\'âge de 6 ans, Úrsula Corberó souhaite déjà être actrice et tourne dans des publicités. Devenue adolescente, elle obtient son premier rôle à la télévision, dans la série catalane Mirall Trencat en 2002. Ses études terminées, la jeune femme est choisie pour incarner Ruth Gomez, une lycéenne souffrant de boulimie dans la célèbre série populaire Physique ou Chimie, diffusée sur NRJ12 et June. Acclamée par la critique pour sa performance exceptionnelle, son interprétation lui a valu pas moins de deux récompenses. Entre-temps, la belle brune espagnole enchaîne les rôles pour le petit écran dans Isabel, Gran Reserva, Anclados ou encore La embajada.', 'ucorbero.jpg', 30, 'Espagnole', '1989-08-11 00:00:00'),
(48, 'Itziar Ituño', 'Itziar Ituño Martínez, née le 18 juin 1974 à Basauri dans le Pays basque, est une actrice et chanteuse espagnole. Elle est surtout connue pour son rôle dans La casa de papel où elle interprète l\'inspectrice Raquel Murillo.', 'iituno.jpg', 45, 'Espagnole', '1974-06-18 00:00:00'),
(49, 'Pedro Alonso', 'Pedro Alonso, né le 21 juin 1971 à Vigo, est un acteur espagnol. Il est notamment connu pour son rôle de Diego dans la série télévisée Grand Hôtel, ainsi que celui de Berlin dans la série télévisée La casa de papel.', 'palonso.jpg', 48, 'Espagnol', '1971-06-21 00:00:00'),
(50, 'Kit Harington', 'Né Christopher Catesby Harington, il est un descendant du roi Charles II.Kit Harington souhaite devenir cameraman, journaliste ou correspondant de guerre avant de se diriger vers la comédie lorsqu’il est encore à l’école. Il interprète Albert Narracott dans la pièce \"War Horse\" (Cheval de guerre), qui remporte deux Oliver Awards permettant à Kit de se faire remarquer. Le jeune comédien joue ensuite dans une nouvelle pièce, \"Posh\" où il incarne Ed Montgomery.', 'kharrington.jpg', 32, 'Britannique', '1986-12-26 00:00:00'),
(51, 'Emilia Clarke', 'Fille d’un ingénieur du son, cette londonienne élevée dans le Berkshire trouve sa vocation pour la comédie à l’âge de 3 ans, lorsqu’elle découvre pour la première fois la comédie musicale Show Boat, sur laquelle son père travaille. Inévitablement, elle débute à 13 ans sa formation d’actrice à l’école St Edward d’Oxford, avant de rejoindre le Drama Centre de Londres.', 'eclarke.jpg', 33, 'Britannique', '1986-10-23 00:00:00'),
(52, 'Lena Headey', 'D\'origine britannique, Lena Headey est diplômée de l\'English Rose School of Acting. Elle débute sa carrière en 1992 dans le film Waterland de Stephen Gyllenhaal, où elle incarne l\'épouse de Jeremy Irons. Deux ans plus tard, elle tient le rôle de Katherine dans l\'adaptation cinématographique du Le Livre de la jungle. La même année, l\'actrice partage l\'affiche avec Anthony Hopkins et Emma Thompson dans le drame de James Ivory, Les Vestiges du jour.', 'lheadey.jpg', 46, 'Britannique', '1973-10-03 00:00:00'),
(53, 'Peter Dinklage', 'Né avec la maladie d’Achondroplasie donnant lieu à un nanisme, Peter Dinklage fait de son handicap son plus bel atout. Après avoir suivi des cours de théâtre dans une université du New Jersey, l’état dans lequel il a grandi, il se fait remarquer au cinéma dès sa première apparition en 1995 dans Ca tourne à Manhattan. Il partage l’affiche avec Steve Buscemi, Catherine Keener et Dermot Mulroney, et incarne dans ce film dans le film un acteur qui regrette amèrement qu’on ne lui offre que des rôles caricaturaux, ne parvenant pas à être autre chose que le \"nain de service\".', 'pdinklage.jpg', 50, 'Américain', '1969-06-11 00:00:00'),
(54, 'Cillian Murphy', 'C\'est au théâtre que l\'Irlandais Cillian Murphy se fait d\'abord connaître, notamment avec une prestation dans la pièce Disco Pigs, mais également dans Beaucoup de bruit pour rien et The Shape of things, mise en scène par Neil LaBute.Après quelques téléfilms et longs métrages confidentiels, Cillian Murphy commence à faire parler de lui en Angleterre avec un rôle dans La Vie à la folie puis, un an plus tard, en étant à l\'affiche de Disco pigs, adaptation cinématographique de la pièce qu\'il joua quelques années plus tôt.', 'cmurphy.jpg', 43, 'Irlandais', '1976-05-25 00:00:00'),
(55, 'Helen McCrory', 'Diplômée de l’Université des Arts de Londres, Helen McCrory reçoit un accueil chaleureux pour sa prestation d’Elena dans l’adaptation de L’Oncle Vania de Tchekhov. Au-delà de sa carrière théâtrale, la comédienne est très active dans le milieu du 7ème Art. En 1994, Entretien avec un vampire la voit incarner une prostituée. Sur le petit écran, dans des registres différents, elle performe aussi bien en juré dans The Jury qu’en comtesse dans la fiction historique sur Charles II.', 'hmccrory.jpg', 51, 'Britannique', '1968-08-17 00:00:00'),
(56, 'Paul Anderson', 'Les séries britanniques policières sollicitent Paul Anderson respectivement pour l’Inspecteur Lewis puis Barnaby. Son visage de crapule, voire de soldat endurci, lui entrouvre les portes de ce type de rôles. Guy Ritchie le met en avant dans le deuxième volet de Sherlock Holmes. Le comédien est un ancien sniper, homme de main de Moriarty. La mini-série Le Serment le voit de nouveau en soldat. Il incarne un sergent dans cette épopée d’une jeune fille qui retrace l’incroyable histoire de son grand-père. Pour l’univers musclé de The Sweeney, il se transforme en dangereux criminel, l’ennemi de toujours de Ray Winstone.', 'panderson.jpg', 41, 'Britannique', '1978-02-12 00:00:00'),
(57, 'Sophie Rundle', 'Après l’obtention de son diplôme à la Royal Academy of Dramatic Art de Londres, Sophie Rundle participe à la fresque romanesque De Grandes Espérances d’un certain Mike Newell. La fiction télévisuelle Enquêtes codées la place ensuite sur le devant de la scène. Elle y est Lucy, l’une des quatre femmes qui ont activement participé à la victoire durant la Seconde Guerre mondiale grâce à leurs renseignements. Le conflit terminé, quelques années plus tard, des meurtres non résolus les remettent en scène. Entre temps, ses apparitions dans la sitcom Episodes démontrent ses qualités comiques.', 'srundle.jpg', 31, 'Britannique', '1988-04-21 00:00:00'),
(59, 'Manu Bennett', 'Originaire de Rotorua dans l’île du nord de la Nouvelle-Zélande, Manu Bennett a passé la majeure partie de son adolescence en Australie, où il a pratiqué la danse, la musique, ainsi que l’art dramatique à l’université. Très vite, il se découvre une passion pour la comédie et part suivre des cours au Lee Strasberg Theatre Institute de Los Angeles. Il fait ensuite ses débuts devant la caméra en 1993 dans le soap Paradise Beach, qui lui permet de se faire remarquer et de multiplier les rôles dans des productions australiennes telles que Blue Heelers, Brigade des mers, ou encore All Saints.', 'mbennet.jpg', 50, 'Néo-zélandais', '1969-10-10 00:00:00'),
(60, 'Liam McIntyre', 'Né à Adélaïde en Australie, il commence sa carrière par de nombreux rôles dans des court-métrages, comme \"Anniversary\" (2009), de Cassie Dart et \"Radev\" (2010), de Matthew Cleaves. Il est par la suite reconnu en Australie grâce à ses diverses incarnations dans des séries locales, puis trouve campe le rôle-titre dans Spartacus, qui le fait connaitre d\'un public plus large. Il n\'avait pourtant récupéré cette place uniquement suite au désistement d\'Andy Whitfield, malade au moment du tournage de la première saison. La production décida, après avoir longuement débattue, d\'engager McIntyre et de le garder pour la saison en cours.', 'lmcinty.jpg', 37, 'Australien', '1982-02-08 00:00:00'),
(61, 'Dustin Clare', 'Originaire de Nouvelle-Galles du Sud, Dustin Clare grandit à Ballina avant d\'étudier l\'art dramatique à la Western Australian Academy of Performing Arts de Perth, où il obtient son diplôme en 2004.\r\n\r\nIl obtient son premier rôle important en 2006 en intégrant pendant deux saisons la distribution principale de la série télévisée australienne McLeod\'s Daughters et remporte pour son rôle le Logie Award de la révélation masculine en 20072. Il joue en 2009 un tueur à gages dans la série Underbelly et interprète un des personnages principaux de la série Satisfaction lors des saisons 2 et 3 ; pour ce rôle, il est nommé une seconde fois au Logie Award, cette fois dans la catégorie du meilleur acteur.', 'dclare.jpg', 37, 'Australien', '1982-01-02 00:00:00'),
(62, 'Cynthia Addai', 'Cynthia Addai-Robinson est une actrice américano-britannique née le 12 janvier 1985 à Londres.\r\nElle est connue pour le rôle d\'Amanda Waller dans Arrow et celui de Naevia dans Spartacus.', 'caddai.jpg', 34, 'Américaine', '1985-01-12 00:00:00'),
(63, 'Travis Fimmel', 'Avant de faire ses preuves en tant qu’acteur dans diverses productions cinématographiques et télévisuelles, l’australien Travis Fimmel connaît plusieurs carrières. Il manque d’abord de peu de devenir footballeur professionnel dans l’équipe de son pays. Une blessure à la jambe l’empêche de débuter la saison. Il décide alors de se tourner vers l’architecture en intégrant l’université de Melbourne mais lorsqu’une agence de mannequin le repère, il est séduit par l’idée de voyager à travers le monde et abandonne ses études. Le jeune homme débarque fauché à Los Angeles en 2002 et réussit l’exploit de signer un contrat à 6 chiffres avec la célèbre marque Calvin Klein.', 'tfimmel.jpg', 40, 'Australien', '1979-07-15 00:00:00'),
(64, 'Alexander Ludwig', 'Originaire de Vancouver au Canada, d’une mère comédienne et d’un père homme d’affaire, l’acteur a commencé par faire un caméo à l’âge de neuf ans dans une publicité pour l’attraction \"The Wizarding World of Harry Potter\" du parc à thème Universal Orlando Resort en Floride. Malgré les domaines d’activité qu’exercent ses parents, le jeune garçon a dû convaincre ces derniers de le laisser poursuivre une carrière dans le cinéma. Il obtient alors très vite en 2001 son vrai premier rôle dans le téléfilm familial Air Bud 3, suite d’une longue saga mettant en scène les aventures d’un golden retriever. Cette première expérience de tournage lui permet de continuer à jouer dans de petites productions pour enfants, et notamment dans un court-métrage d’animation dans lequel il prête sa voix au personnage principal.', 'aludwig.jpg', 27, 'Canadien', '1992-05-07 00:00:00'),
(65, 'Katheryn Winnick', 'Originaire du Canada, Katheryn Winnick débute sa carrière en 1999 dans un épisode de Psi Factor, chroniques du paranormal qui lui permet de se faire remarquer à la télévision. Elle participe alors à Student Bodies et multiplie les rôles dans des téléfilms, et surtout dans les séries à succès New York Section criminelle, Oz, Les experts, Missing: disparus sans laisser de trace, Esprits Criminels ou encore Dr House qui lui assurent une certaine reconnaissance auprès du public américain.', 'kwinnick.jpg', 41, 'Canadienne', '1977-12-17 00:00:00'),
(66, 'Gustaf Skarsgård', 'Fils du géant suédois Stellan Skarsgård, Gustaf Skarsgård est issu d’un clan de comédiens. Toutefois, l’acteur arrive à se démarquer des membres de sa famille. Très jeune, il effectue sa première apparition dans Nom de Code: Coq Rouge face à son paternel. Sa confrontation avec Andreas Wilson dans le poignant et terrifique Ondskan reste en mémoire. Il campe un tyran qui s’enorgueillit de l’humiliation d’autrui. En couple avec un homme dans Patrik 1,5, Gustaf Skarsgård montre toute la variété de son jeu.', 'gskars.jpg', 38, 'Suédois', '1980-11-12 00:00:00'),
(67, 'Andrew Lincoln', 'Fils d’un père ingénieur et d’une mère infirmière, Andrew Lincoln grandit en Angleterre. Sa scolarité terminée, le jeune homme ambitionne de devenir acteur. C’est dans cette optique qu’il s’inscrit à la célèbre \"Royal Academy of Dramatic Art\", une université prestigieuse située à Londres.Andrew Lincoln trouve son premier rôle important dans la série britannique La Vie en face (1996-1997), qui suit les débuts dans le monde des affaires de quatre jeunes diplômés.', 'alincoln.jpg', 46, 'Britannique', '1973-09-14 00:00:00'),
(68, 'Norman Reedus', 'Né à Hollywood, Norman Reedus affiche un parcours professionnel atypique. Artiste accompli, il s’essaie à la peinture, la photographie, mais également à la sculpture et la réalisation. Tout lui réussit, jusqu’à devenir le modèle de la marque Prada. Pourtant, le jeune homme est encore plein de ressources et cherche à s’imposer dans le monde du 7ème Art.', 'nreedus.jpg', 50, 'Américain', '1969-01-06 00:00:00'),
(69, 'Melissa McBride', 'Originaire du Kentucky aux États-Unis, Melissa Suzanne McBride effectue sa toute première apparition sur le petit écran à l’âge de 28 ans, cumulant par la suite plusieurs rôles anecdotiques dans des séries télévisées comme American Gothic, Walker Texas Ranger ou encore Dawson. À ses débuts, elle contribue à un certain nombre de téléfilms parmi lesquels se trouvent Au cœur du scandale où elle rencontre le désormais célèbre Patrick Dempsey.', 'mmcbride.jpg', 54, 'Américaine', '1965-05-23 00:00:00'),
(70, 'Steven Yeun', 'Né à Seoul, Steven Yeun immigre avec sa famille au Canada puis aux États-Unis où très vite il prend des cours de théâtre. Le jeune comédien fait ses débuts au cinéma dans My Name is Jerry en 2009 puis enchaîne les apparitions dans des courts métrages et des séries, dont The Big Bang Theory et Los Angeles Police Judiciaire. Il ne lui faut pas très longtemps pour se faire connaître du grand public : dès 2010, il décroche le rôle du courageux, fidèle et intelligent Glenn Rhee dans The Walking Dead. Cette série de zombies au succès phénoménal occupe la majeure partie de son emploi du temps durant six ans.', 'syeun.jpg', 35, 'Sud-coréen', '1983-12-21 00:00:00'),
(71, 'Frankie Muniz', 'Frankie Muniz est encore un enfant lorsqu\'il débute devant les caméras, influencé par sa soeur Cristina qui est actrice. Après un début de carrière qui le voit évoluer dans des téléfilms et des apparitions dans des séries telles que Spin City et Sabrina, l\'apprentie sorcière, le jeune acteur trouve son premier grand rôle en 2000 dans Mon chien Skip de Jay Russell où il donne la réplique à Diane Lane et Kevin Bacon. Mais il accède véritablement à la notoriété la même année en décrochant le rôle principal de la série Malcolm dans laquelle il incarne un adolescent surdoué évoluant au sein d\'une famille déjantée.', 'fmuniz.jpg', 33, 'Américain', '1985-12-05 00:00:00'),
(72, 'Jane Kaczmarek', 'Jane Frances Kaczmarek est une actrice américaine d\'origine polonaise, née le 21 décembre 1955 à Milwaukee, Wisconsin, États-Unis. Elle est principalement connue pour avoir joué Lois, la mère de Malcolm dans la série du même nom.', 'jkaczmarek.jpg', 63, 'Américaine', '1955-12-21 00:00:00'),
(73, 'Christopher Masterson', 'Christopher Kennedy Masterson, dit « Chris », est un acteur et producteur américain né le 22 janvier 1980 à Long Island.\r\nIl est surtout célèbre pour son rôle dans la série Malcolm, où il incarne Francis, le frère aîné de la famille.', 'cmasterson.jpg', 39, 'Américain', '1980-01-22 00:00:00'),
(74, 'Millie Bobby Brown', 'Millie Brown est née en 2004 en Espagne de parents britanniques. Elle déménage en 2011 à Orlando en Floride avec sa famille.C\'est là que la jeune Millie se fait repérer en 2013 par un dénicheur de talents hollywoodien qui arrive à convaincre les parents de la fillette qu\'elle possède des instincts innés de comédienne. Ni une ni deux, la petite famille fait ses valises direction Los Angeles où Millie ne tarde pas à engager un agent. En moins de trois mois de présence dans la ville californienne, l\'actrice obtient le rôle de la jeune Alice dans la série Once Upon a Time in Wonderland.', 'mbrown.jpg', 15, 'Britannique', '2004-02-19 00:00:00'),
(75, 'Finn Wolfhard', 'Finn Wolfhard est né le 23 décembre 2002, à Vancouver, au Canada, dans une famille d\'origine française, allemande et juive. C\'est devant les Spider-Man de Sam Raimi que débute, très tôt, sa passion pour le métier d\'acteur. Ses premiers pas à la télévision ont lieu en 2014, dans un épisode de la saison 2 de The 100, suivi, l\'année d\'après, d\'une apparition dans la saison 11 de Supernatural.', 'fwolfhard.jpg', 16, 'Canadien', '2002-12-23 00:00:00'),
(76, 'David Harbour', 'Après avoir fait ses débuts à Broadway en 1999 dans la reprise du Faiseur de pluie, David Harbour obtient des petits rôles sur petit mais surtout sur grand écran. Il est ainsi un travailleur sur les docs dans La Guerre des mondes, un homosexuel marié discutant avec Jake Gyllenhaal dans Le Secret de Brokeback Mountain ou encore Dracula dans Awake. Second rôle de plus en plus demandé, l\'acteur apparaît aussi dans Quantum of Solace, Les Noces rebelles, Jeux de pouvoir, The Green Hornet et W.E..', 'dharbour.jpg', 44, 'Américain', '1975-04-10 00:00:00'),
(77, 'Gaten Matarazzo', 'Natif du New Jersey, Gaten Matarazzo démarre très jeune sa carrière sur les planches, dans les comédies musicales Priscilla, Queen of the Desert et Les Misérables. Il fait ensuite ses débuts sur le petit écran en 2015, dans un épisode de The Blacklist, mais c\'est la série de Netflix, Stranger Things, avec Winona Ryder, qui le fait connaître. Grâce à son humour et sa fraîcheur, il conquiert le cœur de millions de fans à travers le monde dans la peau de Dustin Henderson.', 'gmatarazzo.jpg', 17, 'Américain', '2002-09-08 00:00:00'),
(78, 'Christian Slater', 'Fils de la célèbre directrice de casting Mary Jo Slater et du comédien de théâtre Michael Hawkins, Christian Slater passe toute son enfance dans le milieu du spectacle et, dès l\'âge de 7 ans, tient son premier rôle, dans la série télévisée On ne vit qu\'une fois. A 9 ans, il part en tournée avec The Music Man, puis joue à Broadway dans Macbeth, David Copperfield et Merlin l\'enchanteur. Toujours au théâtre, il se produit plus tard dans la reprise de Landscape of the Body, de John Guare, ainsi que dans The Christmas Carol.On le découvre à l\'écran alors qu\'il a 15 ans, dans le film de Jean-Jacques Annaud, Le Nom de la rose (1986), où il incarne un jeune moine au service de Sean Connery.', 'cslater.jpg', 50, 'Américain', '1969-08-18 00:00:00'),
(79, 'Portia Doubleday', 'Portia Ann Doubleday évolue dès son plus jeune âge dans un environnement artistique entourée par des parents acteurs professionnels, Christina et Frank. C\'est donc sans surprise qu\'avec sa grande soeur Kaitlin, elles choisissent de poursuivre une carrière dans le milieu. A l\'âge de 8 ans, le tournage d\'une publicité lui donne l\'occasion d’apparaître pour la première fois à la télévision américaine. Peu après, en 1997, elle obtient un rôle mineur dans le long-métrage La Légende de la Momie d\'Universal.', 'pdoubleday.jpg', 31, 'Américaine', '1988-06-22 00:00:00'),
(80, 'Carly Chaikin', 'Originaire de Santa Monica sur la côte californienne, Carly Hannah Chaikin s’éloigne dès son plus jeune âge des carrières de son père cardiologue et sa mère physiothérapeute pour se découvrir une vocation d’actrice. Après le lycée, elle parvient à décrocher plusieurs opportunités, à l’instar d’un rôle de second plan dans le film dramatique La dernière chanson, interprétant la junkie Blaze qui a une mauvaise influence sur le personnage central de Miley Cyrus.', 'cchaikin.jpg', 29, 'Américaine', '1990-03-26 00:00:00'),
(81, 'Louis Hofmann', 'Louis Hofmann est un acteur allemand, né le 3 juin 1997 à Bergisch Gladbach. Il est connu pour avoir tenu le rôle-titre dans le film allemand Tom Sawyer. En 2017, il incarne Jonas Kahnwald, le personnage principal de la série Dark diffusée sur Netflix.', 'lhofmann.jpg', 22, 'Allemand', '1997-06-03 00:00:00'),
(82, 'Mark Waschke', 'Mark Waschke, né le 10 mars 1972 à Wattenscheid, est un acteur allemand. Il a joué dans la série Dark sur Netflix.', 'mwaschke.jpg', 47, 'Allemand', '1972-03-10 00:00:00'),
(83, 'Lisa Vicari', 'Lisa Vicari, née à Munich le 11 février 1997, est une actrice allemande. Elle a joué dans la série Dark sur Netflix.', 'lvicari.jpg', 22, 'Allemande', '1997-02-11 00:00:00'),
(84, 'Andreas Pietschmann', 'Andreas Pietschmann (né le 22 mars 1969 (50 ans) à Wurtzbourg) est un acteur allemand. Il  a joué dans la série Dark sur Netflix.', 'apietsch.jpg', 50, 'Allemand', '1969-03-22 00:00:00'),
(85, 'Taylor Schilling', 'Taylor Schilling est née d\'un père procureur et d\'une mère travaillant au MIT, l\'institut de technologie du Massachusetts. Diplômée au lycée de Wayland, elle étudie à l\'Université Fordham sur le campus de Manhattan où elle continue le théâtre avant d\'avoir sa licence d\'Art en 2006. La jeune femme entame ensuite une licence à l\'Université de New York dans le but de devenir actrice, mais décide de stopper ses études après sa deuxième année pour commencer à auditionner.', 'tschilling.jpg', 35, 'Américaine', '1984-07-27 00:00:00'),
(86, 'Natasha Lyonne', 'Natasha Lyonne débute très tôt dans le milieu. Lorsqu’elle suit ses parents en Israël, ces derniers lui décrochent à six ans un contrat dans un petit film pour enfants et l’inscrivent dans une agence de mannequins. A son retour aux Etats-Unis, la jeune comédienne poursuit sur cette lancée et apparaît dans divers films et séries (Pee-wee’s Playhouse, la Brulure, Dennis la malice…). A 16 ans, elle parvient à décrocher un rôle important dans le Woody Allen Tout le monde dit I love you.', 'nlyonne.jpg', 40, 'Américaine', '1979-04-04 00:00:00'),
(87, 'Uzo Aduba', 'Uzoamaka Nwaneka Aduba dite Uzo Aduba, née le 10 février 1981 à Boston dans le Massachusetts, est une actrice de télévision et de cinéma américaine.', 'uaduba.jpg', 38, 'Américaine', '1981-02-10 00:00:00'),
(88, 'Danielle Brooks', 'Danielle Brooks, née le 17 septembre 1989 à Augusta en Géorgie, est une actrice de télévision et de cinéma américaine. Elle se fait connaitre du grand public pour son rôle de Tasha Jefferson dite Taystee dans la série Orange Is the New Black.', 'dbrooks.jpg', 30, 'Américaine', '1989-06-17 00:00:00'),
(89, 'Wentworth Miller', 'Si Wentworth Miller naît en Grande-Bretagne, c\'est de l\'autre côté de l\'Atlantique qu\'il grandit, dans le quartier new-yorkais de Brooklyn. Diplômé en littérature de la prestigieuse Université de Princeton, il s\'installe à Hollywood en 1995, où il fait ses débuts devant la caméra dans un épisode de la saison 2 de Buffy contre les vampires en 1998.Après des apparitions dans Sarah, Popular, et Urgences, l\'acteur décroche en 2002 son premier grand rôle dans la mini-série fantastique Dinotopia, dans laquelle il est David Scott, un jeune homme introverti qui, après un crash d’avion, se retrouve, avec son frère, sur une île peuplée de dinosaures.', 'wmiller.jpg', 47, 'Américain', '1972-06-02 00:00:00'),
(90, 'Dominic Purcell', 'Né en Grande-Bretagne, Dominic Purcell grandit en Australie et suit une formation d’acteur au sein de la Western Australian Academy of Performing Arts de Perth, où il côtoie notamment Hugh Jackman. L’aspirant comédien fait ses débuts face à la caméra en 1997 grâce à un rôle dans la série australienne Raw FM. Après quelques téléfilms et une participation au drama à succès Hartley, coeurs à vif, il s\'envole vers les États-Unis en 2000 et tourne sous la direction de John Woo dans Mission : Impossible II, avec Tom Cruise.', 'dpurcell.jpg', 49, 'Britannique', '1970-02-17 00:00:00'),
(91, 'Sarah Wayne', 'Sarah Wayne Callies grandit sur l\'île d’Hawaï, mais revient sur le continent pour suivre des études supérieures. Diplômée en études féministes et indigènes en 1999, elle poursuit sa passion de la comédie au \"Conservatoire National d\'art dramatique de Denver\" d\'où elle sort avec un Master en 2002. Voulant se lancer dans une carrière d’acteur, la jeune femme décroche son premier rôle l\'année suivante dans la série Queens Supreme, mais malheureusement celle-ci connaît une fin prématurée faute d’audiences.', 'swayne.jpg', 42, 'Américaine', '1977-06-01 00:00:00'),
(92, 'Paul Adelstein', 'Paul Charles Adelstein est un acteur américain, né le 29 avril 1969 à Chicago. Il est connu pour jouer le rôle de l\'agent Paul Kellerman dans Prison Break et aussi en tant que Cooper Freedman dans la série Private Practice.', 'padelstein.jpg', 50, 'Américain', '1969-04-29 00:00:00'),
(93, 'Stephen Amell', 'Stephen Amell rêve de devenir acteur dès son adolescence. Grâce à son physique d’Apollon, les chargés de casting ne tardent pas à le repérer, ce qui lui permet de décrocher son premier rôle à la télévision à l’âge de 23 ans dans Queer As Folk. Il y incarne le temps de deux épisodes un professeur de fitness, gay, qui ne laisse pas indifférent l’un des héros.', 'samell.jpg', 38, 'Canadien', '1981-05-08 00:00:00'),
(94, 'David Ramsey', 'Fils de Jeraldine et Nathaniel Ramsey, David grandit dans le Michigan, au sein d‘une famille composée de six enfants. Passionné par les arts martiaux, le jeune homme maîtrise la boxe, le kickboxing ou encore le tae kwon do. Contre toute attente, c’est vers une carrière d’acteur qu’il souhaite s’orienter.', 'dramsey.jpg', 47, 'Américain', '1971-10-17 00:00:00'),
(95, 'Juliana Harkavy', 'Juliana Harkavy débute ca carrière dans une publicité pour la série Goosebumps à l’âge de 10 ans, en 1995. La même année, elle fait sa première apparition au cinéma en tant que figurante dans La Petite princesse. Dix ans plus tard, elle retrouve le chemin des plateaux sur des courts métrages, dont Love is Blind, dont elle signe le scénario.Sa première apparition à la télé se fait dans un épisode de The Glades en 2010. L\'année suivante, Juliana Harkavy commence à se faire connaitre du grand public grâce à L\'Incroyable histoire de Winter le dauphin.', 'jharkavy.jpg', 34, 'Américaine', '1985-01-01 00:00:00'),
(96, 'Eliza Taylor', 'L’australienne Eliza Jane Taylor-Cotter grandit dans un milieu artistique, entre une mère écrivain et un beau-père comédien. A l’âge de 14 ans seulement, elle apparaît pour la première fois sur les écrans dans Pirate Island, une série familiale dans laquelle elle tient l’un des premiers rôles. La même année, elle tourne dans deux autres programmes, Pyjama Party et dans le soap Les Voisins, grâce auxquels elle se fait connaître dans son pays natal.', 'etaylor.jpg', 30, 'Australienne', '1989-10-24 00:00:00'),
(97, 'Paige Turco', 'BIOGRAPHIE\r\nElevée dans le Massachusetts, Paige Turco rêve de devenir danseuse étoile. Une blessure l’oblige à abandonner le sport à l’âge de 14 ans pour étudier la comédie. Fraîchement diplômée de l’université du Connecticut, elle débute sa carrière dans le feuilleton quotidien Haine et Passion, dans lequel elle joue Dinah Morgan Marler, une adolescente troublée par son adoption. L’année suivante, elle est transférée dans le soap d’ABC, La Force du destin.', 'pturco.jpg', 54, 'Américaine', '1965-05-17 00:00:00'),
(98, 'Bob Morley', 'Après la mort de son père, Robert Morley est considéré comme un enfant dissipé. Les études n’étant pas faites pour lui, il abandonne son diplôme d’ingénieur, pour se lancer dans l’étude des arts à Melbourne. Là-bas, il engage un agent pour l’aider à démarrer une carrière d’acteur. C’est en 2006 qu’il se fait repérer pour la première fois par le public australien, grâce au soap Summer Bay. Dans le rôle du coureur de jupons Drew Curtis, il multiplie les conquêtes amoureuses.', 'bmorley.jpg', 34, 'Australien', '1984-12-20 00:00:00'),
(99, 'Marie Avgeropoulos', 'Marie Avgeropoulos se fait repérer par l’industrie du divertissement grâce à son passe-temps préféré, la batterie. Au cours d’un casting, la musicienne attire tout de suite l’attention du réalisateur, Chris Columbus (Mme Doubtfire et Maman j’ai raté l’avion) qui cherche un batteur pour son prochain film, I Love You Beth Cooper. Un an plus tard, la jeune canadienne apparaît dans un long-métrage du même cinéaste, Percy Jackson : Le voleur de Foudre.', 'mavgero.jpg', 33, 'Canadienne', '1986-06-17 00:00:00'),
(100, 'Jason Statham', 'Tour à tour plongeur olympique, mannequin et vendeur de bijoux au noir, Jason Statham est repéré, au détour d\'une promenade à Londres, par le réalisateur Guy Ritchie qui l\'engage pour son premier film, Arnaques, crimes et botanique, en 1998. Les deux hommes, entre-temps devenus amis, se retrouveront sur le tournage de deux autres polars tout aussi tortueux et musclés : Snatch en 2000 et Revolver en 2004.', 'statham.jpg', 52, 'Britannique', '1967-07-26 00:00:00'),
(101, 'Jet Li', 'Dès son plus jeune âge, Jet Li s\'adonne à la pratique des arts martiaux. Après avoir remporté à plusieurs reprises le titre de champion du monde de Wu Shu, il s\'éloigne des tatamis pour s\'imposer au cinéma.C\'est en 1979, alors qu\'il n\'a que 17 ans, qu\'il fait ses débuts dans Le Temple de Shaolin.', 'jli.jpg', 56, 'Chinois', '1963-04-26 00:00:00');
INSERT INTO `actor` (`id`, `name`, `description`, `imgactor`, `age`, `nationality`, `birthday`) VALUES
(102, 'Dolph Lundgren', 'Dolph Lundgren naît à Stockholm, en Suède, en 1957. Diplômé en chimie, étudiant du M.I.T et champion d\'Europe de karaté en 1980, il mène une solide carrière dans le sport et la recherche lorsqu\'il arrive à New York en 1984. Il se lance dans le mannequinat puis dans la protection rapprochée avant de trouver ce qui lui tient le plus à cœur : jouer la comédie.', 'lundgren.jpg', 61, 'Suédois', '1957-11-03 00:00:00'),
(103, 'Leonardo DiCaprio', 'Né d\'un père italien et d\'une mère allemande favorisant au mieux ses aptitudes artistiques, Leonardo DiCaprio suit des cours de comédie dès l\'école primaire. Auditionnant pour la première fois en 1988, il commence par tourner des spots publicitaires, puis obtient très vite quelques petits rôles à la télévision (Les nouvelles aventures de Lassie, Santa Barbara), avant de se faire remarquer dans la série Quoi de neuf, docteur ? en 1991.', 'dicaprio.jpg', 42, 'Américain', '1974-11-11 00:00:00'),
(104, 'Tom Hardy', 'Après un passage au Drama Centre de Londres, où il se familiarise avec le métier d\'acteur, Tom Hardy est vite plongé dans des projets d\'envergure : en 2001, il participe à deux épisodes de la mini-série Frères d\'armes produite par Steven Spielberg et figure au casting de La Chute du faucon noir de Ridley Scott.', 'hardy.jpg', 42, 'Britannique', '1977-09-15 00:00:00'),
(105, 'Domhnall Gleeson', 'Diplômé dans les arts des médias au Dublin Institute of Technology, Domhnall Gleeson suit tout naturellement les traces de son père, l\'acteur Brendan Gleeson, en lui donnant la réplique dans la comédie irlandaise Studs en 2006.S\'ensuivent quelques films alimentaires et une légère traversée du désert. Mais si sa silhouette longiligne et sa chevelure rousse s\'absentent quelques temps des écrans, c\'est pour mieux revenir en 2010.', 'gleeson.jpg', 36, 'Irlandais', '1983-05-12 00:00:00'),
(106, 'Will Poulter', 'Fils d’une infirmière et d’un professeur de cardiologie, William Jack Poulter, dit Will Poulter, naît en 1993 à Londres. Dès son plus âge, le futur acteur ne se voit pas travailler dans le milieu médical comme ses géniteurs, il préfère embrasser une carrière dans le cinéma.', 'poulter.jpg', 26, 'Britannique', '1993-01-28 00:00:00'),
(107, 'Michael B. Jordan', 'Michael B. Jordan commence sa carrière d\'acteur à l\'âge de 12 ans en apparaissant dans un épisode des séries télévisées Cosby et Les Soprano en 1999. Mais ce n\'est qu\'en 2002 qu\'il décroche le rôle qui change sa carrière, celui de Wallace, un jeune dealer dans la première saison de la série multi-récompensée et plébiscitée par la critique : Sur Ecoute (The Wire). Entre 2003 et 2006, le comédien se retrouve dans le soap-opéra La Force du Destin alors que la série se rapproche de son annulation au bout d\'une quarantaine d\'années de bons et loyaux services.', 'mjordan.jpg', 32, 'Américain', '1987-02-09 00:00:00'),
(108, 'Tessa Thompson', 'Tessa Thompson est née en 1983 d’un père d’origine afro-panaméenne (le chanteur/compositeur Mark Anthony Thompson) et d’une mère d’origine mexicaine et européenne. Elle découvre le théâtre au lycée et se prend de passion pour la comédie. La jeune femme passe tout de même par l’université de Santa Monica où elle étudie l’anthropologie.', 'thompsont.jpg', 36, 'Américaine', '1983-10-03 00:00:00'),
(109, 'Christoph Waltz', 'Membre du Jury du Festival de Cannes 2013.Christoph Waltz est un enfant du sérail. Parents costumiers et décorateurs de théâtre, grands-parents comédiens, il naît le 4 octobre 1956 à Vienne dans une atmosphère propice à la création et au jeu. Il étudie d\'abord le chant et l’opéra au Max Reinhart Seminar (University of Music and Performing Arts) à Vienne.', 'waltz.jpg', 63, 'Autrichien', '1956-10-04 00:00:00'),
(110, 'Jamie Foxx', 'Avant de se tourner vers le métier de comédien, Jamie Foxx bénéficie d\'une formation musicale. Il étudie le piano dès l\'âge de cinq ans et effectue le plus gros de sa scolarité dans le collège de San Diego. En 1989, il fait ses débuts de comédien comme comique de stand-up avant d\'apparaitre dans les séries télévisées In Living Color (1990), où il crée de nombreux personnages comiques, et Roc (1991).', 'foxx.jpg', 51, 'Américain', '1967-12-13 00:00:00'),
(111, 'Kerry Washington', 'Diplômée en 1994 de la Spence School, à New York, elle s\'inscrit à l\'université Georges Washington pour faire quatre ans d\'études théâtrales. En 2000, un premier rôle salué par la critique lui est offert par Our Song, dans lequel elle interprète une adolescente aussi brillante que perturbée. Elle connaît ensuite un grand succès en 2001 avec Save the last dance aux côtés de Julia Stiles.', 'washing.jpg', 42, 'Américaine', '1977-01-31 00:00:00'),
(112, 'Brad Pitt', 'Brad Pitt passe sa jeunesse à Springfield, dans le Missouri, avant de poursuivre ses études à l\'université de Columbia où il décroche un diplôme de journalisme. Il s\'installe alors à Los Angeles et suit des cours d\'art dramatique dans l\'atelier de Roy London. Son aisance naturelle et son charisme lui ouvrent les portes de la télévision. On le voit dans des séries telles 21 Jump Street (1987) ou des téléfilms comme Trop jeune pour mourir (1990, avec Juliette Lewis, qui sera sa compagne pendant les trois années suivantes.', 'bradpitt.jpg', 55, 'Américain', '1963-12-18 00:00:00'),
(113, 'Mélanie Laurent', 'C\'est en 1999 que Mélanie Laurent débute sur grand écran, avec un rôle dans le drame Un Pont entre deux rives, porté par Gérard Depardieu et Carole Bouquet. Deux ans plus tard, elle s\'illustre au générique de Ceci est mon corps, mais c\'est en 2002 que la jeune actrice française se révèle en incarnant la petite amie de Gaspard Ulliel dans le Embrassez qui vous voudrez de Michel Blanc.Mélanie Laurent emprunte alors un parcours plutôt atypique.', 'mlaurent.jpg', 36, 'Française', '1983-02-21 00:00:00'),
(114, 'Eli Roth', 'Eli Roth se passionne très tôt pour les films d\'horreur : c\'est après la vision d\'Alien, le huitième passager, alors qu\'il a huit ans, qu\'il se décide à être réalisateur. Il tourne de nombreux courts en super 8 avec l\'aide de ses frères, avant d\'intégrer la filière cinéma de l\'Université de New-York dont il sort diplômé en 1995. La même année, il co-écrit avec son ami Randy Pearlstein le scénario de Cabin Fever, mais ils n\'obtiennent aucun financement.', 'roth.jpg', 47, 'Américain', '1972-04-18 00:00:00'),
(115, 'Mireille Enos', 'Née d\'un père américain et d\'une mère française, Mireille Enos débute sa carrière à la télévision où elle participe à de nombreuses séries par le biais de personnages peu importants, avant de décrocher dans Big Love son premier rôle conséquent. Elle connait la consécration en 2011 avec la très bien reçue série policière The Killing, où elle campe le personnage principal.', 'menos.jpg', 44, 'Américaine', '1975-09-22 00:00:00'),
(116, 'Elyes Gabel', 'Fort d\'une formation théâtrale, Elyes Cherif Gabel démarre sa carrière dans la série pour enfants I Love Mummy. Encore débutant, il se fait la main sur les planches avec des représentations de West Side Story, Oliver Twist ou encore Le journal d’Anne Frank. En 2004, le jeune homme décroche le rôle de Guppy Sandhu dans le soap opera médical Casualty sur la BBC.', 'gabel.jpg', 36, 'Britannique', '1983-05-08 00:00:00'),
(117, 'James Badge Dale', 'Né à New York d\'un père et d\'une mère acteurs, James Badge Dale commence sa carrière dès l\'âge de 10 ans, lorsqu\'il est choisi pour interpréter le rôle de Simon dans une nouvelle adaptation du roman Sa Majesté des mouches (L\'Ile oubliée), dirigée par Harry Hook en 1990. Suite à cette expérience, il continue ses études jusqu\'à intégrer le Manhattanville College, où il suit des cours d\'art dramatique.', 'dale.jpg', 41, 'Américain', '1978-05-01 00:00:00'),
(118, 'Eric Bana', 'Né de mère allemande et de père croate, Eric Banadinovich se fait connaître en Australie comme comique. Après s\'être rodé durant plusieurs années au cabaret, il rejoint en 1993 l\'équipe de Full frontal, émission humoristique dont il ne tarde pas à devenir un des piliers grâce à ses talents d\'imitateur.', 'bana.jpg', 50, 'Australien', '1968-08-09 00:00:00'),
(119, 'Rose Byrne', 'Dès son plus jeune âge, Rose Byrne fait preuve d’un vif intérêt pour le théâtre et la comédie. A l’âge de 8 ans, elle réussit à convaincre ses parents de l’inscrire dans une célèbre école de théâtre en Australie, ce qui lui permet d’être remarquée lors de ses débuts sur les planches par un producteur, qui lui propose son premier rôle au cinéma, dans Dallas Doll aux côtés de Sandra Bernhard.', 'byrne.jpg', 40, 'Australienne', '1979-07-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `actor_film`
--

DROP TABLE IF EXISTS `actor_film`;
CREATE TABLE IF NOT EXISTS `actor_film` (
  `actor_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `IDX_B20C8CD110DAF24A` (`actor_id`),
  KEY `IDX_B20C8CD1567F5183` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actor_film`
--

INSERT INTO `actor_film` (`actor_id`, `film_id`) VALUES
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 31),
(14, 71),
(14, 73),
(15, 31),
(16, 31),
(17, 31),
(18, 32),
(18, 49),
(19, 32),
(20, 32),
(21, 32),
(22, 33),
(23, 33),
(24, 33),
(25, 33),
(26, 34),
(27, 34),
(28, 34),
(29, 34),
(30, 36),
(31, 36),
(32, 36),
(33, 36),
(34, 37),
(35, 37),
(36, 37),
(37, 37),
(37, 77),
(38, 38),
(39, 38),
(40, 38),
(41, 38),
(42, 40),
(42, 47),
(43, 40),
(44, 40),
(45, 40),
(46, 41),
(47, 41),
(48, 41),
(49, 41),
(50, 42),
(51, 42),
(52, 42),
(53, 42),
(54, 43),
(55, 43),
(56, 43),
(57, 43),
(59, 44),
(60, 44),
(61, 44),
(62, 44),
(62, 53),
(63, 45),
(64, 45),
(65, 45),
(66, 45),
(67, 46),
(68, 46),
(69, 46),
(70, 46),
(71, 47),
(72, 47),
(73, 47),
(74, 48),
(75, 48),
(76, 48),
(77, 48),
(78, 49),
(79, 49),
(80, 49),
(81, 50),
(82, 50),
(83, 50),
(84, 50),
(85, 51),
(86, 51),
(87, 51),
(88, 51),
(89, 52),
(90, 52),
(91, 52),
(92, 52),
(93, 53),
(94, 53),
(95, 53),
(96, 54),
(97, 54),
(98, 54),
(99, 54),
(100, 71),
(101, 71),
(102, 71),
(102, 73),
(103, 72),
(103, 74),
(104, 72),
(105, 72),
(106, 72),
(107, 73),
(108, 73),
(109, 74),
(109, 75),
(110, 74),
(111, 74),
(112, 75),
(112, 76),
(112, 77),
(113, 75),
(114, 75),
(115, 76),
(116, 76),
(117, 76),
(118, 77),
(119, 77);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Action'),
(3, 'Aventure'),
(4, 'Comédie'),
(5, 'Drame'),
(6, 'Fantastique'),
(7, 'Horreur'),
(8, 'Policier'),
(9, 'Science fiction'),
(10, 'Thriller'),
(11, 'Animalier'),
(12, 'Sport'),
(13, 'Histoire'),
(14, 'Écologie'),
(16, 'Ethnologie'),
(17, 'Western');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C567F5183` (`film_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`),
  KEY `IDX_9474526C10DAF24A` (`actor_id`),
  KEY `IDX_9474526CB5A459A0` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `film_id`, `user_id`, `content`, `created_at`, `actor_id`, `news_id`) VALUES
(10, 31, 5, 'ok', '2019-10-26 23:46:55', NULL, NULL),
(11, NULL, 5, 'Test message', '2019-10-29 13:02:08', 10, NULL),
(12, NULL, 5, 't', '2019-10-29 13:04:05', 38, NULL),
(13, 38, 5, 'okok', '2019-10-29 13:08:30', NULL, NULL),
(14, NULL, 5, 'test', '2019-10-29 13:09:57', 38, NULL),
(15, NULL, 5, 'test', '2019-10-29 13:10:38', 39, NULL),
(16, NULL, 5, 'miom', '2019-10-29 13:40:22', NULL, 2),
(17, NULL, 5, 'tutu', '2019-10-29 13:40:33', NULL, 2),
(18, NULL, 5, 'okok', '2019-10-29 13:41:07', NULL, 1),
(24, 1, 5, 'Bonjour !', '2019-10-29 18:15:34', NULL, NULL),
(25, NULL, 5, 'test commentaire', '2019-10-29 18:36:08', 11, NULL),
(26, 32, 7, 'Très bon film ! Je recommande.', '2019-10-29 19:25:05', NULL, NULL),
(27, NULL, 7, 'Très intéressant !', '2019-10-29 19:27:53', NULL, 1),
(28, NULL, 7, 'Bon article !', '2019-10-29 19:28:57', NULL, 2),
(29, 1, 7, 'Excellent Film!', '2019-10-29 19:30:14', NULL, NULL),
(30, 1, 7, 'test', '2019-10-29 19:30:47', NULL, NULL),
(32, NULL, 7, 'Bon acteur !', '2019-10-29 19:33:30', 11, NULL),
(33, NULL, 7, 'Merci !', '2019-10-29 19:33:49', NULL, 3),
(34, 76, 7, 'Bon film!', '2019-10-29 19:35:25', NULL, NULL),
(35, 75, 7, 'Excellent Film !!!', '2019-10-29 19:36:05', NULL, NULL),
(37, NULL, 5, 'Test', '2019-10-29 22:52:05', 39, NULL),
(38, NULL, 2, 'CouCou !', '2019-10-30 13:35:38', 14, NULL),
(39, NULL, 1, 'Très bon acteur !', '2019-10-30 14:10:58', 18, NULL),
(40, 31, 1, 'Très bon Film !', '2019-10-30 14:11:18', NULL, NULL),
(41, NULL, 1, 'Merci!', '2019-10-30 14:11:33', NULL, 1),
(42, NULL, 5, 'Bon article !', '2019-11-06 15:00:15', NULL, 6),
(43, NULL, 10, 'Bon article !', '2019-11-12 14:15:28', NULL, 7),
(44, NULL, 10, 'J\'aime cette série !', '2019-11-12 14:15:46', NULL, 5),
(45, NULL, 10, 'Cool!', '2019-11-12 14:15:59', NULL, 6),
(46, 36, 10, 'Super film', '2019-11-12 14:53:33', NULL, NULL),
(47, 38, 11, 'Vivement la suite !', '2019-11-12 14:54:16', NULL, NULL),
(48, NULL, 11, 'Je confirme.', '2019-11-12 14:54:51', NULL, 7),
(49, 1, 11, 'Bon film', '2019-11-12 14:55:43', NULL, NULL),
(50, NULL, 12, 'Deux très bons films!', '2019-11-13 10:09:44', NULL, 7),
(51, 38, 12, 'Aussi bien que le premier', '2019-11-13 10:10:17', NULL, NULL),
(52, NULL, 12, 'Bon acteur', '2019-11-13 10:10:36', 38, NULL),
(53, NULL, 12, 'bon acteur!', '2019-11-13 10:10:57', 10, NULL),
(54, NULL, 12, 'Bon article !', '2019-11-13 10:15:45', NULL, 1),
(55, 31, 12, 'Super film', '2019-11-13 10:16:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `genre` int(11) DEFAULT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `listimg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8244BE2212469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `category_id`, `title`, `content`, `image`, `created_at`, `genre`, `background`, `youtube`, `price`, `listimg`, `director`, `duration`) VALUES
(1, 5, 'JOKER', 'Dans les années 1980, à Gotham City, Arthur Fleck, un comédien de stand-up raté est agressé alors qu\'il ère dans les rues de la ville déguisé en clown. Méprisé de tous et bafoué, il bascule peu à peu dans la folie pour devenir le Joker, un dangereux tueur.', 'img/cinema/joker.jpg', '2019-10-09 00:00:00', 0, 'img/cinema/joker1.jpg', 'https://www.youtube.com/embed/OoTx1cYC5u8', 9.49, 'img/cinema/joker1.jpg', 'Todd Phillips', '2h02min'),
(31, 1, 'RAMBO : Last blood', 'Cinquième épisode de la saga Rambo.\r\nVétéran de la Guerre du Vietnam, John Rambo va devoir affronter un cartel mexicain.', '../img/cinema/rambo.jpg', '2019-09-25 00:00:00', 0, '../img/cinema/rambo1.jpg', 'https://www.youtube.com/embed/1O50qJxtS88', 8.99, '../img/cinema/rambo1.jpg', 'Adrian Grunberg', '1h40min'),
(32, 5, 'BOHEMIAN RHAPSODY', 'Bohemian Rhapsody retrace le destin extraordinaire du groupe Queen et de leur chanteur emblématique Freddie Mercury, qui a défié les stéréotypes, brisé les conventions et révolutionné la musique.', '../img/cinema/queen.jpg', '2018-10-31 00:00:00', 0, '../img/cinema/queen1.jpg', 'https://www.youtube.com/embed/ZrFg6vqvdHU', 6.99, '../img/cinema/queen1.jpg', 'Bryan Singer', '2h15min'),
(33, 3, 'JUMANJI : Next level', 'L\'équipe est de retour mais le jeu a changé. Alors qu\'ils retournent dans Jumanji pour secourir l\'un des leurs, ils découvrent un monde totalement inattendu.', '../img/cinema/jumanji.jpg', '2019-12-04 00:00:00', 0, '../img/cinema/jumanji1.jpg', 'https://www.youtube.com/embed/RhWRa0wBBHA', 3.99, '../img/cinema/jumanji1.jpg', 'Jake Kasdan', 'Non communiquée'),
(34, 6, 'MALEFIQUE : Le pouvoir du mal', 'Plusieurs années après avoir découvert pourquoi la plus célèbre méchante Disney avait un cœur si dur et ce qui l’avait conduit à jeter un terrible sort à la princesse Aurore, « MALEFIQUE : LE POUVOIR DU MAL » continue d’explorer les relations complexes entre la sorcière et la future reine.', '../img/cinema/malefique.jpg', '2019-10-16 00:00:00', 0, '../img/cinema/malefique1.jpg', 'https://www.youtube.com/embed/R2kmlH2VkME', 3.99, '../img/cinema/malefique1.jpg', 'Joachim Rønning', '1h59min'),
(36, 9, 'INTERSTELLAR', 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.', '../img/cinema/interstellar.jpg', '2014-11-05 00:00:00', 0, '../img/cinema/interstellar1.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU', 3.99, '../img/cinema/interstellar1.jpg', 'Christopher Nolan', '2h49min'),
(37, 6, 'LE HOBBIT : La désolation de smaug', 'Les aventures de Bilbon Sacquet, paisible hobbit, qui sera entraîné, lui et une compagnie de Nains, par le magicien Gandalf pour récupérer le trésor détenu par le dragon Smaug. Au cours de ce périple, il mettra la main sur l\'anneau de pouvoir que possédait Gollum...', '../img/cinema/hobbit.jpg', '2013-12-11 00:00:00', 0, '../img/cinema/hobbit1.jpg', 'https://www.youtube.com/embed/bvKLagxYhrc', 3.99, '../img/cinema/hobbit1.jpg', 'Peter Jackson', '2h41min'),
(38, 7, 'ÇA : Chapitre 2', '27 ans après la victoire du Club des Ratés sur Grippe-Sou, le sinistre Clown est de retour pour semer la terreur dans les rues de Derry. Désormais adultes, les membres du Club ont tous quitté la petite ville pour faire leur vie.', '../img/cinema/ça.jpg', '2019-09-11 00:00:00', 0, '../img/cinema/ça1.jpg', 'https://www.youtube.com/embed/yOZA2y_dQA4', 3.99, '../img/cinema/ça1.jpg', 'Andy Muschietti', '2h50min'),
(40, 5, 'BREAKING BAD', 'Walter White, 50 ans, est professeur de chimie dans un lycée du Nouveau-Mexique. Pour subvenir aux besoins de Skyler, sa femme enceinte, et de Walt Junior, son fils handicapé, il est obligé de travailler doublement. Son quotidien déjà morose devient carrément noir lorsqu\'il apprend qu\'il est atteint d\'un incurable cancer des poumons. Les médecins ne lui donnent pas plus de deux ans à vivre. Pour réunir rapidement beaucoup d\'argent afin de mettre sa famille à l\'abri, Walter ne voit plus qu\'une solution : mettre ses connaissances en chimie à profit pour fabriquer et vendre du crystal meth, une drogue de synthèse qui rapporte beaucoup. Il propose à Jesse, un de ses anciens élèves devenu un petit dealer de seconde zone, de faire équipe avec lui. Le duo improvisé met en place un labo itinérant dans un vieux camping-car. Cette association inattendue va les entraîner dans une série de péripéties tant comiques que pathétiques.', 'img/serie/breaking.jpg', '2008-01-20 00:00:00', 1, 'img/serie/breaking1.jpg', 'https://www.youtube.com/embed/CoWsuFdqeYE', 9.99, 'img/serie/breaking1.jpg', 'Vince Gilligan', '42min par épisode'),
(41, 10, 'LA CASA DE PAPEL', 'Huit voleurs font une prise d\'otages dans la Maison royale de la Monnaie d\'Espagne, tandis qu\'un génie du crime manipule la police pour mettre son plan à exécution.', 'img/serie/papel.jpg', '2017-05-02 00:00:00', 1, 'img/serie/papel1.jpg', 'https://www.youtube.com/embed/_yJxbWKN3zE', 7.99, 'img/serie/papel1.jpg', 'Álex Pina', '45min par épisode'),
(42, 6, 'GAME OF THRONES', 'Il y a très longtemps, à une époque oubliée, une force a détruit l\'équilibre des saisons. Dans un pays où l\'été peut durer plusieurs années et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d\'au-delà du Mur protecteur, n\'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s\'abat sur le Royaume avec la promesse d\'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s\'emparer du Trône de Fer, le symbole du pouvoir absolu.', 'img/serie/GOT.jpg', '2011-04-17 00:00:00', 1, 'img/serie/GOT1.jpg', 'https://www.youtube.com/embed/kT8v2SOmZHM', 9.99, 'img/serie/GOT1.jpg', 'D.B. Weiss, David Benioff', '52min par épisode'),
(43, 8, 'PEAKY BLINDERS', 'En 1919, à Birmingham, soldats, révolutionnaires politiques et criminels combattent pour se faire une place dans le paysage industriel de l\'après-Guerre. Le Parlement s\'attend à une violente révolte, et Winston Churchill mobilise des forces spéciales pour contenir les menaces. La famille Shelby compte parmi les membres les plus redoutables. Surnommés les \"Peaky Blinders\" par rapport à leur utilisation de lames de rasoir cachées dans leurs casquettes, ils tirent principalement leur argent de paris et de vol. Tommy Shelby, le plus dangereux de tous, va devoir faire face à l\'arrivée de Campbell, un impitoyable chef de la police qui a pour mission de nettoyer la ville. Ne doit-il pas se méfier tout autant de la ravissante Grace Burgess ? Fraîchement installée dans le voisinage, celle-ci semble cacher un mystérieux passé et un dangereux secret.', 'img/serie/peaky.jpg', '2013-09-12 00:00:00', 1, 'img/serie/peaky1.jpg', 'https://www.youtube.com/embed/F16x9poSXrc', 15, 'img/serie/peaky1.jpg', 'Steven Knight', '52min par épisode'),
(44, 5, 'SPARTACUS', 'C’est dans le sang et le sable des arènes que s’écrit la légende de Spartacus. Puissant guerrier Thrace trahi par un ambitieux légat romain, Spartacus est réduit en esclavage, contraint de devenir gladiateur s’il veut un jour revoir sa femme. Au sein de l’école de gladiateurs du machiavélique Batiatus et de son épouse Lucretia, Spartacus recevra l’enseignement de l’impitoyable Doctore pour devenir le plus redoutable des combattants. Mais entre l’hostilité des autres gladiateurs et les manigances de Lucretia, Spartacus devra tout sacrifier pour pouvoir survivre...', 'img/serie/spartacus.jpg', '2010-01-22 00:00:00', 1, 'img/serie/sparta1.jpg', 'https://www.youtube.com/embed/AVXF9vlV_S8', 8, 'img/serie/sparta1.jpg', 'Steven S. DeKnight', '42min par épisode'),
(45, 3, 'VIKINGS', 'Scandinavie, à la fin du 8ème siècle. Ragnar Lodbrok, un jeune guerrier viking, est avide d\'aventures et de nouvelles conquêtes. Lassé des pillages sur les terres de l\'Est, il se met en tête d\'explorer l\'Ouest par la mer. Malgré la réprobation de son chef, Haraldson, il se fie aux signes et à la volonté des dieux, en construisant une nouvelle génération de vaisseaux, plus légers et plus rapides...', 'img/serie/vikings.jpg', '2013-03-03 00:00:00', 1, 'img/serie/vikings1.jpg', 'https://www.youtube.com/embed/mAl60ykBm4A', 9.99, 'img/serie/vikings1.jpg', 'Michael Hirst', '52min par épisode'),
(46, 7, 'THE WALKING DEAD', 'Après une apocalypse ayant transformé la quasi-totalité de la population en zombies, un groupe d\'hommes et de femmes mené par l\'officier Rick Grimes tente de survivre... Ensemble, ils vont devoir tant bien que mal faire face à ce nouveau monde devenu méconnaissable, à travers leur périple dans le Sud profond des États-Unis.', 'img/serie/walking.jpg', '2010-10-31 00:00:00', 1, 'img/serie/walking1.jpg', 'https://www.youtube.com/embed/AbtiqJGhWyY', 19, 'img/serie/walking1.jpg', 'Glen Mazzara, Frank Darabont', '44min par épisode'),
(47, 4, 'MALCOLM', 'Petit génie malgré lui, Malcolm vit dans une famille hors du commun. Le jeune surdoué n\'hésite pas à se servir de son intelligence pour faire les 400 coups avec ses frères. Et les parents tentent tant bien que mal de canaliser l\'énergie de ces petits démons.', 'img/serie/malcolm.jpg', '2000-01-09 00:00:00', 1, 'img/serie/malcolm1.jpg', 'https://www.youtube.com/embed/dgXuH1OxBHc', 9.99, 'img/serie/malcolm1.jpg', 'Linwood Boomer', '22min par épisode'),
(48, 6, 'STRANGER THINGS', 'A Hawkins, en 1983 dans l\'Indiana. Lorsque Will Byers disparaît de son domicile, ses amis se lancent dans une recherche semée d’embûches pour le retrouver. Dans leur quête de réponses, les garçons rencontrent une étrange jeune fille en fuite. Les garçons se lient d\'amitié avec la demoiselle tatouée du chiffre \"11\" sur son poignet et au crâne rasé et découvrent petit à petit les détails sur son inquiétante situation. Elle est peut-être la clé de tous les mystères qui se cachent dans cette petite ville en apparence tranquille…', 'img/serie/stranger.jpg', '2016-07-15 00:00:00', 1, 'img/serie/stranger1.jpg', 'https://www.youtube.com/embed/wQoHfKDncLU', 12, 'img/serie/stranger1.jpg', 'Matt Duffer, Ross Duffer', '55min par épisode'),
(49, 5, 'MR. ROBOT', 'Elliot est un jeune programmeur anti-social qui souffre d\'un trouble du comportement qui le pousse à croire qu\'il ne peut rencontrer des gens qu\'en les hackant. Il travaille pour une firme spécialisée dans la cyber-sécurité mais un homme connu sous le nom de Mr Robot l\'approche un jour pour faire tomber une compagnie surpuissante qui fait partie de celles qu\'il doit justement protéger...', 'img/serie/robot.jpg', '2015-06-24 00:00:00', 1, 'img/serie/robot1.jpg', 'https://www.youtube.com/embed/uml6bz9ygxA', 9.99, 'img/serie/robot1.jpg', 'Sam Esmail', '45min par épisode'),
(50, 9, 'DARK', 'Un enfant disparu lance quatre familles dans une quête éperdue pour trouver des réponses. La chasse au coupable fait émerger les péchés et les secrets d\'une petite ville.', 'img/serie/dark.jpg', '2017-12-01 00:00:00', 1, 'img/serie/dark1.jpg', 'https://www.youtube.com/embed/vx9HQwjTcXI', 15, 'img/serie/dark1.jpg', 'Baran bo Odar, Jantje Friese', '60min par épisode'),
(51, 4, 'ORANGE IS THE NEW BLACK', 'Entre les murs de la prison pour femmes de Litchfield, la vie n’est pas rose tous les jours. Rattrapées par le passé, des détenues venues d’horizons divers cohabitent dans cette société en vase clos. Si coups bas et tensions sont monnaie courante, l’amour, la solidarité mais surtout l’humour subsistent dans le quotidien des inoubliables prisonnières.', 'img/serie/orange.jpg', '2013-07-11 00:00:00', 1, 'img/serie/orange1.jpg', 'https://www.youtube.com/embed/lNvocVbXE_Y', 9.99, 'img/serie/orange1.jpg', 'Jenji Kohan', '60min par épisode'),
(52, 10, 'PRISON BREAK', 'Michael Scofield s\'engage dans une véritable lutte contre la montre : son frère Lincoln est dans le couloir de la mort, en attente de son exécution. Persuadé de son innocence mais à court de solutions, Michael décide de se faire incarcérer à son tour dans le pénitencier d\'état de Fox River pour organiser leur évasion...', 'img/serie/prison.jpg', '2005-08-29 00:00:00', 1, 'img/serie/prison1.jpg', 'https://www.youtube.com/embed/VKHfnUSJDQI', 9.99, 'img/serie/prison1.jpg', 'Paul Scheuring', '42min par épisode'),
(53, 6, 'ARROW', 'Les nouvelles aventures de Green Arrow/Oliver Queen, combattant ultra efficace issu de l\'univers de DC Comics et surtout archer au talent fou, qui appartient notamment à la Justice League. Disparu en mer avec son père et sa petite amie, il est retrouvé vivant 5 ans plus tard sur une île près des côtes Chinoises. Mais il a changé : il est fort, courageux et déterminé à débarrasser Starling City de ses malfrats...', 'img/serie/arrow.jpg', '2012-10-10 00:00:00', 1, 'img/serie/arrow1.jpg', 'https://www.youtube.com/embed/nPCxc8vXMso', 8, 'img/serie/arrow1.jpg', 'Andrew Kreisberg', '42min par épisode'),
(54, 3, 'LES 100', 'Après une apocalypse nucléaire causée par l\'Homme lors d\'une troisième Guerre Mondiale, les 318 survivants recensés se réfugient dans des stations spatiales et parviennent à y vivre et à se reproduire, atteignant le nombre de 4000. Mais 97 ans plus tard, le vaisseau mère, l\'Arche, est en piteux état. Une centaine de jeunes délinquants emprisonnés au fil des années pour des crimes ou des trahisons sont choisis comme cobayes par les autorités pour redescendre sur Terre et tester les chances de survie. Dès leur arrivée, ils découvrent un nouveau monde dangereux mais fascinant...', 'img/serie/100.jpg', '2014-03-19 00:00:00', 1, 'img/serie/1001.jpg', 'https://www.youtube.com/embed/YIx4nbTSV_Q', 9.99, 'img/serie/1001.jpg', 'Jason Rothenberg', '42min par épisode'),
(55, 11, 'LA MARCHE DE L\'EMPEREUR', 'L\'histoire des manchots empereurs et de leur cycle de reproduction est unique au monde. Elle mêle amour, drame, courage et aventure au coeur de l\'Antarctique, région la plus isolée et inhospitalière de la planète.\r\nUn scénario offert par la nature, qui se perpétue depuis des millénaires et que les hommes n\'ont découvert qu\'au début du XXème siècle.\r\nLa Marche de l\'empereur raconte cette histoire extraordinaire...', 'img/docu/empereur.jpg', '2005-01-26 00:00:00', 2, 'img/docu/empereur1.jpg', 'https://www.youtube.com/embed/4dK6AvGerPA', 7.99, 'img/docu/empereur1.jpg', 'Luc Jacquet', '1h25min'),
(56, 14, 'LE TEMPS DES FORÊTS', 'Et si montrer des solutions, raconter une histoire qui fait du bien, était la meilleure façon de résoudre les crises écologiques, économiques et sociales, que traversent nos pays ? Suite à la publication d’une étude qui annonce la possible disparition d’une partie de l’humanité d’ici 2100, Cyril Dion et Mélanie Laurent sont partis avec une équipe de quatre personnes enquêter dans dix pays pour comprendre ce qui pourrait provoquer cette catastrophe et surtout comment l\'éviter. Durant leur voyage, ils ont rencontré les pionniers qui réinventent l’agriculture, l’énergie, l’économie, la démocratie et l’éducation. En mettant bout à bout ces initiatives positives et concrètes qui fonctionnent déjà, ils commencent à voir émerger ce que pourrait être le monde de demain…', 'img/docu/tempsforets.jpg', '2018-09-12 00:00:00', 2, 'img/docu/tempsforets1.jpg', 'https://www.youtube.com/embed/QT560lu9GXo', 4.99, 'img/docu/tempsforets1.jpg', 'François-Xavier Drouet', '1h43min'),
(57, 12, 'DIEGO MARADONA', 'Le 5 juillet 1984, Diego Maradona débarque à Naples pour un montant qui établit un nouveau record du monde. Pendant sept ans, il enflamme les stades. Le footballeur le plus mythique de la planète a parfaitement trouvé ses marques dans la ville la plus passionnante – mais aussi la plus dangereuse – d’Europe. Sur le terrain, Diego Maradona était un génie. En dehors du terrain, il était considéré comme un dieu. Cet Argentin charismatique aimait se battre contre l’adversité et il a mené le SCC Napoli en tête du tableau pour la première fois de son histoire. C’était un rêve éveillé ! Mais le prix à payer était élevé. Diego pouvait faire tout ce qu’il voulait tant qu’il accomplissait des miracles sur le terrain. Pourtant, des heures plus sombres ont fini par succéder à ces années fastes… Diego Maradona a été réalisé à partir de plus de 500 heures d’images inédites issues des archives personnelles du footballeur.', 'img/docu/maradona.jpg', '2019-07-31 00:00:00', 2, 'img/docu/maradona1.jpg', 'https://www.youtube.com/embed/eOz6qX6mx5E', 14, 'img/docu/maradona1.jpg', 'Asif Kapadia', '2h10min'),
(58, 16, 'NOUS SOMMES L\'HUMANITÉ', 'Quelque part sur notre planète, il existence un endroit caché qui est resté isolé du reste du monde jusqu’à aujourd’hui. Le dernier paradis encore intact où les premiers humains vivent toujours au commencement de l’humanité. Ils s’appellent les Jarawas. Ils vivent sur les îles Andamans, en Inde. Ils ne sont plus que 400. Aujourd’hui, notre monde est sur le point de les faire disparaître.\r\nLes Jarawas n’ont jamais accepté d’être filmés, il nous ont ouvert les portes de leur monde oublié.\r\nNOUS SOMMES L’HUMANITÉ est leur unique témoignage.', 'img/docu/humanite.jpg', '2018-05-02 00:00:00', 2, 'img/docu/humanite1.jpg', 'https://www.youtube.com/embed/3Sooz4ZlYIM', 11, 'img/docu/humanite1.jpg', 'Alexandre Dereims', '1h30'),
(59, 12, 'WEEKEND OF A CHAMPION', '1971, Grand Prix de Monaco. Jackie Stewart sera bientôt sacré champion du monde pour la seconde fois de sa carrière. Dans son sillage, Roman Polanski, grand fan de sport automobile et ami du pilote, nous plonge dans les coulisses de la course la plus excitante du monde, aux côtés de celui qui, grâce à son engagement pour la sécurité des pilotes, s’apprête à bouleverser à jamais le sport automobile. Du repérage du circuit à la victoire finale, Stewart livre ses secrets de course et permet à Polanski de dresser le portrait unique d’un champion à la classe et au naturel incomparables.', 'img/docu/week.jpg', '2013-12-18 00:00:00', 2, 'img/docu/week1.jpg', 'https://www.youtube.com/embed/0mSpJ5eXTQg', 9, 'img/docu/week1.jpg', 'Roman Polanski, Frank Simon', '1h20min'),
(60, 13, 'D-DAY, NORMANDIE 1944', 'De nos jours, quand on contemple les grandes plages de Normandie, on a peine à imaginer que ces 80 kilomètres de rivages ont été le théâtre de la plus importante opération militaire de la Seconde Guerre Mondiale. Si le déroulement du « Jour J » est connu du grand public dans ses grandes lignes, les enjeux géostratégiques et l’ingéniosité des préparatifs de cette titanesque opération militaire ont été éclipsés par son issue victorieuse, le soir du 6 juin 1944. Pourtant, c’est aussi pendant les mois qui ont précédé l’Opération Overlord et tout autant pendant les mois d’été où elle s’est déroulée que s’est joué le sort du monde actuel ; pas seulement de part et d’autre de la Manche mais dans le monde entier; pas seulement grâce aux centaines de milliers de soldats Alliés jetés dans la bataille mais aussi les résistants et les civils français.', 'img/docu/dday.jpg', '2014-04-02 00:00:00', 2, 'img/docu/dday1.jpg', 'https://www.youtube.com/embed/qyBVuRHPE0g', 9.99, 'img/docu/dday1.jpg', 'Pascal Vuong', '40min'),
(61, 11, 'GRIZZLY', 'Une année de la vie d\'une famille de grizzlys en Alaska, et leur interaction avec la faune voisine : loups, saumons, orques... Dans des paysages grandioses, on découvre la vie trépidante de ces animaux emblématiques, pour répondre à la question suivante : Comment le grizzly peut-il être, dans notre inconscient collectif, à la fois un animal féroce et le symbole de l\'animal rassurant pour tous les enfants du monde ?', 'img/docu/grizzly.jpg', '2014-11-05 00:00:00', 2, 'img/docu/grizzly1.jpg', 'https://www.youtube.com/embed/_NsBS9AdZQs', 11, 'img/docu/grizzly1.jpg', 'Alastair Fothergill, Keith Scholey', '1h18min'),
(62, 13, 'LES FANTÔMES DU TITANIC', 'En 1995, alors qu\'il préparait son film Titanic, James Cameron effectua une plongée sur l\'épave du plus luxueux paquebot du monde, engloutie par plus de 4 000 mètres de profondeur.\r\nLa vision de cet immense vaisseau le bouleversa. Le naufrage n\'était plus pour lui un mythe, mais une réalité tangible, effrayante, fascinante. Pendant quelques précieuses minutes, à bord d\'un batiscaphe expérimental, il put longer les ponts et la coque du géant des mers qui sombra lors de son voyage inaugural dans la nuit du 14 avril 1912, au sud de Terre-Neuve. Plus de 1 500 personnes disparurent dans la catastrophe.\r\nEn remontant à la surface, James Cameron n\'était plus tout à fait le même.', 'img/docu/titanic.jpg', '2003-09-10 00:00:00', 2, 'img/docu/titanic1.jpg', 'https://www.youtube.com/embed/rIwqKIydKig', 8.99, 'img/docu/titanic1.jpg', 'James Cameron', '60min'),
(63, 11, 'CHIMPANZÉS', 'A travers Oscar, un petit chimpanzé, nous découvrons l’apprentissage de la vie au cœur de la forêt tropicale africaine et suivons avec humour, émotion et angoisse ses premiers pas dans ce monde. Suite à un drame, il va se retrouver séparé de sa mère et laissé seul face à l\'hostilité de la jungle. Jusqu\'à ce qu\'il soit récupéré par un chimpanzé plus âgé, qui va le prendre sous sa protection...', 'img/docu/chimp.jpg', '2013-02-20 00:00:00', 2, 'img/docu/chimp1.jpg', 'https://www.youtube.com/embed/9ziRYu1K72M', 7.99, 'img/docu/chimp1.jpg', 'Mark Linfield, Alastair Fothergill', '1h17min'),
(64, 12, 'LA MORT SUSPENDUE', 'En mai 1985, dans la Cordillère des Andes, au Pérou, Joe Simpson et Simon Yates, deux talentueux alpinistes britanniques, tentent l\'ascension de la face ouest du Siula Grande. Ils atteignent le sommet, mais c\'est à la descente que se produit le drame.\r\nDans la tempête, Joe tombe et se casse la jambe. A 6 000 mètres, sur cette montagne isolée du monde, il n\'a aucune chance de s\'en sortir. Et Simon sait que s\'il vient en aide à son ami, lui aussi est perdu. Ce dernier va devoir prendre une terrible décision : couper la corde qui le relie à Joe...', 'img/docu/suspendu.jpg', '2004-02-11 00:00:00', 2, 'img/docu/suspendu1.jpg', 'https://www.youtube.com/embed/jSz6INJ7cbg', 10, 'img/docu/suspendu1.jpg', 'Kevin Macdonald', '1h46min'),
(65, 14, 'UN NOUVEAU JOUR SUR TERRE', 'Un nouveau jour sur terre nous propose, grâce à de nouvelles avancées technologiques spectaculaires et des scènes totalement inédites, de nous plonger comme jamais auparavant, au plus près des splendeurs de la Nature.\r\nDu lever au coucher du soleil, reptiles et batraciens, mammifères terrestres et marins et créatures minuscules ou gigantesques guettent le soleil dont tous dépendent pour leur survie, des plus hautes montagnes aux îles les plus reculées, de la savane africaine à l\'océan Arctique.\r\nUn documentaire exceptionnel pour mieux comprendre que chaque jour compte davantage de tragédies et de récits enchanteurs qu\'on ne peut imaginer…', 'img/docu/nouveau.jpg', '2018-09-05 00:00:00', 2, 'img/docu/nouveau1.jpg', 'https://www.youtube.com/embed/03JNKCYpxGg', 6.99, 'img/docu/nouveau1.jpg', 'Peter Webber, Richard', '1h34min'),
(66, 13, 'L\'IMAGE MANQUANTE', 'Il y a tant d’images dans le monde, qu’on croit avoir tout vu. Tout pensé. Depuis des années, je cherche une image qui manque. Une photographie prise entre 1975 et 1979 par les Khmers rouges, quand ils dirigeaient le Cambodge. A elle seule, bien sûr, une image ne prouve pas le crime de masse ; mais elle donne à penser ; à méditer. A bâtir l’histoire. Je l’ai cherchée en vain dans les archives, dans les papiers, dans les campagnes de mon pays. Maintenant je sais : cette image doit manquer ; et je ne la cherchais pas - ne serait-elle pas obscène et sans signification ? Alors je la fabrique. Ce que je vous donne aujourd’hui n’est pas une image ou la quête d’une seule image, mais l’image d’une quête : celle que permet le cinéma. Certaines images doivent manquer toujours, toujours être remplacées par d’autres. Dans ce mouvement il y a la vie, le combat, la peine et la beauté, la tristesse des visages perdus, la compréhension de ce qui fut. Parfois la noblesse, et même le courage : mais l’oubli, jamais.', 'img/docu/manquante.jpg', '2015-10-21 00:00:00', 2, 'img/docu/manquante1.jpg', 'https://www.youtube.com/embed/4C6DR7tL1Mo', 4.99, 'img/docu/manquante1.jpg', 'Rithy Panh', '1h32min'),
(67, 11, 'LA VALLÉE DES LOUPS', 'Il existe encore aujourd’hui en France des territoires secrets. Ce film est une quête personnelle, l’histoire d’un pari fou tenté par un passionné rêveur, un anti héros capable de briser toutes les barrières pour parvenir à son but : rencontrer des loups sauvages dans leur milieu naturel.', 'img/docu/loup.jpg', '2017-01-04 00:00:00', 2, 'img/docu/loup1.jpg', 'https://www.youtube.com/embed/NeX55C-fXuM', 9.99, 'img/docu/loup1.jpg', 'Jean-Michel Bertrand', '1h30min'),
(68, 12, 'LES BLEUS 2018 : L\'Epopée Russe', 'Au cœur des Bleus, ce documentaire montre comment vit un groupe et comment il gère la pression, les matches et se donne tous les moyens pour y arriver. Comment pour ces enfants devenus footballeurs professionnels, le rêve de porter les couleurs de leur pays est devenu réalité.  Une réalité exigeante, mise en lumière dans ce film unique qui dévoile toute la fragilité, la part de chance et d’inconnu qui jalonne leur route vers l’objectif final : la victoire et la deuxième étoile.', 'img/docu/bleu.jpg', '2018-07-17 00:00:00', 2, 'img/docu/bleu1.jpg', 'https://www.youtube.com/embed/r6jnSWVIxgE', 20, 'img/docu/bleu1.jpg', 'Emmanuel Le Ber, Théo Schuster', '52min'),
(69, 11, 'LA PLANÈTE BLEUE', '\"La Planète bleue\" est un étonnant voyage d\'une infinie richesse dans le monde marin et nous invite à découvrir des espèces inconnues vivant à des profondeurs jamais atteintes par l\'homme.', 'img/docu/planeteb.jpg', '2004-02-04 00:00:00', 2, 'img/docu/planeteb1.jpg', 'https://www.youtube.com/embed/=gcBWHMxY2hk', 9.99, 'img/docu/planeteb1.jpg', 'Alastair Fothergill, Andy Byatt', '1h32min'),
(71, 1, 'EXPENDABLES : UNITÉ SPÉCIALE', 'Ce ne sont ni des mercenaires, ni des agents secrets. Ils choisissent eux-mêmes leurs missions et n\'obéissent à aucun gouvernement. Ils ne le font ni pour l\'argent, ni pour la gloire, mais parce qu\'ils aident les cas désespérés.', 'img/cinema/expandables.jpg', '2010-08-18 00:00:00', 0, 'img/cinema/expandables1.jpg', 'https://www.youtube.com/embed/5RcnSc08lJQ', 9.99, 'img/cinema/expandables1.jpg', 'Sylvester Stallone', '1h45min'),
(72, 17, 'THE REVENANT', 'Dans une Amérique profondément sauvage, Hugh Glass, un trappeur, est attaqué par un ours et grièvement blessé. Abandonné par ses équipiers, il est laissé pour mort. Seul, armé de sa volonté, Glass entreprend un voyage de plus de 300 km dans un environnement hostile.', 'img/cinema/therevenant.jpg', '2016-02-24 00:00:00', 0, 'img/cinema/therevenant1.jpg', 'https://www.youtube.com/embed/S2MKo4pOphM', 19, 'img/cinema/therevenant1.jpg', 'Alejandro González', '2h36min'),
(73, 5, 'CREED II', 'La vie est devenue un numéro d\'équilibriste pour Adonis Creed. Entre ses obligations personnelles et son entraînement pour son prochain grand match, il est à la croisée des chemins. Et l\'enjeu du combat est d\'autant plus élevé que son rival est lié au passé de sa famille.', 'img/cinema/creed.jpg', '2019-01-09 00:00:00', 0, 'img/cinema/creed1.jpg', 'https://www.youtube.com/embed/AdS5ux3G-Gc', 8.99, 'img/cinema/creed1.jpg', 'Steven Caple Jr.', '2h10min'),
(74, 17, 'DJANGO UNCHAINED', 'Dans le sud des États-Unis, deux ans avant la guerre de Sécession, le Dr King Schultz, un chasseur de primes allemand, fait l’acquisition de Django, un esclave qui peut l’aider à traquer les frères Brittle, les meurtriers qu’il recherche.', 'img/cinema/django.jpg', '2013-01-16 00:00:00', 0, 'img/cinema/django1.jpg', 'https://www.youtube.com/embed/K2XjgsfzDrU', 9.99, 'img/cinema/django1.jpg', 'Quentin Tarantino', '2h44min'),
(75, 1, 'INGLOURIOUS BASTERDS', 'Dans la France occupée de 1940, Shosanna Dreyfus assiste à l\'exécution de sa famille tombée entre les mains du colonel nazi Hans Landa. Shosanna s\'échappe de justesse et s\'enfuit à Paris où elle se construit une nouvelle identité en devenant exploitante d\'une salle de cinéma.', 'img/cinema/inglo.jpg', '2009-08-19 00:00:00', 0, 'img/cinema/inglo1.jpg', 'https://www.youtube.com/embed/BiPUoLI9eGM', 3.99, 'img/cinema/inglo1.jpg', 'Quentin Tarantino', '2h33min'),
(76, 9, 'WORLD WAR Z', 'Un jour comme les autres, Gerry Lane et sa famille se retrouvent coincés dans un embouteillage monstre sur leur trajet quotidien. Ancien enquêteur des Nations Unies, Lane comprend immédiatement que la situation est inhabituelle.', 'img/cinema/warz.jpg', '2013-07-03 00:00:00', 0, 'img/cinema/warz1.jpg', 'https://www.youtube.com/embed/jTrmqThqpK8', 4.99, 'img/cinema/warz1.jpg', 'Marc Forster', '1h56min'),
(77, 3, 'TROIE', 'Dans la Grèce antique, l\'enlèvement d\'Hélène, reine de Sparte, par Paris, prince de Troie, est une insulte que le roi Ménélas ne peut supporter. L\'honneur familial étant en jeu, Agamemnon, puissant roi de Mycènes, réunit toutes les armées grecques afin de faire sortir Hélène de Troie.', 'img/cinema/troie.jpg', '2004-05-13 00:00:00', 0, 'img/cinema/troie1.jpg', 'https://www.youtube.com/embed/IeZrKyyXYjY', 4, 'img/cinema/troie1.jpg', 'Wolfgang Petersen', '2h35min');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191023090814', '2019-10-23 09:08:45'),
('20191025155923', '2019-10-25 15:59:31'),
('20191025164257', '2019-10-25 16:43:01'),
('20191028084451', '2019-10-28 08:45:03'),
('20191028101010', '2019-10-28 10:10:19'),
('20191029124837', '2019-10-29 12:48:46'),
('20191029131633', '2019-10-29 13:16:39');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgtwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `title`, `abstract`, `created_at`, `description`, `author`, `imgone`, `imgtwo`) VALUES
(1, 'Déjà une saison 5 pour La Casa de Papel ?', 'Un média espagnol annonce que Netflix a déjà renouvelé le drama espagnol à succès.', '2019-10-25 17:25:00', 'Alors que le tournage de la saison 4 de La Casa de Papel est terminé depuis déjà quelques temps, Netflix aurait dans l\'idée de prolonger encore un peu le plaisir. Selon le média espagnol FormulaTV, qui ne précise pas la source de son info, la série criminelle pourrait rempiler pour un chapitre de plus, qui serait divisé à nouveau en deux saisons. Les saisons 5 et 6 donc.\r\n\r\nLa plateforme de streaming aurait prévu de commencer le tournage de la saison 5 début de 2020. FormulaTV précise que Vancouver Media est déjà dans la phase de pré-production des nouveaux épisodes. Côté casting, Álvaro Morte serait de retour.', 'Charles Martin', 'img/news/news1a.jpg', NULL),
(2, 'Box-office France : Joker rit toujours aux éclats', 'Joaquin Phoenix continue de fédérer les foules, loin devant Maléfique : le pouvoir du mal.', '2019-10-24 15:30:00', 'En deuxième semaine d’exploitation, Joker de Todd Phillips a été vu par 1 228 940 spectateurs. Le drame psychologique, proposant de nouvelles origines au super-vilain emblématique de l’univers de Batman, a enregistré en tout 2 835 365 entrées depuis son démarrage. Joaquin Phoenix a de quoi sourire.\r\n\r\nJOKER : JARED LETO AURAIT FAIT PRESSION SUR SES AGENTS POUR TUER LE FILM\r\n\r\nEn deuxième place, c’est une autre méchante - mais réhabilitée depuis - qui tente de rattraper le clown fou : Maléfique : le pouvoir du mal de Joachim Ronning a été vu 786 485 fois pour sa première semaine. C’est un meilleur démarrage que pour le premier opus avec Angelina Jolie, qui avait fait 627 607 entrées pour les premiers jours.', 'Joanna Mutton', 'img/news/news2a.jpg', NULL),
(3, 'La série Fondation a trouvé son réalisateur', 'Rupert Sanders a été engagé par Apple TV+.', '2019-10-06 13:27:00', 'La production de l\'adaptation du Cycle de la Fondation d\'Asimov se précise. Deadline rapporte que le réalisateur britannique, Rupert Sanders (à qui l\'on doit notamment Blanche-Neige et le Chasseur), a été signé par Apple TV+’s pour s\'occuper de la série SF.\r\n\r\nIl réalisera notamment le pilote, ce qui marquera le premier job de Rupert Sanders à la télévision. Pour rappel, il dirigera Lee Pace (Halt and Catch Fire) et Jared Harris (Chernobyl), annoncés en début de semaine.', 'Alexis Leroy', 'img/news/news3a.jpg', NULL),
(5, 'The 100 pourrait avoir droit à un spin-off', 'Le préquel se déroulerait 97 ans avant les événements de la série originale.', '2019-09-21 20:45:00', 'Le \"pilote\" de ce spin-off serait un \"pilote backdoor\", c\'est à dire qu\'il s\'agirait d\'un épisode inclus simplement dans la saison 7 de The 100. Écrit par Jason Rothenberg, le créateur de The 100, la potentielle série dérivée débuterait au lendemain de l\'apocalypse nucléaire et suivrait «une bande de survivants sur le terrain qui apprendront à faire face à ce monde dangereux tout en luttant pour créer une société nouvelle et meilleure, sur les cendres de ce qui a précédé.\"\r\n\r\nOn verra donc ça très bientôt. La saison 7 de The 100, en 16 épisodes, sera à voir l’année prochaine.', 'Charles Martin', 'img/news/news5a.jpg', NULL),
(6, 'El Camino : 25 millions de foyers ont déjà vu le film', 'Netflix dévoile ses chiffres.', '2019-08-23 11:15:00', 'Il y a quelques jours, l\'institut Nielsen sortait son estimation de l\'audience de Breaking Bad aux USA. Des chiffres qui n\'ont peut-être pas beaucoup plu à Netflix, qui dévoile aujourd\'hui \"ses\" scores. Dans un Tweet,  la plateforme révèle ainsi que El Camino a été regardé par plus de 25 millions de ménages, au cours des sept jours suivant sa mise en ligne. Une audience impressionnante, en soi, mais un peu brute... On ne sait même pas s\'il s\'agit du total monde (on suppose que c\'est le cas) ou juste des abonnés aux USA.', 'Maxime Delporte', 'img/news/news6a.jpg', NULL),
(7, 'La bataille pour la conquête du box-office fait rage !', '« Joker » devance le nouveau film centré sur la sorcière de Disney : « Maléfique: Le Pouvoir du Mal »', '2019-11-07 18:05:00', 'L\'ennemi juré de Batman a encore attiré les foules pour sa deuxième semaine dans les salles françaises: avec 1,2 million d\'entrées, Joker conserve ainsi la tête du box-office, selon les chiffres de CBO Box Office publiés mercredi. Lion d\'or à la Mostra de Venise, ce film de l\'Américain Todd Phillips explore les origines de l\'emblématique figure du Joker, joué par Joaquin Phoenix, impressionnant et inquiétant à souhait dans ce film, accusé par certains critiques de représenter la violence de façon complaisante.', 'Thibault Sergent', 'img/news/carousel1.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(1, 'Alexis', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dDZXU1dla2dLaUNrRzN0aQ$cdYurTCc9QUIqBbx+V4sWnra8thZapXlFFiJ8WaD8Lg'),
(2, 'Thibault', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VC9WZmtLRXlyYmYvcENNVA$PcP3RGUefAelfq9A9P6FLvila+8zddArixpP9axo2iI'),
(3, 'Henri', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VUNMWE5haTJWcU92RTN4MA$CVy27jZxYMu9FZSDN2LH3AjP0+/RiDcAEqGC96mkiyU'),
(5, 'admin', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$cE1oaEN5NEQvYlVlYzlXUg$JsasfvEuG6aVZyUtoAQQpHhZuVV1WSdx9tatIRJ+NnM'),
(6, 'shakaaa', '[]', '$argon2id$v=19$m=65536,t=4,p=1$N2plWDZoT1QxVS4zcHFkWg$IqmWw2iILMhL+5sSXZqmGPxSf3kPHR91wJ99og5Fv8c'),
(7, 'Maxime', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Umk4WlFrVVlITi4zbWcucA$8RGC2fNvfVeHHnY5ML3uVWjlH6LjwPLTiHnhWdB+RBs'),
(8, 'fzzez', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SGVjSDNGSm9zWENxMjB0WQ$dt+vBzIfpQjNf0BwmvpUmknT3rKuAEgn3L5EFKo9DvA'),
(9, 'jean', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SDZRL3daenFkTVJ1bk9KMg$X2TRk7ggolgFPBR88IvxoKOyEbrI9CjuswBhdDqco9o'),
(10, 'Alexandre', '[]', '$argon2id$v=19$m=65536,t=4,p=1$M0cyTFRvOThHYVVPcjU3cw$uKm9bA5uUvYSTJgMMHK/EgCjvdN9nk477YitEPEJreE'),
(11, 'Justine', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VjJuc2FKdU9GM25QLmNxVA$mHy3sqJ0Jo8vR3jPIB2EeC06quDurtfx5+7xgj6PehU'),
(12, 'RomainD', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NGEyQmQ3bEZFS1VDak1hcw$m8b0ocEBs+OWnM/z16zFBQVD+Iafaso6EiI3xZynRes');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actor_film`
--
ALTER TABLE `actor_film`
  ADD CONSTRAINT `FK_B20C8CD110DAF24A` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B20C8CD1567F5183` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C10DAF24A` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`),
  ADD CONSTRAINT `FK_9474526C567F5183` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CB5A459A0` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_8244BE2212469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
