
        SELECT substr((substr(hr.`DATE`, 1, 10) || ' ' || substr(hr.`DATE`, 12)), 1, 13) AS H,
                t.c AS num_rides,
                avg(hr.HourlyPrecipitation) AS avg_hr_preci,
                avg(hr.HourlyWindSpeed) AS avg_hr_wind
        FROM hourly_weather as hr
        JOIN (
        SELECT Hour,
            COUNT(Hour) as c
        FROM(
        SELECT substr(a.pickup_datetime, 1, 13) AS Hour
        FROM taxi_data AS a
        WHERE a.pickup_datetime >= '2012-10-23 00:00:00'
        AND a.pickup_datetime <= '2012-10-30 23:59:59'
        AND a.trip_distance != 'None'
        UNION ALL 
        SELECT substr(datetime(substr(b.pickup_datetime, 1, 19)), 1,13) AS Hour
        FROM uber_data AS b
        WHERE b.pickup_datetime >= '2012-10-23 00:00:00'
        AND b.pickup_datetime <= '2012-10-30 23:59:59'
        )
        GROUP BY Hour
        ) as t
        ON H = Hour
        WHERE substr(hr.`DATE`, 1, 10) || ' ' || substr(hr.`DATE`, 12) >= '2012-10-23 00:00:00'
        AND substr(hr.`DATE`, 1, 10) || ' ' || substr(hr.`DATE`, 12) <= '2012-10-30 23:59:59'
        GROUP BY H
        