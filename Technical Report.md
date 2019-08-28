# ETL-Project

Data Sources for Extraction

We decided to start with 3 sets of data :
1. The Daily Wheat Price from 2009 -2014 from Kaggle
2. Historical Data on Avocado prices and sales volume in multiple markets from Kaggle
3. Home Prices in Top US Metros from Kiplinger

The aim was to find a sync between the three, leading to a possible interpretation of which cities have more of a likelihood of having reasonably priced Avocado toast and affordable home prices.


Data Cleanup & Analysis

Data from all 3 sources was cleaned up using Jupyter notebooks and Pandas, putting them into dataframes that exposed their common headers. It was then found that common points were shared in Avocado prices and in the Home prices data as both had city data as well as prices whereas the wheat price data did not include cities. We then decided to focus on only the two sources of data - Avocado Prices and Home Prices with their locations in order to find our results.

We then used SQL with pgAdmin to load the dataframes and aggregate the tables. The tables were joined on the cities with the final result being a table with city, avocado prices, and median home prices.

Results
23 cities were found common between Avocado prices and Housing prices. Avocado prices did not vary by too much and so we decided to take the lowest home prices which are in Syracuse, NY. The best city for Millenials to be able to afford a house and eat Avocado toast would be Syracuse, NY. 









