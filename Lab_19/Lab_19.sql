select order_id, max(price) from olist.order_items;
select order_id, min(price) from olist.order_items;
select min(shipping_limit_date), max(shipping_limit_date) from olist.order_items;
select customer_state, count(customer_unique_id) from olist.customers group by customer_state order by count(customer_unique_id) desc;
select customer_city, count(customer_unique_id) from olist.customers where customer_state="SP" group by customer_city order by count(customer_unique_id) desc;
select count(distinct business_segment) from olist.closed_deals where business_segment!= "null";
select business_segment, sum(declared_monthly_revenue) from olist.closed_deals group by business_segment order by sum(declared_monthly_revenue) desc limit 3;
select count(distinct review_score) from olist.order_reviews;
SELECT review_score, count(review_score),
   CASE review_score
      WHEN 1 THEN 'Bad'
      WHEN 2 THEN 'Poor'
      WHEN 3 THEN 'Satisfactory'
	WHEN 4 THEN 'Good'
      WHEN 5 THEN 'Perfect'
   END AS review_categ
 FROM olist.order_reviews group by review_categ order by count(review_score) desc;
select review_score, review_categ, count(review_score) as reviews from olist.order_reviews group by review_categ  order by reviews desc;
select  review_score, count(review_score) as reviews from olist.order_reviews group by review_score order by reviews desc limit 1;