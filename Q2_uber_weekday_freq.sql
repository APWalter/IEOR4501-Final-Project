SELECT strftime ('%w',datetime(substr(pickup_datetime, 1, 19))) AS Day,
                    COUNT(strftime ('%w',datetime(substr(pickup_datetime, 1, 19))))
        FROM uber_data
        WHERE pickup_datetime >= '2009-01-01 00:00:00'
        AND pickup_datetime <= '2015-06-30 23:59:59'
        GROUP BY Day
        ORDER BY COUNT(strftime ('%w',datetime(substr(pickup_datetime, 1, 19)))) DESC
        