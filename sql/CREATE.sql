CREATE DATABASE BibliotecaDB;

CREATE SCHEMA LivrosSchema;

CREATE TABLE tabelaclientes (
  ID_CLIENTE INT PRIMARY KEY,
  NOME_CLIENTE VARCHAR (250),
  INFORMACOES_DE_CONTATO VARCHAR (250)
);

CREATE TABLE Pedidos (
  PedidoID INT PRIMARY KEY,
  ClienteID INT,
  /* DEFAULT 'Pedido sem descrição' é um valor padrão que será atribuído à coluna Descricao se não for informado um valor para ela. */
  Descricao VARCHAR(100) DEFAULT 'Pedido sem descrição',
  /* ON DELETE CASCADE é uma restrição que permite que a linha seja deletada se a linha da tabela Cliente for deletada. */
  FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

CREATE TABLE Turma_Alunos (
  ID_Turma INT,
  ID_Aluno INT,
  /* PRIMARY KEY (ID_Turma, ID_Aluno) é uma chave primária composta, pois é formada por duas colunas: ID_Turma e ID_Aluno. */
  PRIMARY KEY (ID_Turma, ID_Aluno),
  FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma),
  FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno)
);