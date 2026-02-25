CREATE DATABASE db_rh;

USE db_rh ;-- usar o data base --

-- cria a tabela --
CREATE TABLE tb_colaboradores(
	id_colaborador BIGINT AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255) NOT NULL,
    Data_admissao DATE NOT NULL,
    salario_base DECIMAL NOT NULL,
    PRIMARY KEY (id_colaborador) 
);
 INSERT INTO tb_colaboradores( Nome, Cargo, Data_admissao , salario_base)
 VALUE ('Ana Beatriz Silva', 'Gerente de Projetos', '2022-01-15', 8500.00),
		('Bruno Oliveira Lima', 'Desenvolvedor Backend', '2023-03-20', 6200.00),
		('Carla Souza Ferreira', 'Analista de RH', '2021-11-10', 4800.00),
		('Diego Santos Cavalcanti', 'Designer UX/UI', '2024-01-05', 5500.00),
		('Elena Martins Costa', 'Coordenadora de Vendas', '2020-05-22', 7200.00);
        

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario_base >6000;

SELECT * FROM tb_colaboradores WHERE salario_base <5000;

UPDATE tb_colaboradores  SET salario_base  = 25000 WHERE id_colaborador = 1;
