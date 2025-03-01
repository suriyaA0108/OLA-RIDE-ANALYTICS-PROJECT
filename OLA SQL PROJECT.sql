CREATE DATABASE OLA;
USE OLA;

SELECT * FROM BOOKINGS;

SELECT COUNT(*) AS total_count 
FROM BOOKINGS;

#1.Retrieve all successful bookings:
SELECT * FROM BOOKINGS 
WHERE BOOKING_STATUS='SUCCESSS';

#2.Find the average ride distance for each vehicle type:
SELECT vehicle_type, AVG(ride_distance) AS avg_distance
FROM bookings
GROUP BY vehicle_type;

#3.Get the total number of cancelled rides by customers:
select count(*) 
from bookings
where booking_status='Canceled by Driver';

#4.List the top 5 customers who booked the highest number of rides:
SELECT customer_id, count(booking_id) as total_rides
FROM bookings
GROUP BY customer_id, booking_id
ORDER BY total_rides DESC
LIMIT 5;

#5.Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT count(*)
FROM bookings
WHERE Canceled_Rides_by_Driver='personal & car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(driver_ratings) as max_ratings, MIN(driver_ratings) as min_ratings
FROM bookings
WHERE vehicle_type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
SELECT *
FROM bookings
WHERE payment_method = 'UPI';


#8. Find the average customer rating per vehicle type:
SELECT vehicle_type, AVG(customer_rating) AS avg_customer_rating
FROM bookings
GROUP BY vehicle_type;

#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(booking_value) AS total_booking_value
FROM bookings
WHERE booking_status = 'success';

#10. List all incomplete rides along with the reason:
SELECT Booking_id, incomplete_rides_reason
from bookings
where incomplete_rides='yes';
