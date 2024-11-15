# SQL Database Mini Project: Insights from Global Happiness Scores

## Overview

In this mini project, we will explore the world of SQL and Python by creating and populating a database, then using SQL queries and Python visualizations to derive meaningful insights. 
The project revolves around analyzing global happiness scores, exploring factors that influence these scores, and making recommendations to improve quality of life worldwide.

## Project Structure

- `data/`: Contains all raw and clean datasets used in the project.
- `scripts/`: SQL scripts for database creation, data import, and queries.
- `notebooks/`: Jupyter notebooks for data exploration and visualization.
- `README.md`: Project overview and documentation.

## Datasets:
For this project, we used 4 datasets, the main dataset was the world happiness ranking and score. We also add three datasets for GDP per capita, freedom score and life expectancy to examine the correlations between these indexes and happiness score. You can find the datasets here:

https://www.kaggle.com/datasets/unsdsn/world-happiness/data

https://www.cato.org/human-freedom-index/2021

https://apps.who.int/gho/data/view.main.SDG2016LEXv?lang=en

https://ourworldindata.org/grapher/gdp-per-capita-worldbank?tab=table&time=2019&showSelectionOnlyInTable=1

## Data Description

- World Happiness Data: Contains yearly happiness scores by country with factors such as GDP, social support, life expectancy.
- Freedom Score: Measures civil liberties and personal freedom, sourced from Cato Institute.
- Life Expectancy: Average life expectancy by country, sourced from the WHO.
- GDP per Capita: Yearly GDP per capita by country, sourced from World Bank.

## Key Objectives

- Data Exploration: Identify factors that affect happiness scores around the world.
- Business Insights: Propose strategies for businesses to target regions with low happiness scores and expand services where they are most needed.
- Visualization: Use Python to create compelling visualizations that illustrate our findings.

## Setup

To see the database, you can use the Database.sql file in MySQL Workbench to import the database structure, tables and its contents into MySQL. 

## Tools:

- Database: MySQL Workbench(for creating and managing the database)
- Python: Jupyter Notebooks, Pandas, Matplotlib, Seaborn
- Git: Version control for managing the codebase

## Key Findings

- Happiness is strongly linked to GDP and life expectancy index.. 
- The happiness score is higher in West Europe, North America and Australia compared to other parts of the world.


## Presentation:
https://www.canva.com/design/DAGWYPWUKak/9ymTiWSLJocxl6_z_4DWBQ/edit

## The Team

- Amir
- Bru
- Filip
- Marc

## Future Work

- Integrate additional indicators like education and healthcare quality.
- Explore time-series analysis to observe changes in happiness over time.
