SELECT FirstName, LastName, Country, 
    CASE "Country"
        WHEN 'Brazil' THEN 'America'
        WHEN 'Germany' THEN 'Europe'
        WHEN 'Canada' THEN 'America'
        WHEN 'Norway' THEN 'Europe'
        WHEN 'Austria' THEN 'Europe'
        WHEN 'Belgium' THEN 'Europe'
        WHEN 'Denmark' THEN 'Europe'
        WHEN 'Czech Republic' THEN 'Europe'
        WHEN 'France' THEN 'Europe'
        WHEN 'Finland' THEN 'Europe'
        WHEN 'Hungary' THEN 'Europe'
        WHEN 'Ireland' THEN 'Europe'
        WHEN 'Italy' THEN 'Europe'
        WHEN 'Netherlands' THEN 'Europe'
        WHEN 'Poland' THEN 'Europe'
        WHEN 'Chile' THEN 'America'
        WHEN 'India' THEN 'Asia'
        WHEN 'USA' THEN 'America'
        WHEN 'Portugal' THEN 'Europe'
        WHEN 'Spain' THEN 'Europe'
        WHEN 'United Kingdom' THEN 'Europe'
        WHEN 'Sweden' THEN 'Europe'
        WHEN 'Australia' THEN 'Oceania'
        WHEN 'Argentina' THEN 'America'
        ELSE 'autre'
    END AS 'Continent'
FROM customers