## ETL-Baseball

## Questions to be answered: 

     - How many home runs per player?
     - How did they do in Home vs Away games? 

## NOTE: Please create Databse on POSTgreSQL called "baseball_db" in order to run the rest of the queries. 

## Step-by-Step GUIDE: 
    
    1) Run kaggle_mlb jupyter notebook to get hr results 
    2) Run baseball_etl to get performance results 
    3) NOTE: import time, datetime, beautifulSoup 
    4) Run data_etl to load databases into PostgreSQL
    5) Refer to query.sql for final results  
    

## Data Cleanup & Analysis 

* The sources of data that you will extract from.

  - 2019 Atlanta Braves Schedule - https://www.baseball-reference.com/teams/ATL/2019-schedule-scores.shtml
  - 2019 Player Stats - https://www.kaggle.com/mur418/mlb-2019-player-stats-and-2020-player-projections/version/1
  
* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

  cleaning, filtering, and then joining

* The type of final production database to load the data into (relational or non-relational).
  
   relational -- POSTgreSQL

* The final tables or collections that will be used in the production database.
   
   schedule & hr

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.
  
  1) Find sources
  2) Decide whether the databases are considered as "Relational" or "Non-Relational" 
  3) Cleaning/Filtering 
  4) Loading into PostgreSQL for queries 
  
## Project Report 

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

  - We used Kaggle(csv) and Webscraping to get what we needed for this baseball analysis, which from the beginning, we knew that a player's   team will be the Primary Key for our database -- making it, relational. 

* **T**ransform: what data cleaning or transformation was required.

  - With Pandas, it was very simple to read in the Kaggle CSV, and immediately start to manipulate the data we were looking for. Surprisingly, manipulating time and datetime proved to be a huge challenge in our webscrape, however, once we figured out how to do that, it was easy to use beautifulsoup to manipulate the data in our favor. 
  

* **L**oad: the final database, tables/collections, and why this was chosen.

   - Loading in the csv files was very straight-forward; however, PostgreSQL was very temperamental in typecase. This probably took the most time in our debugging process. 
   

Overall, this was a great learning experience. 

