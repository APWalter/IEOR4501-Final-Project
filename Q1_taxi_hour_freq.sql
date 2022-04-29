SELECT strftime ('%H',pickup_datetime) AS Hour,
                    COUNT(strftime ('%H',pickup_datetime))
         FROM taxi_data
         WHERE pickup_datetime >= '2009-01-01 00:00:00'
         AND pickup_datetime <= '2015-06-30 23:59:59'
         AND trip_distance != 'None'
         GROUP BY Hour
         ORDER BY COUNT(strftime ('%H',pickup_datetime)) DESC
        