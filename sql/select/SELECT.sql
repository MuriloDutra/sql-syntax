SELECT * FROM tabelafornecedores WHERE pai_s_de_origem = 'China';

SELECT DISTINCT cliente FROM tabelapedidos;

SELECT DISTINCT id_produto FROM vendas;

SELECT nome_do_cliente, data_de_cadastro FROM clientes WHERE data_de_cadastro < '2020-01-01';

SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200;

SELECT * FROM tabelapedidos WHERE total_do_pedido <> 200;

SELECT * FROM tabelapedidos WHERE total_do_pedido = 200;

SELECT * FROM tabelapedidos WHERE data_do_pedido > '2023-09-19';

SELECT * FROM Produtos WHERE Nome LIKE 'computador';

SELECT * FROM tabelapedidos WHERE NOT status = 'Pendente';

SELECT * FROM tabelapedidos WHERE data_de_envio_es BETWEEN '2023-08-01' AND '2023-09-01';

SELECT informacoes_de_contato AS email FROM tabelaclientes;

/*LIMIT and OFFSET*/

SELECT * FROM HistoricoEmprego ORDER BY salario DESC LIMIT 5;

SELECT * FROM HistoricoEmprego ORDER BY salario DESC LIMIT 5 OFFSET 5;

/*ISNULL and NOTNULL*/

SELECT * FROM HistoricoEmprego WHERE datatermino ISNULL ORDER BY salario DESC LIMIT 5;

SELECT * FROM HistoricoEmprego WHERE datatermino NOTNULL ORDER BY salario DESC LIMIT 5;