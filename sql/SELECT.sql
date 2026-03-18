SELECT * FROM tabelafornecedores WHERE pai_s_de_origem = 'China';

SELECT DISTINCT cliente from tabelapedidos;

SELECT DISTINCT id_produto FROM vendas;

SELECT nome_do_cliente, data_de_cadastro from clientes WHERE data_de_cadastro < '2020-01-01';

SELECT * from tabelapedidos WHERE total_do_pedido >= 200;

SELECT * from tabelapedidos WHERE total_do_pedido <> 200;

SELECT * from tabelapedidos WHERE total_do_pedido = 200;

SELECT * from tabelapedidos WHERE data_do_pedido > '2023-09-19';

SELECT * FROM Clientes WHERE Idade > 30 AND Sexo <> 'Masculino';

SELECT * FROM Produtos WHERE Nome LIKE 'computador';

SELECT * from tabelapedidos WHERE status = 'Processando' OR status = 'Pendente';

SELECT * from tabelapedidos WHERE NOT status = 'Pendente';

SELECT * from tabelapedidos where data_de_envio_es BETWEEN '2023-08-01' and '2023-09-01';

SELECT informacoes_de_contato AS email FROM tabelaclientes;
