create database apple;
select prime_genre from apple.lab;
select prime_genre, avg(user_rating) from apple.lab group by prime_genre order by avg(user_rating) DESC;
select prime_genre, count(ï»¿id) as Apps from apple.lab group by prime_genre order by Apps DESC limit 1;
select prime_genre, count(ï»¿id) as Apps from apple.lab group by prime_genre order by Apps limit 1;
select track_name, sum(rating_count_tot) from apple.lab group by track_name order by  sum(rating_count_tot) desc limit 10;
select track_name, avg(user_rating) from apple.lab group by track_name order by avg(user_rating) desc limit 10;
-- "Those apps are the one with the most number of rating meaning they are the most popular one. We can notice they are mainly networking and games apps"
-- "The output gets only interesting when we compare it with the number of ratings for example for the app Turbo Scan pro the rating is 5 but only one person gives a rate"
-- "We can notice none of the 10 most popular apps are the best rated one"
select track_name, sum(rating_count_tot) as rating, avg(user_rating) as note from apple.lab group by track_name order by note desc, rating desc limit 10;
select track_name, price, sum(rating_count_tot) as rating, avg(user_rating) as note from apple.lab group by track_name order by price desc limit 10;
-- "We can notice that the apps that have a price cost are not rated a lot which certainly can mean that they are not a lot buy and installed"