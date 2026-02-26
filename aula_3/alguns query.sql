-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos where not categoria_id =1 order by nome;

SELECT * FROM tb_produtos where not categoria_id =1 order by nome, preco desc;

SELECT * FROM tb_produtos where preco in(5.00,10.00,15.00);

SELECT * FROM tb_produtos where preco between 5.00 and 15.00;

-- like usados somente para textos --
SELECT * FROM tb_produtos where nome like "%ra%";-- tenha "RA"

SELECT * FROM tb_produtos where nome like "ra%";-- começa com "RA"--

SELECT * FROM tb_produtos where nome like "%ra";-- termina com "RA"--

-- Operadores de Agregação --

select count(*) from tb_produtos; -- contar quantos elementos de acordo com o criterio

select count(categoria_id) from tb_produtos;

select sum(preco) as soma_precos from tb_produtos; -- somar elementos de acordo com o criterio

select avg(preco) as media_preco from tb_produtos; -- media de elementos 

select categoria_id,  avg(preco) as media_preco from tb_produtos group by categoria_id; -- tirar a media de produtos por categoria

select max(preco) as maior_preco from tb_produtos ;

select min(preco) as menor_preco from tb_produtos ;

select * from tb_produtos inner join tb_categorias  -- unir as duas tabelas
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id where tb_categorias.descricao = "Frutas";

select descricao, avg(preco) as media_preco
from tb_produtos inner join tb_categorias  -- unir as duas tabelas
on tb_produtos.categoria_id = tb_categorias.id
group by descricao;

select * from tb_produtos left join tb_categorias  -- unir as duas tabelas pela esquedra, tem a chave estrangeira 
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos right join tb_categorias  -- unir as duas tabelas pela  
on tb_produtos.categoria_id = tb_categorias.id;


select descricao, avg(preco) as preco_medio
from tb_produtos inner join tb_categorias  -- unir as duas tabelas
on tb_produtos.categoria_id = tb_categorias.id
group by descricao
having preco_medio > 5.00; -- estabeleceu um criterio "filtragem " usada somente em funções de agrupamento 




































