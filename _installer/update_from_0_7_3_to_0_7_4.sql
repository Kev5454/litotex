INSERT INTO `cc1_menu_admin_opt` (`varname`, `value`, `title`, `description`, `type`, `invisable`, `admin_sub_id`, `save`, `op_id`) VALUES
('op_set_pageManager', '1', 'Soll die Startseite eine Seite des Pagemanagers sein?', '', 'truefalse', 0, 8, 1, 52),
('op_set_pageManager_name', 'index', 'Welche Seite soll als Startseite gew�hlt werden?', '', 'text', 0, 8, 1, 53);
('op_webseitenBetreiber', '<p>Kevin Wehmeyer<br />Rurstr. -neu 3<br />41812 Erkelenz</p>', 'Bitte trage hier deine Kontaktdaten ein.(Name, Adresse)', '', 'textarea', 0, 5, 1, 54);s

INSERT INTO `cc1_pages` (`id`, `getName`, `title`, `content`, `access`, `isActive`, `makeTime`, `updateTime`) VALUES
(3, 'index', 'Startseite', '&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;{$LITO_GLOBAL_IMAGE_URL}standard/index/litotex.png&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;Uuml;ber Litotex, erreichbar unter &lt;a href=&quot;http://litotex.info&quot;&gt;http://litotex.info&lt;/a&gt;,  ist eine OpenSource GameEngine, die vom FreeBG-Team entwickelt wird.  Die Vorg&amp;auml;ngerversionen sind auch unter dem Namen &amp;bdquo;Landkampf Lite&amp;ldquo;  bekannt, die urspr&amp;uuml;nglich vom Browsergame Landkampf, &lt;a onclick=&quot;javascript:pageTracker._trackPageview(&#39;/outbound/article/landkampf.net&#39;);&quot; href=&quot;http://landkampf.net&quot;&gt;http://landkampf.net&lt;/a&gt;, entstammen. Wie bereits erw&amp;auml;hnt ist der Quellcode unter der GNU General Public License v. 3 stehend OpenSource.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Funktionalit&amp;auml;t&lt;/strong&gt;&lt;br /&gt; Das FreeBG-Team war und ist bem&amp;uuml;ht, die GameEngine soweit wie m&amp;ouml;glich  neutral zu halten. Manche Module eignen sich hierf&amp;uuml;r besser, andere  wiederum schlechter. Doch Ziel des Projektes ist es, sich auf kein  bestimmtes Genre zu fixieren.&lt;/p&gt;\r\n&lt;p&gt;Einige wenige zusammengefasste Infos:&lt;br /&gt; - 4 unterschiedliche Rassen, mit jeweils unterschiedlichen  Geb&amp;auml;udearten, Funktionen, Kampfeinheiten und nat&amp;uuml;rlich verschiedenen  Parametern (z.B.: Bauzeit, Kampfst&amp;auml;rke,..)&lt;br /&gt; - zur Zeit in 2 Sprachen verf&amp;uuml;gbar&lt;br /&gt; - ein ACP erleichtert die Verwaltung des Spiels (z.B.: Einheiten-, Forschungs- &amp;amp; Geb&amp;auml;udeeditor)&lt;br /&gt; - Allianzsystem mit integriertem Forum&lt;br /&gt; - IGM&lt;br /&gt; - dynamisches Kampfsystem&lt;br /&gt; - Bauschleife f&amp;uuml;r die Einheiten&lt;/p&gt;\r\n&lt;p&gt;Allerdings bieten wir weder f&amp;uuml;r Geb&amp;auml;ude, noch f&amp;uuml;r Kampfeinheiten  Bilder an. Falls Interesse besteht, k&amp;ouml;nnen diese gegen Entgeld von der  Grafikerin erstellt werden (Icons, Kampffeld, Karte,&amp;hellip;).&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Entwicklung&lt;br /&gt; &lt;/strong&gt;Nat&amp;uuml;rlich bieten wir im Entwicklerforum Support f&amp;uuml;r alle  Anfragen, die unsere GameEngine betreffen. Im Laufe der Zeit werden wir  kompatible Updates anbieten, die die Funktionalit&amp;auml;t der Engine  erweitern. Modifikationen dritter Hand, die von fremden Anwendern  programmiert und ver&amp;ouml;ffentlich werden, werden nach unserer &amp;Uuml;berpr&amp;uuml;fung  nat&amp;uuml;rlich auf Wunsch eingebaut oder zum Download angeboten.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Systemvoraussetzung&lt;br /&gt; &lt;/strong&gt;- Webspace mit FTP Zugriff&lt;br /&gt; - PHP ab Version 4.0&lt;br /&gt; - eine MySQL Datenbank ab Version 3.5x&lt;br /&gt; - folgende PHP Konfigurationen:&lt;br /&gt; - register_globals On/Off&lt;br /&gt; - safe_Mode Off&lt;/p&gt;', 'public', 1, 1531510624, 1531511281);

