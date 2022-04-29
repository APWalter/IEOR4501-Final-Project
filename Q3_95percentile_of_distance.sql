SELECT dis
        FROM(
        SELECT a.trip_distance AS dis
        FROM taxi_data AS a
        WHERE a.pickup_datetime >= '2013-07-01 00:00:00'
        AND a.pickup_datetime <= '2013-07-31 23:59:59'
        AND a.trip_distance != 'None'
        UNION ALL 
        SELECT b.distance AS dis
        FROM uber_data AS b
        WHERE b.pickup_datetime >= '2013-07-01 00:00:00'
        AND b.pickup_datetime <= '2013-07-31 23:59:59'
        )
        ORDER BY dis ASC
        LIMIT 1
        OFFSET (SELECT count(*)
        FROM (SELECT a.trip_distance AS dis
        FROM taxi_data AS a
        WHERE a.pickup_datetime >= '2013-07-01 00:00:00'
        AND a.pickup_datetime <= '2013-07-31 23:59:59'
        AND a.trip_distance != 'None'
        UNION ALL 
        SELECT b.distance AS dis
        FROM uber_data AS b
        WHERE b.pickup_datetime >= '2013-07-01 00:00:00'
        AND b.pickup_datetime <= '2013-07-31 23:59:59')) * 95 / 100 -1
        