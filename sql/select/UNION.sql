SELECT rua, bairro, cidade, estado, cep FROM colaboradores
UNION
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;

/* UNION ALL = Retorna todos os registros, mesmo que sejam duplicados. */
SELECT rua, bairro, cidade, estado, cep FROM colaboradores
UNION ALL
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;