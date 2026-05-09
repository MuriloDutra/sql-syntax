/* INTERSECT = Retorna os registros que estão presentes em ambas as tabelas.
* Exemplo:
* TabelaA:
* id | nome | idade
* 1 | João | 20

* TabelaB:
* id | nome | idade
* 1 | João | 20
* 2 | Maria | 25
* 3 | Pedro | 30

* Retorno:
* id | nome | idade
* 1 | João | 20

*/
SELECT * FROM TabelaA
INTERSECT
SELECT * FROM TabelaB;