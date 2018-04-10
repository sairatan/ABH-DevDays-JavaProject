# --- !Ups

INSERT INTO restaurant_cuisine(restaurant_id, cuisine_id) SELECT restaurant.id, cuisine.id FROM restaurant, cuisine WHERE restaurant.name = 'Brimstone' AND cuisine.name = 'American';
INSERT INTO restaurant_cuisine(restaurant_id, cuisine_id) SELECT restaurant.id, cuisine.id FROM restaurant, cuisine WHERE restaurant.name = 'Crickets' AND cuisine.name = 'American';
INSERT INTO restaurant_cuisine(restaurant_id, cuisine_id) SELECT restaurant.id, cuisine.id FROM restaurant, cuisine WHERE restaurant.name = 'Curiosity' AND cuisine.name = 'Mexican';

INSERT INTO restaurant_review(restaurant_id, user_id, rating, review) SELECT restaurant.id, "user".id, 4, '' FROM restaurant, "user" WHERE restaurant.name = 'Brimstone' AND "user".name = 'Regular User';  
INSERT INTO restaurant_review(restaurant_id, user_id, rating, review) SELECT restaurant.id, "user".id, 5, '' FROM restaurant, "user" WHERE restaurant.name = 'Brimstone' AND "user".name = 'Regular User';  
INSERT INTO restaurant_review(restaurant_id, user_id, rating, review) SELECT restaurant.id, "user".id, 3, '' FROM restaurant, "user" WHERE restaurant.name = 'Brimstone' AND "user".name = 'Regular User';  
INSERT INTO restaurant_review(restaurant_id, user_id, rating, review) SELECT restaurant.id, "user".id, 2, '' FROM restaurant, "user" WHERE restaurant.name = 'Brimstone' AND "user".name = 'Regular User';  
INSERT INTO restaurant_review(restaurant_id, user_id, rating, review) SELECT restaurant.id, "user".id, 4, '' FROM restaurant, "user" WHERE restaurant.name = 'Friends' AND "user".name = 'Regular User';  

# --- !Downs

TRUNCATE restaurant_cuisine;
TRUNCATE restaurant_review;     