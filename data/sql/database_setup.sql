CREATE DATABASE IF NOT EXISTS happiness_world;

USE happiness_world;

CREATE TABLE `freedom_index` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `year` INT NOT NULL,
    `countries` CHAR(255) NOT NULL,
    `ISO` CHAR(255) NOT NULL,
    `region` CHAR(255) NOT NULL,
    `hf_score` FLOAT(53) NOT NULL,
    `hf_rank` INT NOT NULL,
    UNIQUE INDEX (countries) 
);

CREATE TABLE `life_expectancy` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Country` CHAR(255) NOT NULL,
    `Year` INT NOT NULL,
    `Life Expectance at Birth (Both Sexes)` FLOAT(53) NOT NULL,
    `Healthy Life Expectancy at Birth (Both Sexes)` FLOAT(53) NOT NULL,
    UNIQUE INDEX (Country)  
);

CREATE TABLE `happiness_score` (  
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `rank` INT NOT NULL,
    `country` CHAR(255) NOT NULL,
    `score` FLOAT(53) NOT NULL,
    `gdp` FLOAT(53) NOT NULL,
    `support` FLOAT(53) NOT NULL,
    `lfe_expectancy` FLOAT(53) NOT NULL,
    `freedom` FLOAT(53) NOT NULL,
    `generosity` FLOAT(53) NOT NULL,
    `corruption` FLOAT(53) NOT NULL,
    UNIQUE INDEX (country)  
);

CREATE TABLE `gdp` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `entity` CHAR(255) NOT NULL,
    `code` CHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `gdp_per_capita_ppp` FLOAT(53) NOT NULL,
    UNIQUE INDEX (entity)  
);

-- Adding foreign key constraints with unique names
ALTER TABLE `happiness_score`
ADD CONSTRAINT `happiness_score_country_foreign` FOREIGN KEY (`country`) REFERENCES `freedom_index`(`countries`);

ALTER TABLE `freedom_index_clean`
ADD CONSTRAINT `freedom_index_gdp_foreign` FOREIGN KEY (`countries`) REFERENCES `gdp`(`entity`);

ALTER TABLE `freedom_index_clean`
ADD CONSTRAINT `freedom_index_life_expectancy_foreign` FOREIGN KEY (`countries`) REFERENCES `life_expectancy`(`Country`);
