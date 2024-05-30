SELECT COUNT(DISTINCT id) AS UNIQUE_iD
FROM appstore_data;

SELECT COUNT(DISTINCT id) AS UNIQUE_iD
FROM appstore_description;

--CHECKING FOR THE MISSING VALUES

SELECT COUNT(*) AS MISSING_VALUES
FROM appstore_data
WHERE track_name IS NULL OR user_rating IS NULL OR prime_genre IS NULL;

SELECT COUNT(*) AS MISSING_VALUES
FROM appstore_description
WHERE app_desc IS NULL;

--Genre wise frequency distribution of the apps
SELECT prime_genre, COUNT(*) AS numberOfApps
FROM appstore_data GROUP BY prime_genre;

--Getting general insights from the ratings given by users
SELECT 	MIN(user_rating) AS MIN_RATING,
		MAX(user_rating) AS MAX_RATING,
		AVG(user_rating) AS AVG_RATING
FROM appstore_data;

--RATING DISTRIBUTION
SELECT user_rating, COUNT(*) AS rating_distribution
FROM appstore_data GROUP BY user_rating
ORDER BY rating_distribution DESC;

--TO CHECK WHETHER PAID APPS HAVE HIGHER RATING THAN FREE APPS
SELECT 
CASE
	WHEN price > 0 THEN 'PAID APP'
	ELSE 'FREE APP'
	END AS App_Type,
	AVG(user_rating) AS Avg_User_Rating
FROM appstore_data
GROUP BY App_Type;

--TO CHECK IF APPS THAT SUPPORT MORE LANGUAGES HAVE HIGHER RATING
SELECT
CASE
	WHEN lang_num < 10 THEN '<10 LANGUAGES'
	WHEN lang_num BETWEEN 10 AND 30 THEN '10-30 LANGUAGES'
	ELSE '>30 LANGUAGES'
	END AS NumberofLanguages,
	AVG(user_rating) AS Avg_User_Rating
FROM appstore_data
GROUP BY NumberofLanguages
ORDER BY Avg_User_Rating DESC;

--TO FIND PEOPLE ARE NOT SATISFIED WITH WHICH GENRE
SELECT 
prime_genre, 
AVG(user_rating) AS Avg_User_Rating
FROM appstore_data
GROUP BY prime_genre
ORDER BY Avg_User_Rating ASC
LIMIT 5;

--TO CHECK IF THERE IS A CORRELATION BETWEEN THE APP DESCRIPTION LENGTH AND THE USER RATING
SELECT 
CASE WHEN LENGTH(app_desc)<500 THEN 'SHORT'
	 WHEN LENGTH(app_desc) BETWEEN 500 AND 1000 THEN 'MEDIUM'
	 ELSE 'LONG'
	 END AS description_length,
AVG(user_rating) AS Avg_User_Rating
FROM appstore_data AS a
JOIN
appstore_description AS b
ON
a.id = b.id
GROUP BY description_length
ORDER BY Avg_User_Rating DESC;

