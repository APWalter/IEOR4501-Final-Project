SELECT strftime ('%Y-%m-%d',datetime(substr(a_col, 1, 19))) AS Day,
                    COUNT(strftime ('%Y-%m-%d',datetime(substr(a_col, 1, 19)))) AS c,
                    avg(dis) as average_dis
        FROM(
        SELECT a.pickup_datetime AS a_col,
        a.trip_distance AS dis
        FROM taxi_data AS a
        WHERE a.pickup_datetime >= '2009-01-01 00:00:00'
        AND a.pickup_datetime <= '2009-12-31 23:59:59'
        AND a.trip_distance != 'None'
        UNION ALL 
        SELECT b.pickup_datetime AS a_col,
        b.distance as dis
        FROM uber_data AS b
        WHERE b.pickup_datetime >= '2009-01-01 00:00:00'
        AND b.pickup_datetime <= '2009-12-31 23:59:59'
        )
        GROUP BY Day
        ORDER BY c DESC
        LIMIT 10
        