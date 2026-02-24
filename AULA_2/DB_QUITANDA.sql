CREATE DATABASE db_quitanda;

USE db_quitanda;-- usar o data base --

-- cria a tabela --
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE ,
    preco DECIMAL NOT NULL,
	PRIMARY KEY (id)

);
-- insere valores na tabela --
INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUE("tomate", 1000, "2026-03-24", 8.99);

-- insere vários registros --
INSERT INTO tb_produtos(Nome,Quantidade,Data_validade,Preco)
VALUES ("banana", 1500, "2026-03-24", 12.50),
	   ("morango", 5000, "2026-03-14", 22.00),
       ("alface", 500, "2026-03-01", 6.50),
       ("beterraba", 4000, "2026-03-24", 9.50);
       
INSERT INTO tb_produtos(Nome,Quantidade,Data_validade,Preco)
VALUE("kiwi", 1000, "2026-03-24", 25.00);



-- seleciona a tabela --
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos wHERE id= 8;

SELECT * FROM tb_produtos wHERE preco >10.00;

SELECT * FROM tb_produtos wHERE  nome = "alface" or preco >20.00;

SELECT * FROM tb_produtos wHERE  nome = "alface" and preco >6.50;

SELECT * FROM tb_produtos wHERE  nome != "morango";


select nome, date_format( data_validade,'%d/%m/%y') as Data_validade,concat('R$', format( preco, 2 , 'pt-BR') as preco FROM	 tb_produtos;




-- altera dados da tabela--
uPDATE tb_produtos sET preco = 8.99 wHERE id = 1;


-- alterar (estrutura) propriedade da tabela --
ALTER TABLE	tb_produtos MODIFY preco DECIMAL(6,2); 

aLTER tABLE tb_produtos aDD descricao vARCHAR(500);

aLTER tABLE tb_produtos cHANGE descricao descricao_produto vARCHAR(500);

aLTER tABLE tb_produtos dROP descricao ;

aLTER tABLE tb_produtos dROP descricao_produto;

-- Apagar dados --
dELETE fROM tb_produtos wHERE id= 2;
dELETE fROM tb_produtos wHERE id= 3;
dELETE fROM tb_produtos wHERE id= 4;
dELETE fROM tb_produtos wHERE id= 5;
dELETE fROM tb_produtos wHERE id= 6;
dELETE fROM tb_produtos wHERE id= 7;


