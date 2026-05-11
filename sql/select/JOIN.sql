SELECT c.nome, p.id, p.datahorapedido from clientes c
INNER join pedidos p
ON c.id = p.idcliente;

/*RIGHT*/
SELECT pr.nome, ip.idproduto, ip.idpedido
FROM itenspedidos ip
RIGHT JOIN produtos pr
ON pr.id = ip.idproduto;

SELECT pr.nome,  x.idproduto,  x.idpedido 
FROM(
    SELECT ip.idpedido, ip.idproduto
    FROM pedidos p
    JOIN itenspedidos ip 
    ON p.id = ip.idpedido
    WHERE strftime('%m', p.DataHoraPedido) = '10') x
RIGHT JOIN produtos pr
ON pr.id =  x.idproduto;

SELECT *
FROM Pedidos p
RIGHT JOIN clientes c
ON c.ID = p.IDcliente
WHERE p.IDcliente IS NULL;


/*LEFT */
SELECT c.nome, p.id
FROM clientes c 
LEFT JOIN Pedidos p 
ON c.id = p.idcliente;

/*FULL*/
SELECT c.nome, p.id 
FROM clientes c
FULL JOIN pedidos p
ON c.id = p.idcliente;
