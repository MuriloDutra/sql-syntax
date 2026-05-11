/* Subquery = Retorna os registros que estão presentes na primeira tabela e não estão presentes na segunda tabela.
* Com WHERE um registro só é retornado.
*/
SELECT nome, telefone
from clientes
WHERE ID = (
  SELECT idcliente from pedidos
  WHERE
  datahorapedido = '2023-01-02 08:15:00'
);

SELECT Nome
FROM Alunos
WHERE ID_aluno = (
    SELECT ID_aluno
    FROM Notas
    WHERE Nota = (
        SELECT MAX(Nota)
        FROM Notas
    )
);

/* Com IN vários registros são retornados. */
SELECT nome from clientes WHERE id IN (
	SELECT idcliente FROM pedidos
  	WHERE strftime('%m', datahorapedido) = '01' 
)

/* HAVING filtra o resultado depois do GROUP BY (grupos ou valores agregados).
 * WHERE filtra linhas antes do agrupamento.
 * Use WHERE quando precisar de uma condição para filtrar linhas antes de qualquer agrupamento.
 * Use HAVING quando precisar aplicar um filtro depois de agrupar as linhas, especialmente quando estiver usando funções de agregação.
 */
SELECT nome, preco
from produtos
GROUP by nome, preco
having preco > (
	select avg(preco) from produtos
)