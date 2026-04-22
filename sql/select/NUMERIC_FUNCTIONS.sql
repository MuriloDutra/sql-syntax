SELECT AVG(faturamento_bruto), ROUND(AVG(faturamento_bruto),2) FROM faturamento; /*129835.04111111112, 129835.04*/

SELECT faturamento_bruto, CEIL(faturamento_bruto), FLOOR(faturamento_bruto) FROM faturamento;/*81775.13, 81776, 81775*/

SELECT POWER(2, 3); /*8*/

SELECT SQRT(16); /*4*/

SELECT RANDOM(); /*It generates a random number between -9223372036854775808 and +9223372036854775807.*/

SELECT ABS(-5); /*5*/

SELECT HEX('hello'); /*68656C6C6F*/