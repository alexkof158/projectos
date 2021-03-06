CREATE DATABASE database_cars;

USE database_cars;

CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(12) NOT NULL,
    password VARCHAR(40) NOT NULL,
    fullname VARCHAR(30)NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE users;


CREATE TABLE carros(
    id INT(11) NOT NULL,
    marca VARCHAR(10) NOT NULL,
    modelo VARCHAR(9) NOT NULL,
    año VARCHAR(4) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)

);

ALTER TABLE carros
    ADD PRIMARY KEY (id);

ALTER TABLE carros
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;
    
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);
COMMIT;
    
