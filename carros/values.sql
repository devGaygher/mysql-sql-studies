-- ================================
-- inserir dados nas tabelas
-- ================================

USE carros;

INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
	('Nicole','Assunção','Rua 4'),
	('Juliana','Soave','Rua 2'),
    ('Rafael','Gaygher','Rua 3'),
    ('Alice','Belchior','Rua 5'),
    ('Ana','Costa','Rua 4');

INSERT INTO marcas (nome_marca, origem)
VALUES
	('Ford','Estados Unidos'),
	('Renault','França'),
    ('Hyundai','Coreia do Sul'),
    ('Chevrolet','BEstados Unidos'),
    ('Fiat','Italia'),
	('Volkswagen','Alemanha'),
	('BYD','China'),
	('Toyota','Japão'),
	('Citroen','França'),
	('Peugeot','França'),
	('KIA','Coreia do Sul')
;

INSERT INTO inventario (modelo, transmissao, motor, combustivel,marcas_id)
VALUES
	('Onix','Manual', '1.0','Gasolina','4'),
    ('HB20','Manual', '1.0','Gasolina','3'),
    ('GOL','Automático', '1.6','Gasolina','6'),
    ('Kwid','Manual', '1.0','Gasolina','2'),
    ('Dolphin GS','Automático', '95c','Elétrico','7')
;