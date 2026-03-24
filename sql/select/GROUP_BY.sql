SELECT parentesco FROM Dependentes GROUP BY parentesco;

SELECT parentesco, COUNT(*) AS Quantidade FROM Dependentes GROUP BY parentesco;

SELECT instituicao, COUNT(curso) from Treinamento GROUP by instituicao;