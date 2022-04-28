
CREATE TABLE IF NOT EXISTS hourly_weather
(
    `DATE` VARCHAR PRIMARY KEY,
    HourlyPrecipitation FLOAT,
    HourlyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS daily_weather
(
    `DATE` VARCHAR PRIMARY KEY,
    DailyAverageWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS uber_data
(
    pickup_datetime VARCHAR PRIMARY KEY,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT
);

CREATE TABLE IF NOT EXISTS taxi_data
(
    Unamed VARCHAR,
    pickup_datetime VARCHAR PRIMARY KEY,
    passenger_count FLOAT,
    trip_distance FLOAT,
    fare_amount FLOAT
);
