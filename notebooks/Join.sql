
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
    








