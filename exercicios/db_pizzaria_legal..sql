CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL, -- Ex: Salgada, Doce, Vegetariana, Especial
    tamanho VARCHAR(50) NOT NULL, -- Ex: Broto, Média, Grande, Família
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(100) NOT NULL,
    ingredientes TEXT,
    preco DECIMAL(6, 2) NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- inserindo dados--
INSERT INTO tb_categorias (tipo, tamanho)
VALUES 
('Salgada', 'Grande'),
('Salgada', 'Broto'),
('Doce', 'Grande'),
('Vegetariana', 'Média'),
('Especial', 'Grande');


INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES 
('Calabresa', 'Molho, mussarela, calabresa e cebola', 45.00, 1),
('Portuguesa', 'Molho, mussarela, presunto, ovos e ervilha', 52.00, 1),
('Brigadeiro', 'Chocolate ao leite e granulado', 38.00, 3),
('Margherita', 'Molho, mussarela, tomate e manjericão', 48.50, 4),
('Trufa Branca', 'Chocolate branco trufado e morangos', 65.00, 5),
('Frango com Catupiry', 'Molho, frango desfiado e catupiry', 49.90, 1),
('Quatro Queijos', 'Mussarela, provolone, parmesão e gorgonzola', 55.00, 5),
('Abobrinha', 'Molho, mussarela e abobrinha temperada', 42.00, 4);

SELECT * FROM tb_pizzas 
WHERE preco > 45.00;

SELECT * FROM tb_pizzas 
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas 
WHERE nome_pizza LIKE '%M%';

SELECT 
    tb_pizzas.nome_pizza, 
    tb_pizzas.preco, 
    tb_categorias.tipo, 
    tb_categorias.tamanho,
    tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT 
    tb_pizzas.nome_pizza, 
    tb_pizzas.preco, 
    tb_pizzas.ingredientes, 
    tb_categorias.tipo, 
    tb_categorias.tamanho
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.tipo = 'Doce';














