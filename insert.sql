USE angulardb;
/*
CREATE TABLE mst_user (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 user_name VARCHAR(32) NOT NULL UNIQUE,
 password VARCHAR(16) NOT NULL,
 family_name VARCHAR(255) NOT NULL,
 first_name VARCHAR(255) NOT NULL,
 family_name_kana VARCHAR(255) NOT NULL,
 first_name_kana VARCHAR(255) NOT NULL,
 gender TINYINT DEFAULT 0,
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);
*/
INSERT INTO mst_user VALUES (1, 'taro.yamada@gmail.com', 'taro2020', '山田', '太郎', 'やまだ', 'たろう', 0, current_timestamp(), current_timestamp());
INSERT INTO mst_user VALUES (2, 'tokiko.kato@gmail.com', 'tokiko2020', '加藤', '登紀子', 'かとう', 'ときこ', 1, current_timestamp(), current_timestamp());

/*
CREATE TABLE mst_category (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 category_name VARCHAR(255) NOT NULL,
 category_description VARCHAR(255),
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);
*/
INSERT INTO mst_category VALUES (1, '食事パン', '食事用のパン', current_timestamp(), current_timestamp());
INSERT INTO mst_category VALUES (2, 'おかずパン', '小腹が減った時用', current_timestamp(), current_timestamp());
INSERT INTO mst_category VALUES (3, '菓子パン', 'おやつに最適', current_timestamp(), current_timestamp());
INSERT INTO mst_category VALUES (4, '糖質OFF', '痩せたいあなたへ', current_timestamp(), current_timestamp());


/*
CREATE TABLE mst_product (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL UNIQUE,
 product_name_kana VARCHAR(255) NOT NULL UNIQUE,
 product_description VARCHAR(255),
 category_id int(11) NOT NULL,
 price int(11) NOT NULL,
 image_full_path VARCHAR(255) NOT NULL,
 release_date VARCHAR(10),
 release_company VARCHAR(255),
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 FOREIGN KEY(category_id) REFERENCES mst_category(id)
);
*/
INSERT INTO mst_product VALUES (1, '食パン', 'しょくぱん', 'ふわふわな食感です', 1, 500, '/img/WhiteBread.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (2, 'クロワッサン', 'くろわっさん', 'サクサクな食感です', 1, 340, '/img/CrescentRoll.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (3, 'ウインナーロール', 'ういんなーろーる', 'カリカリな食感です', 2, 280, '/img/WienerRoll.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (4, '焼きそばパン', 'やきそばぱん', '香ばしい香りです', 2, 280, '/img/YakisobaPan.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (5, 'メロンパン', 'めろんぱん', 'さくふわな食感です', 3, 250, '/img/MelonPan.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (6, 'あんパン', 'あんぱん', '中にあんこが入ってます', 3, 250, '/img/AnPan.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (7, 'ベーグル', 'ベーぐる', 'もっちりな食感です', 4, 180, '/img/Bagle.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
INSERT INTO mst_product VALUES (8, 'ロールパン', 'ろーるぱん', '老若男女に人気です', 4, 180, '/img/Roll.jpg', '2019/01/01', 'Angular Bakery.inc', current_timestamp(), current_timestamp());
/*
CREATE TABLE mst_destination (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 user_id int(11) NOT NULL,
 family_name VARCHAR(255) NOT NULL,
 first_name VARCHAR(255) NOT NULL,
 tel_number VARCHAR(13),
 address VARCHAR(255) NOT NULL,
 status TINYINT  NOT NULL DEFAULT 1,
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 FOREIGN KEY(user_id) REFERENCES mst_user(id)
);
*/
INSERT INTO mst_destination VALUES (1, 1, '山田', '太郎', '090-1234-5678', '東京都港区六本木1−2−3', 1, current_timestamp(), current_timestamp());
INSERT INTO mst_destination VALUES (2, 2, '加藤', '登紀子', '080-9876-5432', '東京都渋谷区泉南4−5−6', 1, current_timestamp(), current_timestamp());
INSERT INTO mst_destination VALUES (3, 2, '加藤', '登紀子', '080-9876-5432', '東京都新宿区新宿7−8−9', 1, current_timestamp(), current_timestamp());


/*
CREATE TABLE tbl_cart (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 user_id int(11) NOT NULL,
 product_id int(11) NOT NULL,
 product_count int(11) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 FOREIGN KEY(product_id) REFERENCES mst_product(id)
);
*/
INSERT INTO tbl_cart VALUES (1, 1, 1, 3, current_timestamp(), current_timestamp());
INSERT INTO tbl_cart VALUES (2, 2, 7, 5, current_timestamp(), current_timestamp());


/*
CREATE TABLE tbl_purchase_history (
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 user_id int(11) NOT NULL,
 product_id int(11) NOT NULL,
 product_count int(11) NOT NULL,
 price int(11) NOT NULL,
 destination_id int(11) NOT NULL,
 status TINYINT  NOT NULL DEFAULT 1,
 purchased_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 created_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
 updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 FOREIGN KEY(user_id) REFERENCES mst_user(id),
 FOREIGN KEY(product_id) REFERENCES mst_product(id),
 FOREIGN KEY(destination_id) REFERENCES mst_destination(id)
);
*/

INSERT INTO tbl_purchase_history VALUES (1, 1, 1, 3, 1500, 1, 1, '2020-05-01 12:30:00', '2020-05-01 12:30:00', '2020-05-01 12:30:00');
INSERT INTO tbl_purchase_history VALUES (2, 1, 2, 5, 1700, 1, 1, '2020-05-01 12:30:00', '2020-05-01 12:30:00', '2020-05-01 12:30:00');
INSERT INTO tbl_purchase_history VALUES (3, 2, 6, 2, 500, 2, 1, '2020-04-01 14:30:00', '2020-04-01 14:30:00', '2020-04-01 14:30:00');
INSERT INTO tbl_purchase_history VALUES (4, 2, 7, 10, 1800, 3, 1, '2020-03-01 16:30:00', '2020-03-01 16:30:00', '2020-03-01 16:30:00');
