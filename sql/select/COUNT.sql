SELECT COUNT(*) AS 'Pessoas sem emprego' FROM HistoricoEmprego WHERE datatermino NOTNULL;

SELECT COUNT(*) FROM Licencas WHERE tipolicenca = 'férias'
