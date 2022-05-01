# IEOR4501-Final-Project
Final Project for TFA
Group 20 - Aryeh Walter, Hanmo Wang, Shiaho Duan
            “UNIs: [apw2149, hw2844, sd3427]”

## General 

This project aims to find the relationship between Uber and Yellow Taxi cabs for the years 2009-2015, and if weather had any impact. We scraped data for weather and yellow taxi rides and cleaned them as seen appropriate. We also uploaded and cleaned Uber data between the specified years. Next, we created an SQLite database to store all of the data. After this, we were ready to begin answering the questions that the project set out to do: 
1. For 01-2009 through 06-2015, what hour of the day was the most popular to take a Yellow Taxi? The result should have 24 bins.
2. For the same time frame, what day of the week was the most popular to take an Uber? The result should have 7 bins.
3. What is the 95% percentile of distance traveled for all hired trips during July 2013?
4. What were the top 10 days with the highest number of hired rides for 2009, and what was the average distance for each day?
5. Which 10 days in 2014 were the windiest on average, and how many hired trips were made on those days?
6. During Hurricane Sandy in NYC (Oct 29-30, 2012), plus the week leading up and the week after, how many trips were taken each hour, and for each hour, how much precipitation did NYC receive and what was the sustained wind speed? There should be an entry for every single hour, even if no rides were taken, no precipitation was measured, or there was no wind.

After answering these questions, we set out to visualize the data, to further make sense of the results. 


## 1. Data Pre-processing

This section is the setup for the rest of the project. Its primary objectives 
