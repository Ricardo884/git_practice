-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

SELECT * FROM population_years
  WHERE country LIKE 'Gabon'
  ORDER BY population DESC
  LIMIT 1;
  
  -- Largest Population for Gabon is 1.54526

SELECT * FROM population_years
  WHERE year = '2005'
  ORDER BY population ASC
  LIMIT 10;
  
-- Lowest 10 Population Countries in 2005: NiueFalkland Islands (Islas Malvinas), Montserrat, Saint Pierre and Miquelon, Saint Helena, Nauru, Cook Islands, Turks and Caicos Islands, Virgin Islands, British, Gibraltar

SELECT * FROM population_years
  WHERE year = '2010'
    AND population >= 100;
    
-- Countries with over 100 million in 2010: Mexico, United States, Brazil, Russia, Nigeria, Bangladesh, China, India, Indonesia, Japan, Pakistan

SELECT DISTINCT country FROM population_years
  WHERE country LIKE '%Islands%';
  
--Countries with Islands in name: Cayman Islands, Falkland Islands (Islas Malvinas), Turks and Caicos Islands, Virgin Islands,  U.S., Virgin Islands, British, Faroe Islands, Cook Islands, Solomon Islands, U.S. Pacific Islands
  
  SELECT * FROM population_years
  WHERE country IS 'Indonesia'
	AND year = 2000
		OR country = 'Indonesia'
		AND year = 2010;
  
-- Difference is 28.29173