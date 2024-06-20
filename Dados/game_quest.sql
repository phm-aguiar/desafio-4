-- Tabela `usuario`
CREATE TABLE `usuario` ( 
  `id` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(250) NOT NULL,
  `email` VARCHAR(250) NOT NULL,
  `senha` VARCHAR(250) NOT NULL,
  `estado` VARCHAR(250) NULL,
  `cidade` VARCHAR(250) NULL,
  `curso` VARCHAR(250) NULL,
  `instituicao_ensino` VARCHAR(250) NULL,
  `tipo_usuario` VARCHAR(250) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id`)
);

INSERT INTO `usuario` (`nome`, `email`, `senha`, `estado`, `cidade`, `curso`, `instituicao_ensino`, `tipo_usuario`) VALUES
('Ana Maria', 'ana.maria@example.com', 'senha123', 'Maranhão', 'São Luís', 'Administração', 'UFMA', 'Estudante'),
('Bruno Silva', 'bruno.silva@example.com', 'senha123', 'Maranhão', 'Imperatriz', 'Direito', 'UFMA', 'Estudante'),
('Carla Souza', 'carla.souza@example.com', 'senha123', 'Maranhão', 'Caxias', 'Medicina', 'UFMA', 'Estudante'),
('Diego Costa', 'diego.costa@example.com', 'senha123', 'Maranhão', 'Timon', 'Engenharia Civil', 'UFMA', 'Estudante'),
('Elisa Rocha', 'elisa.rocha@example.com', 'senha123', 'Maranhão', 'Codó', 'Biologia', 'UFMA', 'Estudante'),
('Fernanda Lima', 'fernanda.lima@example.com', 'senha123', 'Maranhão', 'Açailândia', 'Matemática', 'UFMA', 'Estudante'),
('Gustavo Alves', 'gustavo.alves@example.com', 'senha123', 'Maranhão', 'Bacabal', 'História', 'UFMA', 'Estudante'),
('Helena Costa', 'helena.costa@example.com', 'senha123', 'Maranhão', 'Balsas', 'Geografia', 'UFMA', 'Estudante'),
('Igor Martins', 'igor.martins@example.com', 'senha123', 'Maranhão', 'Santa Inês', 'Letras', 'UFMA', 'Estudante'),
('Juliana Gomes', 'juliana.gomes@example.com', 'senha123', 'Maranhão', 'Pinheiro', 'Química', 'UFMA', 'Estudante'),
('Karla Fernandes', 'karla.fernandes@example.com', 'senha123', 'Piauí', 'Teresina', 'Física', 'UFPI', 'Professor'),
('Lucas Moreira', 'lucas.moreira@example.com', 'senha123', 'Piauí', 'Parnaíba', 'Ciências da Computação', 'UFPI', 'Professor'),
('Marina Oliveira', 'marina.oliveira@example.com', 'senha123', 'Piauí', 'Picos', 'Enfermagem', 'UFPI', 'Professor'),
('Nicolas Santos', 'nicolas.santos@example.com', 'senha123', 'Piauí', 'Floriano', 'Farmácia', 'UFPI', 'Professor'),
('Olivia Lima', 'olivia.lima@example.com', 'senha123', 'Piauí', 'Piripiri', 'Psicologia', 'UFPI', 'Professor'),
('Paulo Almeida', 'paulo.almeida@example.com', 'senha123', 'Piauí', 'Campo Maior', 'Educação Física', 'UFPI', 'Professor'),
('Quintino Barros', 'quintino.barros@example.com', 'senha123', 'Piauí', 'Barras', 'Jornalismo', 'UFPI', 'Professor'),
('Rita Silva', 'rita.silva@example.com', 'senha123', 'Piauí', 'Altos', 'Pedagogia', 'UFPI', 'Professor'),
('Sérgio Mendes', 'sergio.mendes@example.com', 'senha123', 'Piauí', 'Esperantina', 'Sociologia', 'UFPI', 'Cientista'),
('Tatiana Lopes', 'tatiana.lopes@example.com', 'senha123', 'Piauí', 'Oeiras', 'Filosofia', 'UFPI', 'Cientista');



CREATE TABLE `usuario_login` ( 
  `id` INT AUTO_INCREMENT NOT NULL,
  `usuario_id` INT NOT NULL,
  `data_acesso` DATETIME NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id`),
  CONSTRAINT `usuario_id_fk` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX `usuario_id_fk` 
ON `usuario_login` (
  `usuario_id` ASC
);

