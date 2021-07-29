SELECT email FROM users b WHERE user_id
                                    IN (SELECT user_id a FROM ads WHERE a.user_id = b.user_id);

# SELECT title FROM categories WHERE category_id
# IN (SELECT category_id FROM ads)

SELECT ad_id FROM ads a
                      JOIN title  FROM categories
WHERE categories.category_id = a.category_id;

SELECT ad_id, title, description FROM ads WHERE category_id
        IN (SELECT category_id from categories WHERE title = '{category-name}');