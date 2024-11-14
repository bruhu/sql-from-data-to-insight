
USE happines_world;

CREATE TABLE combined_data AS
SELECT 
    h.country,
    h.rank,
    h.score,
    l.Life_Expectance_at_Birth,
    g.gdp_per_capita_ppp,
    f.hf_score,
    f.hf_rank
FROM 
    happiness_score AS h
INNER JOIN 
    life_expectancy AS l ON h.country = l.Country
INNER JOIN 
    gdp AS g ON h.country = g.entity
INNER JOIN 
    freedom_index AS f ON h.country = f.countries;
    
USE happines_world;

-- Comparing gdp of top 10 and bottom 10 in happiness ranking.

WITH top_10_happiest AS (
    SELECT country, gdp_per_capita_ppp
    FROM happiness_score
    JOIN gdp ON happiness_score.country = gdp.entity
    ORDER BY happiness_score.rank ASC
    LIMIT 10
),
bottom_10_happiest AS (
    SELECT country, gdp_per_capita_ppp
    FROM happiness_score
    JOIN gdp ON happiness_score.country = gdp.entity
    ORDER BY happiness_score.rank DESC
    LIMIT 10
)

SELECT 
    AVG(top_10_happiest.gdp_per_capita_ppp) AS avg_gdp_top_10,
    AVG(bottom_10_happiest.gdp_per_capita_ppp) AS avg_gdp_bottom_10
FROM 
    top_10_happiest,
    bottom_10_happiest;
    
    -- Comparing hf_score of top 10 and bottom 10 in happiness ranking.
    
    WITH top_10_happiest AS (
    SELECT country, hf_score
    FROM happiness_score
    JOIN freedom_index ON happiness_score.country = freedom_index.countries
    ORDER BY happiness_score.rank ASC
    LIMIT 10
),
bottom_10_happiest AS (
    SELECT country, hf_score
    FROM happiness_score
    JOIN freedom_index ON happiness_score.country = freedom_index.countries
    ORDER BY happiness_score.rank DESC
    LIMIT 10
)

SELECT 
    AVG(top_10_happiest.hf_score) AS avg_hf_score_top_10,
    AVG(bottom_10_happiest.hf_score) AS avg_hf_score_bottom_10
FROM 
    top_10_happiest,
    bottom_10_happiest;

-- comparing te life expectancy for the top 10 and bottom 10 in happiness ranking:


 WITH top_10_happiest AS (
    SELECT country, Life_Expectance_at_Birth
    FROM happiness_score
    JOIN life_expectancy ON happiness_score.country = life_expectancy.CNT
    ORDER BY happiness_score.rank ASC
    LIMIT 10
),
bottom_10_happiest AS (
	SELECT country, Life_Expectance_at_Birth
    FROM happiness_score
    JOIN life_expectancy ON happiness_score.country = life_expectancy.CNT
    ORDER BY happiness_score.rank DESC
    LIMIT 10
)

SELECT 
    AVG(top_10_happiest.Life_Expectance_at_Birth) AS avg_le_score_top_10,
    AVG(bottom_10_happiest.Life_Expectance_at_Birth) AS avg_le_score_bottom_10
FROM 
    top_10_happiest,
    bottom_10_happiest;
    
    -- finish








