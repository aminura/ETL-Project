# ETL-Project
by Arunima Menon, Allison Bolger and Cristina Iacob

**Data Sources:**

We decided to start with 3 sets of data :
1. The Daily Wheat Price from 2009 -2014 from Kaggle: https://www.kaggle.com/neuromusic/avocado-prices
2. Historical Data on Avocado prices and sales volume in multiple markets from Kaggle: https://www.kaggle.com/nickwong64/daily-wheat-price
3. Home Prices in Top US Metros were sourced from Kiplinger: https://www.kiplinger.com/tool/real-estate/T010-S003-home-prices-in-100-top-u-s-metro-areas/index.php

The aim was to find a sync between the three, leading to a possible interpretation of which cities have more of a likelihood of having reasonably priced avocado toast and affordable home prices.


## (E)xtracting Data:
Data from Kiplinger was extracted using Web Scraping technique with Pandas and Beautifulsoup and the rest were csv files downloaded from Kaggle. 

## (T)ransforming Data:
Data was loaded and then cleaned up using Jupyter notebooks and Pandas, putting them into dataframes that exposed their common headers. It was then found that common points were shared in avocado prices and in the home prices data as both had city data as well as prices whereas the wheat price data did not include cities. We then decided to focus on only the two sources of data - Avocado Prices and Home Prices with their locations in order to find our results.

Transformations for House Prices data:
* selected and renamed only desired attributes (columns): "Metro Area" and "Median Home Price"
* splited "Metro Area" data in 2 separated columns: "City" and "State" and kept only "City"
* cleanup data by removing with regex unwanted characters from some records

Transformations for Avocado data:
* calculated the median price for avocado per region
* made a copy of data only with the attributes of interest: "AveragePrice" and "region"
* renamed the columns

## (L)oading to Postgres:
Since the data was already tubular we used PostgreSQL with pgAdmin to create (schema.sql), load the dataframes and aggregate the tables. The tables were joined on the cities with the final result being a table with city, avocado prices, and median home prices.

Analysis:
23 cities were found common between avocado prices and housing prices. Avocado prices did not vary by too much so we decided to take the lowest median home price which corresponds to Syracuse, NY. 

_**The best city for Millenials to be able to afford a house and eat daily avocado toast would be Syracuse, NY!**_









