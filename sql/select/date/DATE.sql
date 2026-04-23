SELECT DATE('now'); /*2026-04-22*/

SELECT DATE('now', '-10 days'); /*2026-04-12*/

SELECT julianday('now') - julianday('2023-04-01');

SELECT julianday('2023-04-10') - julianday('2023-04-01'); /*9*/

SELECT * FROM Alunos WHERE STRFTIME('%m', data_nascimento) = '02'; /*2026-02-01*/

SELECT nome_aluno,
      data_nascimento,
      (strftime('%Y', CURRENT_DATE) - strftime('%Y', data_nascimento)) - 
      (strftime('%m-%d', CURRENT_DATE) < strftime('%m-%d', data_nascimento)) AS idade
FROM Alunos;