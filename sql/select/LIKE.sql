/*O % é um wildcard que representa qualquer sequência de caracteres*/
SELECT * from Treinamento WHERE curso LIKE 'O Poder%';

SELECT * from Treinamento WHERE curso LIKE '%realizar%';

SELECT * from Treinamento WHERE (curso LIKE 'O direito%' AND instituicao = 'da Rocha') OR (curso LIKE 'O conforto%' AND instituicao = 'das Neves');