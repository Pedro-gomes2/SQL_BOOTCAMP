create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
	ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Produto VARCHAR(150) NOT NULL,
    Descricao TEXT,
    Preco_Unitario DECIMAL(10, 2) NOT NULL,
    Quantidade_Estoque INT DEFAULT 0

);
INSERT INTO tb_produtos (Nome_Produto, Descricao, Preco_Unitario, Quantidade_Estoque)
VALUES 
('Smartphone Galaxy S23', '256GB, Cor Preta, Tela 6.1 polegadas', 4200.00, 15),
('Fone de Ouvido Bluetooth', 'Cancelamento de ruído, Bateria 20h', 350.50, 50),
('Cadeira Gamer RGB', 'Ergonômica, Reclinável, Suporta até 120kg', 1200.00, 8),
('Monitor 27" Curvo', '144Hz, 1ms, Resolução Full HD', 1580.90, 12),
('Teclado Mecânico', 'Switch Blue, Retroiluminado, Padrão ABNT2', 290.00, 25);


select * from tb_produtos;
select * from tb_produtos where Preco_Unitario > 500;
select * from tb_produtos where Preco_Unitario < 500;

uPDATE tb_produtos sET Preco_Unitario = 400.00 wHERE ID_Produto = 2 ;