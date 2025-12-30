SELECT location, 
       AVG(price) AS avg_rent,
       AVG(views) AS avg_views,
       AVG(leads) AS avg_leads,
       (AVG(leads)/AVG(views))*100 AS conversion_rate
FROM listings_data
GROUP BY location
ORDER BY conversion_rate DESC;
