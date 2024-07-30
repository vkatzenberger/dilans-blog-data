CREATE TABLE read
(
  my_date       DATE,
  my_time       TIME,
  event_type    TEXT,
  location      TEXT,
  user_id       BIGINT NOT NULL,
  source        TEXT,
  topic         TEXT
);

COPY read
FROM '/home/katz/dilans-blog/data/all_read.csv' DELIMITER ';';

SELECT * FROM read
LIMIT 100;

CREATE TABLE subscribe
(
  my_date       DATE,
  my_time       TIME,
  event_type    TEXT,
  user_id       BIGINT NOT NULL
);

COPY subscribe
FROM '/home/katz/dilans-blog/data/all_subscribe.csv' DELIMITER ';';

SELECT * FROM subscribe
LIMIT 100;

CREATE TABLE buy
(
  my_date       DATE,
  my_time       TIME,
  event_type    TEXT,
  user_id       BIGINT NOT NULL,
  price         INT
);

COPY buy
FROM '/home/katz/dilans-blog/data/all_buy.csv' DELIMITER ';';

SELECT * FROM buy
LIMIT 100;