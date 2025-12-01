-- DDL para a Tabela USUARIO
CREATE TABLE USUARIO (
    matricula VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo_usuario VARCHAR(20) CHECK (tipo_usuario IN ('Aluno', 'Professor', 'Funcionario')),
    email VARCHAR(100) UNIQUE NOT NULL,
    status BOOLEAN DEFAULT TRUE,
    -- ... outros atributos
);
