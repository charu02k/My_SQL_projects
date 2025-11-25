use myntra;

######### BRAND REPORT CARD ############
# 1. Which product_category of any brand is sold the most?  ---- tshirts
SELECT 
    product_tag, SUM(rating_count) AS product_sold
FROM
    products
GROUP BY product_tag
ORDER BY product_sold DESC
LIMIT 1;

#2. List top 5 brands which has sold most number of tshirts. ------- Roadster, HRX by Hrithik Roshan, Mast & Harbour, HERE&NOW, DILLINGER
SELECT 
    brand_name, SUM(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'tshirts'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;

 #3. List top 5 brands which has sold most number of shirts ------ Roadster, HIGHLANDER, Louis Philippe, WROGN, Allen Solly
 SELECT 
    brand_name, COUNT(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'shirts'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;

# 4. List top 5 brands which has sold most number of jeans -------Roadster, SASSAFRAS, WROGN, HIGHLANDER, High Star
SELECT 
    brand_name, SUM(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'jeans'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;

#5. List top 5 brands which has sold most number of dresses ------URBANIC. JC Collection, Tokyo Talkies, H&M, SASSAFRAS
SELECT 
    Brand_name, COUNT(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'dresses'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;

#6. Most popular product name listed in Myntra ------- Men Slim Fit Casual Shirt
SELECT 
    product_name, COUNT(product_name) AS popular
FROM
    products
GROUP BY product_name
ORDER BY popular DESC
LIMIT 1;

SELECT 
    product_name, SUM(rating_count) AS popular
FROM
    products
GROUP BY product_name
ORDER BY popular DESC
LIMIT 1;

#7. Number of products sold for every rating (0 - 5)
SELECT 
    rating, SUM(rating_count) AS sold
FROM
    products
GROUP BY rating
ORDER BY rating ASC;

#8. Number of products sold for every rating by bike -------- null
SELECT 
    rating, SUM(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'bike'
GROUP BY rating
ORDER BY product_sold DESC
LIMIT 5;

#9. Number of products sold for every rating in tshirt category
SELECT 
    rating, SUM(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'tshirts'
GROUP BY rating
ORDER BY rating ASC;

#11. Relation between price of the thisrt and its rating wrt to people rated
SELECT 
    discounted_price, rating, SUM(rating_count) AS product_sold
FROM
    products
WHERE
    product_tag = 'tshirts'
GROUP BY discounted_price , rating
ORDER BY discounted_price;

######  USER SPECIFIC ######
# 1. Which product categories witness the highest sales during the year? ------ tshirts	2063921

SELECT 
    product_tag, SUM(rating_count) AS sale
FROM
    products
GROUP BY product_tag
ORDER BY sale DESC
LIMIT 1;

# 2. Which brand witness the highest sales during year? --------- Roadster	2106904
SELECT 
    brand_name, SUM(rating_count) AS sold
FROM
    products
GROUP BY brand_name
ORDER BY sold DESC
LIMIT 1;

# 3. Which product categories of a specific brand witnessed maximum sales? -------------   Roadster	  tshirts	964611
SELECT 
    BRAND_NAME, PRODUCT_TAG, SUM(RATING_COUNT) AS SOLD
FROM
    PRODUCTS
GROUP BY BRAND_NAME , PRODUCT_TAG
ORDER BY SOLD DESC
LIMIT 1;

#Which product is witnessed the maximum sales? ----------- Men Slim Fit Casual Shirt	266234
SELECT 
    PRODUCT_NAME, SUM(RATING_COUNT) AS SOLD
FROM
    PRODUCTS
GROUP BY PRODUCT_NAME
ORDER BY SOLD DESC
LIMIT 1;




