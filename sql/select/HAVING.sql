/*HAVING filters groups after aggregation (after COUNT, etc.).*/

SELECT instituicao, COUNT(curso) FROM Treinamento GROUP BY instituicao HAVING COUNT(curso) > 2;

SELECT cargo, COUNT(*) Quantidade FROM HistoricoEmprego GROUP BY cargo HAVING Quantidade >= 2;