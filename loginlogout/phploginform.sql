

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `login` (`id`, `name`, `username`, `password`) VALUES
(1, 'Admin User', 'admin', '2138cb5b0302e84382dd9b3677576b24');



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `sex`, `phone`, `email`, `image`) VALUES
(14, 'Soumyadeep Ghosh', 'male', 7278570491, 'soumyadeep@gmail.com', 'SGhosh_passport.jpg'),
(15, 'Souvik Karmakar', 'male', 9432398705, 'souvik@gmail.com', 'avatar.png'),
(22, 'Gopa Ghosh', 'female', 9077685504, 'gopa.ghosh71@gmail.com', 'avatar.png'),
(23, 'John Doe', 'male', 9988775544, 'john@gmail.com', 'avatar.png'),
(24, 'Test name', 'female', 1234567890, 'test@gmail.com', 'avatar.png'),
(25, 'Jef Bezoz', 'male', 9585723648, 'jef@gmail.com', 'avatar.png'),
(26, 'Elon Musk', 'male', 8777569824, 'elon@gmail.com', 'avatar.png');


ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;