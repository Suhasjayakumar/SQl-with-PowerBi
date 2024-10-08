CREATE DATABASE bollywood;
USE bollywood;
CREATE TABLE bollywood_sequels (
    movie_title VARCHAR(255),
    release_year INT,
    box_office_cr DECIMAL(10,2)
);
INSERT INTO bollywood_sequels (movie_title, release_year, box_office_cr)
VALUES
('Drishyam II', 2022, 240.54),
('Bhool Bhulaiya II', 2022, 186),
('Badhaai Do', 2022, 21.29),
('Heropanti 2', 2022, 21.5),
('Khuda Haafiz: Chapter 2', 2022, 11.16),
('Ek Villain Returns', 2022, 43.21),
('Yaariyan 2', 2023, 2.5),
('Gadar 2', 2023, 525.7),
('Tiger 3', 2023, 276.6),
('Fukrey 3', 2023, 96.6),
('OMG 2', 2023, 151.16),
('Dream Girl 2', 2023, 106.7),
('1920: Horrors of the Heart', 2023, 14),
('Stree 2', 2024, 590),
('Kaagaz 2', 2024, 0.26),
('Love Sex Aur Dhokha 2', 2024, 0.95),
('Ishq Vishk Rebound', 2024, 4.75);

#Total Box Office Collection by Year
SELECT release_year, SUM(box_office_cr) AS total_box_office
FROM bollywood_sequels
GROUP BY release_year
ORDER BY release_year;

# Top 3 Highest-Grossing Sequels
SELECT movie_title, box_office_cr
FROM bollywood_sequels
ORDER BY box_office_cr DESC
LIMIT 3;

# Average Box Office Collection by Year
SELECT release_year, AVG(box_office_cr) AS avg_box_office
FROM bollywood_sequels
GROUP BY release_year
ORDER BY release_year;

#Sequels Earning Less than 50 Crores
SELECT movie_title, box_office_cr
FROM bollywood_sequels
WHERE box_office_cr < 50;

#Year-on-Year Performance Comparison
SELECT release_year, 
       SUM(CASE WHEN release_year = 2022 THEN box_office_cr ELSE 0 END) AS box_office_2022,
       SUM(CASE WHEN release_year = 2023 THEN box_office_cr ELSE 0 END) AS box_office_2023,
       SUM(CASE WHEN release_year = 2024 THEN box_office_cr ELSE 0 END) AS box_office_2024
FROM bollywood_sequels
GROUP BY release_year;
 







