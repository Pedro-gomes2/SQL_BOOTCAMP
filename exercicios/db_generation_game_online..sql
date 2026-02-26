create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id_classe bigint auto_increment,
    nome_classe varchar(50) not null,
    habilidade_especial varchar(100) not null,
	primary key (id_classe)
);

create table tb_personagens(
	id_personagem BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    poder_attack INT NOT NULL,
    poder_defense INT NOT NULL,
    id_classe BIGINT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)


);


-- Inserindo alguns registros para teste

-- registro da classe --
INSERT INTO tb_classes (nome_classe, habilidade_especial)
VALUES 
('Guerreiro', 'Golpe Esmagador' ),
('Maga', 'Tempestade Arcana'),
('Arqueiro', 'Flecha de Precisão' ),
('Clérigo', 'Benção de Cura' ),
('Assassino', 'Ataque Furtivo');

-- registro personagem --
INSERT INTO tb_personagens (nome_personagem, nivel, poder_attack, poder_defense, id_classe)
VALUES 
('Arielton', 50, 3200, 2100, 1), -- Guerreiro
('Morgana', 45, 2800, 1200, 2),   -- Maga
('Gavião', 40, 1900, 1100, 3),    -- Arqueiro
('Aragorn', 60, 3500, 2500, 1),   -- Guerreiro
('Yennefer', 55, 3100, 1500, 2),  -- Maga
('Zelda', 38, 1200, 2800, 4),     -- Clérigo
('Altair', 48, 2400, 900, 5),     -- Assassino
('Legolas', 42, 2100, 1300, 3);	  -- Arqueiro


select * from tb_personagens where poder_attack > 2000;

select * from tb_personagens where poder_defense between  1000 and  2000;

select * from tb_personagens  WHERE	nome_personagem  like ' %C%' ; 

select * from tb_personagens inner join tb_classes 
on tb_personagens.id_classe = tb_classes.id_classe;

select * from tb_personagens inner join tb_classes 
on tb_personagens.id_classe = tb_classes.id_classe where tb_classes.nome_classe = 'Arqueiro';

SELECT 
    p.nome_personagem, 
    p.nivel, 
    c.nome_classe, 
    c.habilidade_especial
FROM tb_personagens AS p
INNER JOIN tb_classes AS c 
ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';