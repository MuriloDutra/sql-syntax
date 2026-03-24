/*O % é um wildcard que representa qualquer sequência de caracteres*/
SELECT * FROM Treinamento WHERE curso LIKE 'O Poder%';

SELECT * FROM Treinamento WHERE curso LIKE '%realizar%';

SELECT * FROM Treinamento WHERE (curso LIKE 'O direito%' AND instituicao = 'da Rocha') OR (curso LIKE 'O conforto%' AND instituicao = 'das Neves');