
        SELECT strftime ('%Y-%m-%d',datetime(substr(c.`DATE`, 1, 10))) AS d,
            c.DailyAverageWindSpeed as WindSpeed,
            ride.num_ride
        FROM daily_weather as c
        JOIN(
        SELECT a_col,
                count(a_col) as num_ride
        FROM(
        SELECT strftime('%Y-%m-%d', a.pickup_datetime) AS a_col
        FROM taxi_data AS a
        WHERE a.pickup_datetime >= '2014-01-01 00:00:00'
        AND a.pickup_datetime <= '2014-12-31 23:59:59'
        AND a.trip_distance != 'None'
        UNION ALL 
        SELECT strftime ('%Y-%m-%d',datetime(substr(b.pickup_datetime, 1, 19))) AS a_col
        FROM uber_data AS b
        WHERE b.pickup_datetime >= '2014-01-01 00:00:00'
        AND b.pickup_datetime <= '2014-12-31 23:59:59'
        )
        GROUP BY a_col
        ) as ride
        ON d == ride.a_col
        WHERE d >= '2014-01-01 00:00:00'
        AND d <= '2014-12-31 23:59:59'
        GROUP BY d
        ORDER BY WindSpeed DESC
        LIMIT 10
        