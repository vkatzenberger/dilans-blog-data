<<<<<<< HEAD
# Dilan's Travel Blog Data Analysis Project

Welcome to the data analysis project for Dilan's Travel Blog, a fictional travel blog. This repository contains data analysis and machine learning models to understand the blog's user base and their tendencies. The project leverages various statistical and machine learning techniques to derive insights and predict future trends.

This was the final task for the Tomi Mester (Data36) Junior Data Scientist Academy course in 2024. My data analysis involved using Bash for data collection and cleaning, SQL for creating tables and executing simple queries, and Python for complex data analysis. I used Jupyter Notebook for complex data analysis with Python Pandas and Numpy, Scikit libraries. It included distribution analysis, cohort analysis, linear and polynomial regression to predict the number of readers, and Random Forest classification to predict the returning users and potential customers.

## Files

- `1_Bash_code.sh` - Bash script for getting and cleaning the data.
- `2_SQL_code.sql` - SQL code for creating tables.
- `3_Python_Pandas_Jupyter.ipynb` - Complex data analysis with Python Pandas.
- `4_Readers_Prediction_with_Regression.ipynb` - Linear and polynomial regression with Python Numpy.
- `5_Readers_Classification_Random_Forest.ipynb` - Preprocessing data, creating the random forest model to predict returning users and potential customers, and visualization.
- `6_Daily_Trends.xlsx` - Data imported into Excel to create charts.
- `7_Distribution_Analysis.xlsx` - Data imported into Excel to create charts.
- `8_Final_Task_Dilan's_Travel_Guide.pdf` - Final task summary presentation
- `dilans_data.csv` - Data set after preprocessing.
- `dilans_raw.csv` - Data set in raw format.
- `time_to_date.sh` - Bash script to split time column into date format.
- `topic_mod.sh` - Bash script to change topic column.

## Task Description

Dilan wants to spend more time and more money on his business. He wants to focus on one country first.

1. In which country should he prioritise his effort and why?
2. Any other advice to Dilan on how to be smart with his investments based on the data from the last 3 months?
3. Can you see any more interesting information (beyond the above 2 questions) in the data from which Dilan could profit?

## Business Details

Dilan is a world traveler and a solo entrepreneur. He writes a travel blog where he sells info products: a $8 e-book (World Travelers’ Best Practices) and a $80 video course (How To Travel the World).

On his blog he has thousands of readers every day, coming from three sources: Reddit, SEO and AdWords.

Dilan writes about his travel experiences covering the 6 main continents of the planet – these are the main categories on the blog.

The business strategy is simple:

1. New readers visit the blog.
2. They read articles.
3. They subscribe to the newsletter.
4. They purchase the info products.

Dilan’s travel blog is available in 8 (and only 8) different countries.

The marketing budget is not too high at the moment: Dilan spends only ~$1000 a month combined:
- for Adwords advertisement (~$500 a month for paid ads),
- for SEO (~$250 a month for editing), and
- for Reddit (~$250 a month for content creation)

And he only has two products!

He wants to invest more (time, work and money). But how to do that the most efficiently? What should he focus on?

## Data Structure

The whole data log is one big file. You don’t have to worry about automation and refreshing the data.

This is the .csv file. The field separator is a semi-colon (;).

1. The first column is the date and the time of the event, in this format: YYYY-MM-DD HH:MM:SS (eg. 2018-03-30 23:48:48).
2. The second column is the event type. There are three different event types: read, subscribe, buy
3. The rest of the columns depend on the event type:
    - For read there are two options:
        - If this is the first visit from the given user, then the next fields are: country; user_id; source; topic
        - If it’s a returning reader, then these are the fields: country; user_id; topic
    - For subscribe there is only one additional column: user_id
    - For buy there are two more columns: user_id and the price of the product the user bought.

Examples for each event type:

- First time reader: `2018-03-30 23:59:56;read;country_5;2458361283;Reddit;Asia`
- Returning reader: `2018-03-31 05:04:50;read;country_4;2458361208;Africa`
- Subscriber: `2018-03-30 23:48:48;subscribe;2458173588`
- Purchase: `2018-03-30 23:11:30;buy;2458339835;80`

The country column has 8 different values:
- country_1
- country_2
- country_3
- country_4
- country_5
- country_6
- country_7
- country_8

The source column has 3 different values:
- Reddit
- AdWords
- SEO

The topic column:
- Africa
- Europe
- South America
- North America
- Australia
- Asia

The course price column:
- 8
- 80
=======
# dilans-blog-data
>>>>>>> a75d34573f0f3036f44ee22befeba3c6ae79a080
