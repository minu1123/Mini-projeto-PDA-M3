CREATE TABLE `Usuário` (
  `id` int PRIMARY KEY,
  `Nome` varchar(255),
  `Endereço` varchar(255),
  `Email` varchar(255),
  `Telefone` varchar(20),
  `senha` varchar(255)
);

CREATE TABLE `Profissional` (
  `id` int PRIMARY KEY,
  `Especialidade` text,
  `Experiência` varchar(255),
  `Avaliação` float,
  `criado_em` timestamp
);

CREATE TABLE `Tipo_de_serviço` (
  `id` int PRIMARY KEY,
  `nome` varchar(255)
);

CREATE TABLE `Serviço` (
  `id` int PRIMARY KEY,
  `Tipo_de_Serviço` int,
  `Preço` decimal(10, 2),
  `status` varchar(255),
  `Avaliação_Média` float
);

CREATE TABLE `Solicitação_de_Serviço` (
  `id` int PRIMARY KEY,
  `Usuário_id` int,
  `Serviço_id` int
);

ALTER TABLE `Serviço` ADD FOREIGN KEY (`Tipo_de_Serviço`) REFERENCES `Tipo_de_serviço` (`id`);

ALTER TABLE `Solicitação_de_Serviço` ADD FOREIGN KEY (`Usuário_id`) REFERENCES `Usuário` (`id`);

ALTER TABLE `Solicitação_de_Serviço` ADD FOREIGN KEY (`Serviço_id`) REFERENCES `Serviço` (`id`);
