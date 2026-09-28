--4 venues have duplicated
--venue.venues



DROP VIEW IF EXISTS v_venues_clean;

CREATE VIEW v_venues_clean AS
WITH ranked AS (
    SELECT venue_id, venue, city,
           ROW_NUMBER() OVER (               --1,2 in each group
               PARTITION BY venue            --same  name = Same ground 
               ORDER BY CASE WHEN city IS NULL OR TRIM(city) = ''
                             THEN 1 ELSE 0 END,--a city comes first 
                             -- then the lowest id
                        venue_id
           ) AS rn
    FROM venues               -- the source table 
)
SELECT venue_id, venue, city
FROM ranked
WHERE rn = 1;