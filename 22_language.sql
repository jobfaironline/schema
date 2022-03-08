DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` char(3) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `language` VALUES 
('af','Afrikaans'),
('ar','Arabic'),
('az','Azeri'),
('be','Belarusian'),
('bg','Bulgarian'),
('ca','Catalan'),
('cs','Czech'),
('cy','Welsh'),
('da','Danish'),
('de','German'),
('dv','Divehi'),
('el','Greek'),
('en','English'),
('eo','Esperanto'),
('es','Spanish'),
('et','Estonian'),
('eu','Basque'),
('fa','Farsi'),
('fi','Finnish'),
('fo','Faroese'),
('fr','French'),
('gl','Galician'),
('gu','Gujarati'),
('he','Hebrew'),
('hi','Hindi'),
('hr','Croatian'),
('hu','Hungarian'),
('hy','Armenian'),
('id','Indonesian'),
('is','Icelandic'),
('it','Italian'),
('ja','Japanese'),
('ka','Georgian'),
('kk','Kazakh'),
('kn','Kannada'),
('ko','Korean'),
('kok','Konkani'),
('ky','Kyrgyz'),
('lt','Lithuanian'),
('lv','Latvian'),
('mi','Maori'),
('mk','FYRO Macedonian'),
('mn','Mongolian'),
('mr','Marathi'),
('ms','Malay'),
('mt','Maltese'),
('nb','Norwegian'),
('nl','Dutch'),
('ns','Northern Sotho'),
('pa','Punjabi'),
('pl','Polish'),
('ps','Pashto'),
('pt','Portuguese'),
('qu','Quechua'),
('ro','Romanian'),
('ru','Russian'),
('sa','Sanskrit'),
('se','Sami (Northern)'),
('sk','Slovak'),
('sl','Slovenian'),
('sq','Albanian'),
('sv','Swedish'),
('sw','Swahili'),
('syr','Syriac'),
('ta','Tamil'),
('te','Telugu'),
('th','Thai'),
('tl','Tagalog'),
('tn','Tswana'),
('tr','Turkish'),
('ts','Tsonga'),
('tt','Tatar'),
('uk','Ukrainian'),
('ur','Urdu'),
('uz','Uzbek (Latin)'),
('vi','Vietnamese'),
('xh','Xhosa'),
('zh','Chinese'),
('zu','Zulu');
