-- No. 1
CREATE DATABASE db_myshop;

-- No. 2
USE db_myshop;
CREATE TABLE `db_myshop`.`tb_user` (`id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NOT NULL , `email` VARCHAR(255) NOT NULL , `password` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `db_myshop`.`tb_categories` (`id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `db_myshop`.`tb_items` (`id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NOT NULL , `description` VARCHAR(255) NOT NULL , `price` INT NOT NULL , `stock` INT NOT NULL , `categori_id` INT NOT NULL , PRIMARY KEY (`id`), INDEX (`categori_id`)) ENGINE = InnoDB;

-- No. 3
INSERT INTO `tb_user` (`id`, `name`, `email`, `password`) VALUES (NULL, 'John Doe', 'john@doe.com', 'johndoe123'), (NULL, 'Jane Doe', 'jane@doe.com', 'janedoe123');

INSERT INTO `tb_categories` (`id`, `name`) VALUES (NULL, 'Gadget'), (NULL, 'Cloth'), (NULL, 'Men'), (NULL, 'Women'), (NULL, 'Branded');

INSERT INTO `tb_items` (`id`, `name`, `description`, `price`, `stock`, `categori_id`) VALUES (NULL, 'Samsung b50', 'hape keren dari merek samsung', '4000000', '100', '1'), (NULL, 'Uniqloh', 'Baju keren dari brand ternama', '500000', '50', '2'), (NULL, 'IMHO Watch', 'jam tangan anak yang jujur banget', '2000000', '10', '1');

-- No. 4
SELECT id, name, email FROM tb_user;

SELECT * FROM `tb_items` WHERE price>1000000;

SELECT * FROM tb_items WHERE name LIKE '%uniklo%';

SELECT i.name, i.description, i.price, i.stock, i.categori_id, c.name AS kategori FROM tb_items i JOIN tb_categories c ON i.categori_id = c.id;

-- N0. 5
UPDATE tb_items SET price = 2500000 WHERE name = 'Sumsang b50';

​