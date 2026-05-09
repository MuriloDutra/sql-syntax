/* EXCEPT = Retorna os registros que estão presentes na primeira tabela e não estão presentes na segunda tabela.
* Exemplo:
* TabelaA:
* id | nome | idade
* 1 | João | 20
* 2 | Maria | 25
* 3 | Pedro | 30

* TabelaB:
* id | nome | idade
* 1 | João | 20
* 2 | José | 30


* Retorno:
* id | nome | idade
* 2 | Maria | 25
* 3 | Pedro | 30
*/
SELECT * FROM TabelaA
EXCEPT
SELECT * FROM TabelaB;