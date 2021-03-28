CREATE TABLE product (
    id INT,
    product_id VARCHAR(15),
    category VARCHAR(20),
    parent INT,
    title VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE review(
    id INT,
    review_id VARCHAR(15),
    product_id VARCHAR(15),
    customer_id INT,
    star_rating INT,
    helpful_votes INT,
    total_votes INT,
    vine BOOLEAN,
    verified_purchase BOOLEAN,
    review_headline VARCHAR(100),
    review_body VARCHAR(1000),
    review_date DATE,
    marketplace VARCHAR(20),
    PRIMARY KEY (id)
);

COPY product FROM 'product.tsv' DELIMITER '\t';
COPY review FROM 'review.tsv' DELIMITER '\t';