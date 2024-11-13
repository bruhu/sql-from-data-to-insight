CREATE DATABASE IF NOT EXISTS happines_world;

USE happines_world;

CREATE TABLE `freedom_index_clean` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `year` BIGINT NOT NULL,
    `countries` CHAR(255) NOT NULL,
    `ISO` CHAR(255) NOT NULL,
    `region` CHAR(255) NOT NULL,
    `hf_score` FLOAT(53) NOT NULL,
    `hf_rank` BIGINT NOT NULL,
    UNIQUE INDEX (countries)  -- Adding unique index to `countries` for foreign key constraint
);

CREATE TABLE `life_expectancy` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Country` CHAR(255) NOT NULL,
    `Year` BIGINT NOT NULL,
    `Life Expectance at Birth (Both Sexes)` FLOAT(53) NOT NULL,
    `Healthy Life Expectancy at Birth (Both Sexes)` FLOAT(53) NOT NULL,
    UNIQUE INDEX (Country)  -- Adding unique index to `Country` for foreign key constraint
);

CREATE TABLE `clean_2019` (  -- Renamed `2019_clean` to `clean_2019` to avoid issues with table names starting with numbers
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `rank` BIGINT NOT NULL,
    `country` CHAR(255) NOT NULL,
    `score` FLOAT(53) NOT NULL,
    `gdp` FLOAT(53) NOT NULL,
    `support` FLOAT(53) NOT NULL,
    `lfe_expectancy` FLOAT(53) NOT NULL,
    `freedom` FLOAT(53) NOT NULL,
    `generosity` FLOAT(53) NOT NULL,
    `corruption` FLOAT(53) NOT NULL,
    UNIQUE INDEX (country)  -- Adding unique index to `country` for foreign key constraint
);

CREATE TABLE `cleaned_gdp_data` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `entity` CHAR(255) NOT NULL,
    `code` CHAR(255) NOT NULL,
    `year` BIGINT NOT NULL,
    `gdp_per_capita_ppp` FLOAT(53) NOT NULL,
    UNIQUE INDEX (entity)  -- Adding unique index to `entity` for foreign key constraint
);

-- Adding foreign key constraints with unique names
ALTER TABLE `clean_2019`
ADD CONSTRAINT `clean_2019_country_foreign` FOREIGN KEY (`country`) REFERENCES `freedom_index_clean`(`countries`);

ALTER TABLE `freedom_index_clean`
ADD CONSTRAINT `freedom_index_clean_gdp_foreign` FOREIGN KEY (`countries`) REFERENCES `cleaned_gdp_data`(`entity`);

ALTER TABLE `freedom_index_clean`
ADD CONSTRAINT `freedom_index_clean_life_expectancy_foreign` FOREIGN KEY (`countries`) REFERENCES `life_expectancy`(`Country`);
