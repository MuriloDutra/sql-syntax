INSERT INTO tabelaclientes
(id_cliente, nome_cliente, informacoes_de_contato, endereco_cliente)
VALUES
(1, 'Ana Silva', 'ana.silva@gmail.com', 'Rua Rocha, 23 - SP');

INSERT INTO tabelaclientes
(id_cliente, nome_cliente, informacoes_de_contato, endereco_cliente)
VALUES
(2, 'Murilo Dutra', 'murilo@gmail.com', 'Rua Rocha 23'),
(3, 'Camila', 'camila@gmail.com', 'Rua Rocha 23'),
(4, 'Patrícia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123'),
(5, 'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
(6, 'André Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789');

INSERT INTO tabelapedidosgold (
  id_pedido_gold,
  data_do_pedido_gold,
  status_gold,
  total_do_pedido_gold,
  cliente_gold,
  data_de_envio_estimada_gold
) SELECT id, data_do_pedido, status, total_do_pedido, cliente, data_de_envio_es
FROM tabelapedidos WHERE total_do_pedido >= 400;