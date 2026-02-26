CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    setor VARCHAR(50) NOT NULL,
    requer_receita BOOLEAN NOT NULL,
    PRIMARY KEY (id_categoria)
);
CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    validade DATE NOT NULL,
    preco DECIMAL(6, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (setor, requer_receita) VALUES 
('Medicamentos', true),
('Analgésicos', false),
('Cosméticos', false),
('Higiene Pessoal', false),
('Suplementos', false);

INSERT INTO tb_produtos (nome_produto, validade, preco, estoque, id_categoria) VALUES 
('Amoxicilina', '2025-12-01', 65.50, 20, 1),
('Paracetamol', '2026-05-15', 12.00, 100, 2),
('Protetor Solar FPS 50', '2025-08-20', 89.90, 15, 3),
('Shampoo Anticaspa', '2027-01-10', 35.00, 30, 4),
('Vitamina C 1g', '2026-03-30', 45.00, 50, 5),
('Creme Hidratante', '2025-11-12', 58.00, 25, 3),
('Dipirona Monoidratada', '2026-07-01', 8.50, 200, 2),
('Omega 3 1000mg', '2025-09-15', 110.00, 10, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT 
    p.nome_produto, 
    p.preco, 
    c.setor, 
    c.requer_receita 
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c 
ON p.id_categoria = c.id_categoria;

SELECT 
    p.nome_produto, 
    p.preco, 
    p.estoque, 
    c.setor, 
    c.requer_receita
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c 
ON p.id_categoria = c.id_categoria
WHERE c.setor = 'Cosméticos';