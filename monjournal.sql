CREATE USER IF NOT EXISTS 'monjournal'@'localhost' IDENTIFIED BY 'password';
GRANT USAGE ON *.* TO 'monjournal'@'localhost';

CREATE DATABASE IF NOT EXISTS `monjournal`;

GRANT ALL PRIVILEGES ON `monjournal`.* TO 'monjournal'@'localhost'; 

USE `monjournal`;

CREATE TABLE IF NOT EXISTS `monjournal`.`auteur` ( 
	`identifiant` VARCHAR(50) NOT NULL , 
	`motdepasse` VARCHAR(200) NOT NULL , 
	`prenom` VARCHAR(50) NOT NULL , 
	`nom` VARCHAR(50) NOT NULL , 
	PRIMARY KEY (`identifiant`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `monjournal`.`article` (
	`id` INT NOT NULL AUTO_INCREMENT , 
	`titre` VARCHAR(255) NOT NULL , 
	`intro` TEXT NOT NULL , 
	`texte` TEXT NOT NULL , 
	`date_publication` DATETIME NOT NULL , 
	`auteur` VARCHAR(50) NOT NULL , PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `auteur` (`identifiant`, `motdepasse`, `prenom`, `nom`) VALUES ('elanglet', 'password', 'Etienne', 'LANGLET');

INSERT INTO `article` (`id`, `titre`, `intro`, `texte`, `date_publication`, `auteur`) VALUES (NULL, 'Premier article de MonJournal !', 'Un article passionnant à lire en cliquant sur le lien ci-dessous ! :)', 'Ce site est propulsé en PHP grâce à Symfony. Symfony est le meilleur framework PHP pour construire des sites et applications Web !!!', '2021-04-04 17:46:25', 'elanglet');