UPDATE `cc1_modul_admin` SET `current_version` = '0.7.4' 

UPDATE `cc1_pages` SET `content` = '&lt;div class=&quot;impressum&quot;&gt;\r\n&lt;h1&gt;Impressum&lt;/h1&gt;\r\n&lt;p&gt;Angaben gem&amp;auml;&amp;szlig; &amp;sect; 5 TMG&lt;/p&gt;\r\n&lt;p&gt;{$WEBSEITEN_BETREIBER}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Kontakt:&lt;/strong&gt; &lt;br /&gt;{$SUPPORT_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Verantwortlich f&amp;uuml;r den Inhalt nach &amp;sect; 55 Abs. 2 RStV:&lt;/strong&gt;&lt;br /&gt;{$WEBSEITEN_BETREIBER}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Haftungsausschluss: &lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Haftung f&amp;uuml;r Inhalte&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Die Inhalte unserer Seiten wurden mit gr&amp;ouml;&amp;szlig;ter Sorgfalt erstellt. F&amp;uuml;r die Richtigkeit, Vollst&amp;auml;ndigkeit und Aktualit&amp;auml;t der Inhalte k&amp;ouml;nnen wir jedoch keine Gew&amp;auml;hr &amp;uuml;bernehmen. Als Diensteanbieter sind wir gem&amp;auml;&amp;szlig; &amp;sect; 7 Abs.1 TMG f&amp;uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach &amp;sect;&amp;sect; 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, &amp;uuml;bermittelte oder gespeicherte fremde Informationen zu &amp;uuml;berwachen oder nach Umst&amp;auml;nden zu forschen, die auf eine rechtswidrige T&amp;auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&amp;uuml;hrt. Eine diesbez&amp;uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&amp;ouml;glich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Haftung f&amp;uuml;r Links&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Unser Angebot enth&amp;auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&amp;ouml;nnen wir f&amp;uuml;r diese fremden Inhalte auch keine Gew&amp;auml;hr &amp;uuml;bernehmen. F&amp;uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&amp;ouml;gliche Rechtsverst&amp;ouml;&amp;szlig;e &amp;uuml;berpr&amp;uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Urheberrecht&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielf&amp;auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&amp;szlig;erhalb der Grenzen des Urheberrechtes bed&amp;uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&amp;uuml;r den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Datenschutz&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten m&amp;ouml;glich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit m&amp;ouml;glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr&amp;uuml;ckliche Zustimmung nicht an Dritte weitergegeben. &lt;br /&gt; Wir weisen darauf hin, dass die Daten&amp;uuml;bertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitsl&amp;uuml;cken aufweisen kann. Ein l&amp;uuml;ckenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht m&amp;ouml;glich. &lt;br /&gt; Der Nutzung von im Rahmen der Impressumspflicht ver&amp;ouml;ffentlichten Kontaktdaten durch Dritte zur &amp;Uuml;bersendung von nicht ausdr&amp;uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&amp;uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&amp;uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Cookies &lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Cookies sind Textdateien, die automatisch bei dem Aufruf einer  Webseite lokal im Browser des Besuchers abgelegt werden. Diese Website  setzt Cookies ein, um das Angebot nutzerfreundlich und funktionaler zu  gestalten. Dank dieser Dateien ist es beispielsweise m&amp;ouml;glich, auf  individuelle Interessen abgestimmte Informationen auf einer Seite  anzuzeigen. Auch Sicherheitsrelevante Funktionen zum Schutz Ihrer  Privatsph&amp;auml;re werden durch den Einsatz von Cookies erm&amp;ouml;glicht. Der  ausschlie&amp;szlig;liche Zweck besteht also darin, unser Angebot Ihren  Kundenw&amp;uuml;nschen bestm&amp;ouml;glich anzupassen und die Seiten-Nutzung so  komfortabel wie m&amp;ouml;glich zu gestalten. Mit Anwendung der DSGVO 2018 sind  Webmaster dazu verpflichtet, der unter &lt;a rel=&quot;noopener&quot; href=&quot;https://eu-datenschutz.org/&quot; target=&quot;_blank&quot;&gt;https://eu-datenschutz.org/&lt;/a&gt; ver&amp;ouml;ffentlichten Grundverordnung Folge zu leisten und seine Nutzer  entsprechend &amp;uuml;ber die Erfassung und Auswertung von Daten in Kenntnis zu  setzen. Die Rechtm&amp;auml;&amp;szlig;igkeit der Verarbeitung ist in Kapitel 2, Artikel 6  der DSGVO begr&amp;uuml;ndet.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Google Analytics&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Diese Website benutzt Google Analytics, einen Webanalysedienst der Google Inc. (&#39;&#39;Google&#39;&#39;). Google Analytics verwendet sog. &#39;&#39;Cookies&#39;&#39;, Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie erm&amp;ouml;glicht. Die durch den Cookie erzeugten Informationen &amp;uuml;ber Ihre Benutzung dieser Website (einschlie&amp;szlig;lich Ihrer IP-Adresse) wird an einen Server von Google in den USA &amp;uuml;bertragen und dort gespeichert. Google wird diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports &amp;uuml;ber die Websiteaktivit&amp;auml;ten f&amp;uuml;r die Websitebetreiber zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen zu erbringen. Auch wird Google diese Informationen gegebenenfalls an Dritte &amp;uuml;bertragen, sofern dies gesetzlich vorgeschrieben oder soweit Dritte diese Daten im Auftrag von Google verarbeiten. Google wird in keinem Fall Ihre IP-Adresse mit anderen Daten der Google in Verbindung bringen. Sie k&amp;ouml;nnen die Installation der Cookies durch eine entsprechende Einstellung Ihrer Browser Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht s&amp;auml;mtliche Funktionen dieser Website voll umf&amp;auml;nglich nutzen k&amp;ouml;nnen. Durch die Nutzung dieser Website erkl&amp;auml;ren Sie sich mit der Bearbeitung der &amp;uuml;ber Sie erhobenen Daten durch Google in der zuvor beschriebenen Art und Weise und zu dem zuvor benannten Zweck einverstanden.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Google AdSense&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; Diese Website benutzt Google Adsense, einen Webanzeigendienst der Google Inc., USA (&#39;&#39;Google&#39;&#39;). Google Adsense verwendet sog. &#39;&#39;Cookies&#39;&#39; (Textdateien), die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie erm&amp;ouml;glicht. Google Adsense verwendet auch sog. &#39;&#39;Web Beacons&#39;&#39; (kleine unsichtbare Grafiken) zur Sammlung von Informationen. Durch die Verwendung des Web Beacons k&amp;ouml;nnen einfache Aktionen wie der Besucherverkehr auf der Webseite aufgezeichnet und gesammelt werden. Die durch den Cookie und/oder Web Beacon erzeugten Informationen &amp;uuml;ber Ihre Benutzung dieser Website (einschlie&amp;szlig;lich Ihrer IP-Adresse) werden an einen Server von Google in den USA &amp;uuml;bertragen und dort gespeichert. Google wird diese Informationen benutzen, um Ihre Nutzung der Website im Hinblick auf die Anzeigen auszuwerten, um Reports &amp;uuml;ber die Websiteaktivit&amp;auml;ten und Anzeigen f&amp;uuml;r die Websitebetreiber zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen zu erbringen. Auch wird Google diese Informationen gegebenenfalls an Dritte &amp;uuml;bertragen, sofern dies gesetzlich vorgeschrieben oder soweit Dritte diese Daten im Auftrag von Google verarbeiten. Google wird in keinem Fall Ihre IP-Adresse mit anderen Daten der Google in Verbindung bringen. Das Speichern von Cookies auf Ihrer Festplatte und die Anzeige von Web Beacons k&amp;ouml;nnen Sie verhindern, indem Sie in Ihren Browser-Einstellungen &#39;&#39;keine Cookies akzeptieren&#39;&#39; w&amp;auml;hlen (Im MS Internet-Explorer unter &#39;&#39;Extras &amp;gt; Internetoptionen &amp;gt; Datenschutz &amp;gt; Einstellung&#39;&#39;; im Firefox unter &#39;&#39;Extras &amp;gt; Einstellungen &amp;gt; Datenschutz &amp;gt; Cookies&#39;&#39;); wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht s&amp;auml;mtliche Funktionen dieser Website voll umf&amp;auml;nglich nutzen k&amp;ouml;nnen. Durch die Nutzung dieser Website erkl&amp;auml;ren Sie sich mit der Bearbeitung der &amp;uuml;ber Sie erhobenen Daten durch Google in der zuvor beschriebenen Art und Weise und zu dem zuvor benannten Zweck einverstanden.&lt;/p&gt;\r\n&lt;br /&gt; Impressum vom &lt;a href=&quot;https://www.impressum-generator.de&quot;&gt;Impressum Generator&lt;/a&gt; der &lt;a href=&quot;https://www.kanzlei-hasselbach.de/&quot;&gt;Kanzlei Hasselbach, Rechtsanw&amp;auml;lte f&amp;uuml;r Arbeitsrecht und Familienrecht&lt;/a&gt;&lt;/div&gt;' WHERE `cc1_pages`.`id` = 2;

DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 2;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 3;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 4;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 10;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 12;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 15;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 16;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 17;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 19;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 21;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 22;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 23;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 24;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 25;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 26;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 27;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 28;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 29;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 30;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 31;
DELETE FROM `cc1_menu_game` WHERE `cc1_menu_game`.`menu_game_id` = 32;

INSERT INTO `cc1_menu_game` (`menu_game_id`, `menu_game_name`, `menu_game_link`, `modul_id`, `sort_order`, `menu_art_id`, `ingame`, `optional_parameter`, `design_id`) VALUES
(2, 'News', '[LITO_BASE_MODUL_URL]news/news.php', 12, 3, 0, 0, '', 1),
(3, 'Screenshots', '[LITO_BASE_MODUL_URL]pagemanager/page.php?name=screen', 12, 4, 0, 0, '', 1),
(4, 'Registrieren', '[LITO_BASE_MODUL_URL]register/register.php', 12, 5, 0, 0, '', 1),
(10, 'Spionage', '[LITO_BASE_MODUL_URL]spionage/spion.php', 12, 24, 2, 1, '', 1),
(12, 'Verteidigung Bauen', '[LITO_BASE_MODUL_URL]build_deff/build_deff.php', 12, 21, 2, 1, '', 1),
(15, 'Einstellungen', '[LITO_BASE_MODUL_URL]members/members.php?action=edituserdata', 12, 10, 0, 1, '', 1),
(16, 'Weltkarte', '[LITO_BASE_MODUL_URL]map/map.php', 12, 8, 0, 1, '', 1),
(17, 'Bauen', '[LITO_BASE_MODUL_URL]buildings/buildings.php', 12, 18, 2, 1, '', 1),
(19, 'Forschung', '[LITO_BASE_MODUL_URL]exploring/exploring.php', 12, 19, 2, 1, '', 1),
(21, 'Gruppen', '[LITO_BASE_MODUL_URL]grouping/grouping.php', 12, 23, 2, 1, '', 1),
(22, 'Ausbildung', '[LITO_BASE_MODUL_URL]build_units/build_units.php', 12, 20, 2, 1, '', 1),
(23, 'Techtree', '[LITO_BASE_MODUL_URL]techtree/techtree.php', 12, 9, 0, 1, '', 1),
(24, '&Uuml;bersicht', '[LITO_BASE_MODUL_URL]members/members.php', 12, 6, 0, 1, '', 1),
(25, 'Usersuche', '[LITO_BASE_MODUL_URL]search/search.php', 12, 13, 1, 1, '', 1),
(26, 'Ranking', '[LITO_BASE_MODUL_URL]ranking/ranking.php ', 12, 14, 1, 1, '', 1),
(27, 'Startseite', '[LITO_ROOT_PATH_URL]index.php', 12, 2, 0, 0, '', 1),
(28, 'Nachrichten', '[LITO_BASE_MODUL_URL]message/message.php', 12, 7, 0, 1, '', 1),
(29, 'Land gr&uuml;nden', '[LITO_BASE_MODUL_URL]new_land/new_land.php', 12, 25, 2, 1, '', 1),
(30, 'Kampf', '[LITO_BASE_MODUL_URL]battle/battle.php', 12, 22, 2, 1, '', 1),
(31, 'Allianz', '[LITO_BASE_MODUL_URL]alliance/alliance.php', 12, 15, 1, 1, '', 1),
(32, 'Ali Forum', '[LITO_BASE_MODUL_URL]forum/forum.php', 12, 16, 1, 1, '', 1),
(33, 'Logout', '[LITO_BASE_MODUL_URL]login/logout.php', 12, 11, 0, 1, '', 1);