-- Tabela `usuario_login`
INSERT INTO `usuario_login` (`usuario_id`, `data_acesso`) VALUES
(1, '2024-06-07 08:00:00'),
(1, '2024-06-08 09:00:00'),
(1, '2024-06-09 10:00:00'),
(2, '2024-06-07 11:00:00'),
(2, '2024-06-08 12:00:00'),
(2, '2024-06-09 13:00:00'),
(3, '2024-06-07 14:00:00'),
(3, '2024-06-08 15:00:00'),
(3, '2024-06-09 16:00:00'),
(4, '2024-06-07 17:00:00'),
(4, '2024-06-08 18:00:00'),
(4, '2024-06-09 19:00:00'),
(5, '2024-06-07 20:00:00'),
(5, '2024-06-08 21:00:00'),
(5, '2024-06-09 22:00:00'),
(6, '2024-06-07 23:00:00'),
(6, '2024-06-08 08:00:00'),
(6, '2024-06-09 09:00:00'),
(7, '2024-06-07 10:00:00'),
(7, '2024-06-08 11:00:00'),
(7, '2024-06-09 12:00:00'),
(8, '2024-06-07 13:00:00'),
(8, '2024-06-08 14:00:00'),
(8, '2024-06-09 15:00:00'),
(9, '2024-06-07 16:00:00'),
(9, '2024-06-08 17:00:00'),
(9, '2024-06-09 18:00:00'),
(10, '2024-06-07 19:00:00'),
(10, '2024-06-08 20:00:00'),
(10, '2024-06-09 21:00:00'),
(11, '2024-06-07 22:00:00'),
(11, '2024-06-08 23:00:00'),
(11, '2024-06-09 08:00:00'),
(12, '2024-06-07 09:00:00'),
(12, '2024-06-08 10:00:00'),
(12, '2024-06-09 11:00:00'),
(13, '2024-06-07 12:00:00'),
(13, '2024-06-08 13:00:00'),
(13, '2024-06-09 14:00:00'),
(14, '2024-06-07 15:00:00'),
(14, '2024-06-08 16:00:00'),
(14, '2024-06-09 17:00:00'),
(15, '2024-06-07 18:00:00'),
(15, '2024-06-08 19:00:00'),
(15, '2024-06-09 20:00:00'),
(16, '2024-06-07 21:00:00'),
(16, '2024-06-08 22:00:00'),
(16, '2024-06-09 23:00:00'),
(17, '2024-06-07 08:00:00'),
(17, '2024-06-08 09:00:00'),
(17, '2024-06-09 10:00:00'),
(18, '2024-06-07 11:00:00'),
(18, '2024-06-08 12:00:00'),
(18, '2024-06-09 13:00:00'),
(19, '2024-06-07 14:00:00'),
(19, '2024-06-08 15:00:00'),
(19, '2024-06-09 16:00:00'),
(20, '2024-06-07 17:00:00'),
(20, '2024-06-08 18:00:00'),
(20, '2024-06-09 19:00:00'),
(1, '2024-06-10 08:00:00'),
(2, '2024-06-10 09:00:00'),
(3, '2024-06-10 10:00:00'),
(4, '2024-06-10 11:00:00'),
(5, '2024-06-10 12:00:00'),
(6, '2024-06-10 13:00:00'),
(7, '2024-06-10 14:00:00'),
(10, '2024-06-10 08:00:00'),
(10, '2024-06-11 09:00:00'),
(10, '2024-06-12 10:00:00'),
(10, '2024-06-13 11:00:00'),
(14, '2024-06-10 12:00:00'),
(14, '2024-06-11 13:00:00'),
(14, '2024-06-12 14:00:00'),
(14, '2024-06-13 15:00:00'),
(16, '2024-06-10 16:00:00'),
(16, '2024-06-11 17:00:00'),
(16, '2024-06-12 18:00:00'),
(16, '2024-06-13 19:00:00');

-- Tabela `tema`
CREATE TABLE `tema` ( 
  `id` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(250) NOT NULL,
   PRIMARY KEY (`id`)
);

INSERT INTO `tema` (`nome`) VALUES ('Ciências Humanas'),
    ('Ciências da Natureza'),
    ('Ciências Exatas'),
    ('Linguagens e Códigos');

-- Tabela `pergunta`
CREATE TABLE `pergunta` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `tema_id` INT NOT NULL,
  `texto` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tema_id_fk` FOREIGN KEY (`tema_id`) REFERENCES `tema` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `pergunta` (`tema_id`, `texto`) VALUES
(1, 'Qual é a principal característica das Ciências Humanas?'),
(2, 'Qual é o elemento mais abundante na atmosfera?'),
(3, 'Quanto é 2 + 2?'),
(4, 'Qual é a principal função da linguagem?');

-- Tabela `resposta`
CREATE TABLE `resposta` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `pergunta_id` INT NOT NULL,
  `texto` TEXT NOT NULL,
  `correta` BOOLEAN NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pergunta_id_fk` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `resposta` (`pergunta_id`, `texto`, `correta`) VALUES
