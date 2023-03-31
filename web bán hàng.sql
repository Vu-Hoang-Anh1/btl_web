CREATE TABLE `Users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `fullname` varchar(50),
  `email` varchar(255),
  `phone_number` varchar(20),
  `address` varchar(200),
  `password` varchar(32),
  `role_user` tinyint(4),
  `created_at` datetime
);

CREATE TABLE `Categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(150)
);

CREATE TABLE `Products` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int,
  `title` varchar(250),
  `price` int,
  `discount` int,
  `image_link` varchar(500),
  `image_list` longtext,
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Carts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `product_id` int,
  `created` datetime
);

CREATE TABLE `Orders` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(255),
  `user_id` int,
  `name` varchar(150),
  `phone` varchar(150),
  `product_id` int,
  `created` datetime,
  `note` varchar(255),
  `status` tinyint(4)
);

CREATE TABLE `Order_items` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `order_id` int,
  `product_id` int,
  `quantity` int(255)
);

select * from users;
select id from users where id >= 1;
select fullname from users where id = 1;