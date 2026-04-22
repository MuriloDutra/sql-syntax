/*CAST is used to convert a value from one data type to another.*/
SELECT ('O faturamento bruto médio foi ' || CAST(faturamento_bruto AS TEXT)) FROM faturamento;