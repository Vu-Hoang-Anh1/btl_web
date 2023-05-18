use shop;

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `u_id` int NOT NULL,
  `o_quantity` int NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `orders` WRITE;
INSERT INTO `orders` VALUES (25,3,1,3,'2021-05-15'),(26,2,1,1,'2021-05-15');

UNLOCK TABLES;


DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `products` WRITE;
INSERT INTO `products` VALUES (1,'I Phone 14','Tím',25000,6,'ip14-tim.webp'),(2,'I Phone 14','Hồng',17000,6,'ip-13.webp'),(3,'Xiaomi redmi note 12','Xanh Ngọc',16000,6,'gtt7766.webp'),(4,'OPPO Flip','Đen Bóng',25000,7,'n2_flip_-_combo_product_-_black.webp'),(5,'S23 ultra Tím','Tím',26000,8,'s23-ultra-tim.webp'),(6,'Galaxy 22 ultra','Xanh trời',22000,9,'sm-s908_galaxys22ultra_front_burgundy_211119.webp');
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'Almamun','almamun@mail.com','123456');
UNLOCK TABLES;

select * from products;