# Netflix Data Analysis Using SQL

## Project Overview
This project focuses on analyzing a Netflix Movies and TV Shows dataset using **MySQL** to discover meaningful insights about Netflix content.
The analysis explores content distribution, countries, ratings, genres, release years, directors, actors, content additions, and other key trends using SQL queries.
The main objective of this project is to demonstrate practical **SQL and Data Analysis skills** by transforming raw Netflix data into meaningful insights.


## Objectives
The key objectives of this project are:

* Analyze the distribution of Movies and TV Shows.
* Identify countries contributing the most Netflix content.
* Analyze Netflix content ratings and genres.
* Identify the oldest and most frequently added content.
* Analyze Netflix content growth over time.
* Find movies with longer durations.
* Identify directors with the most titles.
* Analyze actor appearances.
* Compare Movies and TV Shows by country.
* Analyze content additions by month and year.
* Calculate the percentage distribution of Movies and TV Shows.


## Dataset
The dataset contains information about Netflix Movies and TV Shows.

### Important Columns
| Column         | Description                          |
| -------------- | ------------------------------------ |
| `show_id`      | Unique ID of the title               |
| `type`         | Movie or TV Show                     |
| `title`        | Name of the title                    |
| `director`     | Director of the title                |
| `casts`        | Cast/actors                          |
| `country`      | Country where the title was produced |
| `date_added`   | Date the title was added to Netflix  |
| `release_year` | Original release year                |
| `rating`       | Content rating                       |
| `duration`     | Movie duration or TV Show seasons    |
| `listed_in`    | Genre/category                       |
| `description`  | Description of the title             |


## Tools & Technologies
* **MySQL**
* **SQL**
* **GitHub**
* Netflix Movies & TV Shows Dataset


## SQL Concepts Used
This project covers both basic and advanced SQL concepts:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `CASE WHEN`
* `DISTINCT`
* `IS NULL`
* `LIKE`
* String Functions
* Date Functions
* `CAST()`
* Subqueries
* Common Table Expressions (CTEs)
* Recursive CTE
* Conditional Aggregation
* Data Cleaning
* Data Transformation


## Analysis Performed

### 1. Total Netflix Titles
Calculated the total number of Movies and TV Shows available in the dataset.

### 2. Movies vs TV Shows
Analyzed the distribution of Netflix content based on content type.

### 3. Indian Content
Identified Netflix titles produced in India.

### 4. TV-MA Content
Filtered titles with a `TV-MA` rating.

### 5. Content Released in 2021
Identified Movies and TV Shows released in 2021.

### 6. Top Content-Producing Countries
Identified the top 10 countries contributing the most Netflix content.

### 7. Content Ratings
Analyzed the most common ratings available in the dataset.

### 8. Long Movies
Identified movies with a duration greater than 120 minutes by converting the duration text into a numeric value.

### 9. Content Growth Over Time
Analyzed how Netflix content additions changed year by year.

### 10. Missing Director Information
Identified titles where director information was missing.

### 11. Most Featured Directors
Found directors associated with the highest number of titles.

### 12. Most Common Genres
Analyzed the most frequently occurring Netflix categories and genres.

### 13. Oldest Netflix Title
Identified the oldest title based on its release year.

### 14. Movies Released After 2015
Calculated the number of movies released after 2015.

### 15. Movies vs TV Shows by Country
Used conditional aggregation with `CASE WHEN` to compare Movies and TV Shows across countries.

### 16. Monthly Content Additions
Analyzed which months had the highest number of Netflix content additions.

### 17. Movie vs TV Show Percentage
Caculated the percentage contribution of Movies and TV Shows to the total Netflix content library.

### 18. Most Frequently Appearing Actors
Used a **Recursive CTE** to split the cast column and identify actors appearing most frequently.

### 19. Popular Genres in India
Analyzed the most common Netflix genres associated with Indian content.

### 20. Top 5 Release Years
Identified the five years with the highest number of titles released.


## Key Insights
The analysis helps answer questions such as:

* How many titles are available in the dataset?
* What is the ratio of Movies to TV Shows?
* Which countries contribute the most content?
* Which ratings are most common?
* Which genres appear most frequently?
* How has Netflix's content library changed over time?
* Which directors have the most titles?
* Which actors appear most frequently?
* Which months have the highest content additions?
* Which years had the highest number of releases?


## Project Structure

```text
Netflix-SQL-Data-Analysis/
│
├── dataset/
│   └── netflix_titles.csv
│
├── sql/
│   └── netflix_analysis.sql
│
├── README.md
│
└── screenshots/
    └── query_results.png
```


## Skills Demonstrated
Through this project, I demonstrated practical skills in:

* SQL Query Writing
* Data Exploration
* Data Cleaning
* Data Transformation
* Data Aggregation
* Analytical Thinking
* Pattern Identification
* Handling Missing Values
* String Manipulation
* Date Manipulation
* Advanced SQL
* Generating Business Insights


## Conclusion

This project provides a detailed analysis of Netflix Movies and TV Shows using **MySQL and SQL**. The analysis explores important aspects of Netflix's content library, including **Movies and TV Shows, countries, genres, ratings, directors, actors, release years, movie duration, and content addition trends**.

Through 20 analytical SQL queries, the project transforms raw Netflix data into meaningful insights. It identifies content distribution, major content-producing countries, commonly used ratings and genres, frequently featured directors and actors, release patterns, and the growth of Netflix's content over time.

The project also demonstrates the practical use of important SQL concepts such as **filtering, aggregation, GROUP BY, ORDER BY, CASE WHEN, string and date functions, subqueries, CTEs, and Recursive CTEs**.

Overall, this project demonstrates my ability to **analyze real-world data, solve business-oriented questions using SQL, identify meaningful patterns, and convert raw data into clear and understandable insights**. It strengthened my practical SQL and data analysis skills and provided hands-on experience relevant to a **Data Analyst role**.

