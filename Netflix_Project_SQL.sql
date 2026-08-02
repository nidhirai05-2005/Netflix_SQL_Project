-- Create DataBase
CREATE DATABASE netflix_project;
USE netflix_project;

-- Create the Table
CREATE TABLE netflix (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director TEXT,
    casts TEXT,
    country TEXT,
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

DESCRIBE netflix;

-- Import the CSV File
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/netflix_titles.csv"
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(show_id,type,title,director,casts,country,date_added,release_year,rating,duration,listed_in,description);

SELECT * FROM netflix limit 5;

SELECT COUNT(*) FROM netflix;


-- Question for the Netflix dataset?

-- Question:1 How many titles are available on Netflix?
SELECT COUNT(*) AS total_titles
FROM netflix;

-- Question:2 What is the distribution of Movies and TV Shows?
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

-- Question:3 Which Netflix titles were produced in India?
SELECT title, type
FROM netflix
WHERE country = 'India';

-- Question:4 Which titles have a TV-MA rating?
SELECT title, type
FROM netflix
WHERE rating = 'TV-MA';

-- Question:5 What content was released in 2021?
SELECT title, type
FROM netflix
WHERE release_year = 2021;

-- Question:6 Which countries contribute the most Netflix content?
SELECT country, COUNT(*) AS total_titles
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Question:7 What are the most common content ratings on Netflix?
SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;

-- Question:8 Which movies have a duration greater than 120 minutes?
SELECT title, duration
FROM netflix
WHERE type = 'Movie'
AND CAST(REPLACE(duration,' min','') AS UNSIGNED) > 120;

-- Question:9 How has Netflix content grown over time?
SELECT YEAR(STR_TO_DATE(date_added,'%M %d, %Y')) AS year_added,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY year_added
ORDER BY year_added;

-- Question:10 Which titles do not have director information?
SELECT title
FROM netflix
WHERE director IS NULL
   OR director = '';

-- Question:11 Who are the most featured directors on Netflix?
SELECT director, COUNT(*) AS total_titles
FROM netflix
WHERE director IS NOT NULL
  AND director <> ''
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- Question:12 Which genres/categories are most common?
SELECT listed_in, COUNT(*) AS total_titles
FROM netflix
GROUP BY listed_in
ORDER BY total_titles DESC;

-- Question:13 What is the oldest title available on Netflix?
SELECT title, release_year
FROM netflix
ORDER BY release_year ASC
LIMIT 1;

-- Question:14 How many movies were released after 2015?
SELECT COUNT(*) AS total_movies
FROM netflix
WHERE type = 'Movie'
AND release_year > 2015;

-- Question:15 How many Movies and TV Shows does each country contribute?
SELECT country,
       SUM(CASE WHEN type='Movie' THEN 1 ELSE 0 END) AS movies,
       SUM(CASE WHEN type='TV Show' THEN 1 ELSE 0 END) AS tv_shows
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY movies DESC;

-- Question:16 Which Month Has the Highest Number of Content Additions?
SELECT 
    MONTHNAME(STR_TO_DATE(date_added, '%M %d, %Y')) AS month_added,
    COUNT(*) AS total_content
FROM netflix
WHERE date_added IS NOT NULL
GROUP BY month_added
ORDER BY total_content DESC;

-- Question:17 What Percentage of Netflix Content is Movies vs TV Shows?
SELECT
    type,
    COUNT(*) AS total_titles,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM netflix),
        2
    ) AS percentage
FROM netflix
GROUP BY type;

-- Question:18 Which Actor Appears Most Frequently on Netflix?
WITH RECURSIVE actor_split AS (
    SELECT
        show_id,
        TRIM(SUBSTRING_INDEX(casts, ',', 1)) AS actor,
        SUBSTRING(casts,
                  LENGTH(SUBSTRING_INDEX(casts, ',', 1)) + 2) AS remaining
    FROM netflix
    WHERE casts IS NOT NULL

    UNION ALL

    SELECT
        show_id,
        TRIM(SUBSTRING_INDEX(remaining, ',', 1)),
        SUBSTRING(remaining,
                  LENGTH(SUBSTRING_INDEX(remaining, ',', 1)) + 2)
    FROM actor_split
    WHERE remaining <> ''
)

SELECT actor,
       COUNT(*) AS appearances
FROM actor_split
WHERE actor <> ''
GROUP BY actor
ORDER BY appearances DESC
LIMIT 10;

-- Question:19 Which Genre is Most Popular in India?
SELECT listed_in,
       COUNT(*) AS total_titles
FROM netflix
WHERE country LIKE '%India%'
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- Question:20 What Are the Top 5 Years With the Highest Content Releases?
SELECT release_year,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 5;