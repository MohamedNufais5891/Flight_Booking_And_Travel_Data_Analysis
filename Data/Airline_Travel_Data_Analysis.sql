/*1.Average Ticket Price*/
SELECT AVG("Ticket_Price") AS average_price FROM final_analysis GROUP BY "Travel_Class";

/*2.Highest Ticket Price*/
SELECT MAX("Ticket_Price") AS highest_price FROM final_analysis;

/*3.Passenger Count by Travel Class*/
SELECT "Travel_Class", COUNT(*) AS total_passengers FROM final_analysis GROUP BY "Travel_Class";

/*4.Payment Method Count*/
SELECT "Payment_Method", COUNT(*) AS total FROM final_analysis GROUP BY "Payment_Method";

/*5.Total Airline Revenue*/
SELECT "Airline", SUM("Ticket_Price") AS total_revenue FROM final_analysis GROUP BY "Airline" ORDER BY total_revenue DESC;

/*6.Airline with Highest Average Ticket Price*/
SELECT "Airline", AVG("Ticket_Price") AS avg_ticket_price FROM final_analysis GROUP BY "Airline" ORDER BY avg_ticket_price DESC;

/*7.Percentage of Each Travel Class*/
SELECT "Travel_Class",ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM final_analysis), 2) AS percentage
FROM final_analysis GROUP BY "Travel_Class";

/*8.Top 5 Most Expensive Bookings*/
SELECT *FROM final_analysis ORDER BY "Ticket_Price" DESC LIMIT 5;

/*9.Lowest Ticket Price*/
SELECT MIN("Ticket_Price") AS lowest_ticket_price FROM final_analysis;

/*10.Total Passengers by Airline*/
SELECT "Airline", COUNT(*) AS Total_Passengers FROM final_analysis GROUP BY "Airline"
ORDER BY Total_Passengers DESC;

/*11.Revenue by Payment Method*/
SELECT "Payment_Method", SUM("Ticket_Price") AS Total_Revenue FROM final_analysis GROUP BY "Payment_Method";

/*12.City with Highest Number of Departures*/
SELECT "Departure_City", COUNT(*) AS Total_Departures FROM final_analysis GROUP BY "Departure_City" ORDER BY Total_Departures DESC;

/*13.Average Distance by Airline*/
SELECT "Airline", AVG("Distance_km") AS avg_distance FROM final_analysis GROUP BY "Airline";

/*14.Longest Flight Distance*/
SELECT MAX("Distance_km") AS longest_distance FROM final_analysis;

/*15.Average Flight Duration*/
SELECT AVG("Flight_Duration_hr") AS Average_Duration FROM final_analysis;

/*16.Youngest and Oldest Passenger*/
SELECT MIN("Passenger_Age") AS youngest_passenger, MAX("Passenger_Age") AS oldest_passenger FROM final_analysis;

/*17.Average Passenger Age*/
SELECT AVG("Passenger_Age") AS Average_Age FROM final_analysis;

/*18.Most Used Payment Method*/
SELECT "Payment_Method", COUNT(*) AS usage_count FROM final_analysis GROUP BY "Payment_Method"
ORDER BY usage_count DESC;

/*19.Total Number of Departure Cities*/
SELECT COUNT(DISTINCT "Departure_City") AS total_cities FROM final_analysis;

/*20.Flights Above Average Ticket Price*/
SELECT *FROM final_analysis WHERE "Ticket_Price" > (SELECT AVG("Ticket_Price")FROM final_analysis);

/*21. Airlines with More than 50 Bookings*/
SELECT "Airline", COUNT(*) AS total_bookings FROM final_analysis GROUP BY "Airline" HAVING COUNT(*) < 100;