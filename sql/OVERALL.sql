CREATE TABLE funcionarios_da_empresa (
	id int PRIMARY KEY,
  	nome varchar(100),
  	departamento varchar(100),
  	salario float
);

INSERT INTO funcionarios_da_empresa (
	id, nome, departamento, salario
)VALUES
 (1,  'Heitor Vieira',  'Financeiro',  4959.22),
 (2,  'Daniel Campos',  'Vendas',  3884.44),
 (3,  'Luiza Dias',  'TI',  8205.78),
 (4,  'Davi Lucas Moraes',  'Financeiro',  8437.02),
 (5,  'Pietro Cavalcanti',  'TI',  4946.88),
 (6,  'Evelyn da Mata',  'Vendas',  5278.88),
 (7,  'Isabella Rocha',  'Marketing',  4006.03),
 (8,  'Sra. Manuela Azevedo',  'Vendas',  6101.88),
 (9,  'Brenda Cardoso',  'TI',  8853.34),
 (10,  'Danilo Souza',  'TI',  8242.14);

SELECT * from funcionarios_da_empresa;

SELECT nome from funcionarios_da_empresa WHERE departamento = 'Vendas';

SELECT * from funcionarios_da_empresa WHERE salario > 5000;

SELECT DISTINCT departamento from funcionarios_da_empresa;

UPDATE funcionarios_da_empresa set salario = 7500 WHERE departamento = 'TI';

DELETE FROM funcionarios_da_empresa WHERE salario < 4000;

SELECT nome, salario from funcionarios_da_empresa WHERE departamento = 'Vendas' and salario >= 6000;

CREATE TABLE projetos (
	id_projeto int PRIMARY KEY,
  	nome_projeto varchar(100),
  	id_gerente int,
	FOREIGN KEY (id_gerente) REFERENCES funcionarios_da_empresa (id) 
);

INSERT INTO projetos (
	id_projeto, nome_projeto, id_gerente
)VALUES 
(1, 'Front End', 4),
(2, 'Back End', 10),
(3, 'Marketing', 6);

SELECT * from projetos WHERE id_gerente = 6;

DROP TABLE funcionarios_da_empresa;
