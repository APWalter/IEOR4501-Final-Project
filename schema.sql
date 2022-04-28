
CREATE TABLE IF NOT EXISTS hourly_weather
(
    `DATE` DATE PRIMARY KEY,
    HourlyPrecipitation FLOAT,
    HourlyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS daily_weather
(
    `DATE` DATE PRIMARY KEY,
    DailyAverageWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS uber_data
(
    pickup_datetime DATE PRIMARY KEY,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT
);

CREATE TABLE IF NOT EXISTS taxi_data
(
    pickup_datetime DATE PRIMARY KEY,
    trip_distance FLOAT
);