(1, 'Estuda a sociedade e as relações humanas.', TRUE),
(1, 'Estuda fenômenos naturais.', FALSE),
(1, 'Estuda a estrutura da matéria.', FALSE),
(2, 'Oxigênio', FALSE),
(2, 'Nitrogênio', TRUE),
(2, 'Hidrogênio', FALSE),
(3, '3', FALSE),
(3, '4', TRUE),
(3, '5', FALSE),
(4, 'Comunicação entre indivíduos.', TRUE),
(4, 'Estudo das reações químicas.', FALSE),
(4, 'Desenvolvimento de softwares.', FALSE);

-- Tabela `usuario_resposta`
CREATE TABLE `usuario_resposta` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `usuario_id` INT NOT NULL,
  `pergunta_id` INT NOT NULL,
  `resposta_id` INT NOT NULL,
  `data_resposta` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `usuario_id_fk` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pergunta_id_fk` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resposta_id_fk` FOREIGN KEY (`resposta_id`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `usuario_resposta` (`usuario_id`, `pergunta_id`, `resposta_id`, `data_resposta`) VALUES
(1, 1, 1, '2024-06-07 08:00:00'),
(2, 2, 5, '2024-06-07 09:00:00'),
(3, 3, 8, '2024-06-07 10:00:00'),
(4, 4, 10, '2024-06-07 11:00:00'),
(5, 1, 2, '2024-06-07 12:00:00'),
(6, 2, 5, '2024-06-07 13:00:00'),
(7, 3, 8, '2024-06-07 14:00:00'),
(8, 4, 10, '2024-06-07 15:00:00'),
(9, 1, 1, '2024-06-07 16:00:00'),
(10, 2, 5, '2024-06-07 17:00:00'),
(11, 3, 8, '2024-06-07 18:00:00'),
(12, 4, 10, '2024-06-07 19:00:00'),
(13, 1, 1, '2024-06-07 20:00:00'),
(14, 2, 5, '2024-06-07 21:00:00'),
(15, 3, 8, '2024-06-07 22:00:00'),
(16, 4, 10, '2024-06-07 23:00:00'),
(17, 1, 1, '2024-06-08 08:00:00'),
(18, 2, 5, '2024-06-08 09:00:00'),
(19, 3, 8, '2024-06-08 10:00:00'),
(20, 4, 10, '2024-06-08 11:00:00');

-- Tabela `pontuacao`
CREATE TABLE `pontuacao` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `usuario_id` INT NOT NULL,
  `tema_id` INT NOT NULL,
  `pontuacao` INT NOT NULL,
  `data` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `usuario_id_fk` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tema_id_fk` FOREIGN KEY (`tema_id`) REFERENCES `tema` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `pontuacao` (`usuario_id`, `tema_id`, `pontuacao`, `data`) VALUES
(1, 1, 10, '2024-06-07 08:30:00'),
(2, 2, 10, '2024-06-07 09:30:00'),
(3, 3, 10, '2024-06-07 10:30:00'),
(4, 4, 10, '2024-06-07 11:30:00'),
(5, 1, 0, '2024-06-07 12:30:00'),
(6, 2, 10, '2024-06-07 13:30:00'),
(7, 3, 10, '2024-06-07 14:30:00'),
(8, 4, 10, '2024-06-07 15:30:00'),
(9, 1, 10, '2024-06-07 16:30:00'),
(10, 2, 10, '2024-06-07 17:30:00'),
(11, 3, 10, '2024-06-07 18:30:00'),
(12, 4, 10, '2024-06-07 19:30:00'),
(13, 1, 10, '2024-06-07 20:30:00'),
(14, 2, 10, '2024-06-07 21:30:00'),
(15, 3, 10, '2024-06-07 22:30:00'),
(16, 4, 10, '2024-06-07 23:30:00'),
(17, 1, 10, '2024-06-08 08:30:00'),
(18, 2, 10, '2024-06-08 09:30:00'),
(19, 3, 10, '2024-06-08 10:30:00'),
(20, 4, 10, '2024-06-08 11:30:00');


// Views
CREATE VIEW `view_usuario_login` AS
select
  `u`.`id` AS `id`,
  `u`.`nome` AS `nome`,
  `u`.`email` AS `email`,
  `u`.`senha` AS `senha`,
  `u`.`estado` AS `estado`,
  `u`.`cidade` AS `cidade`,
  `u`.`curso` AS `curso`,
  `u`.`instituicao_ensino` AS `instituicao_ensino`,
  `u`.`tipo_usuario` AS `tipo_usuario`,
  `ul`.`data_acesso` AS `data_acesso`
from
  `usuario` `u`
  join `usuario_login` `ul`
where
  (`u`.`id` = `ul`.`usuario_id`)
