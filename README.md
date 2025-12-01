# 📚 Projeto de Banco de Dados Relacional: Gerenciamento de Biblioteca Universitária

## 💡 Visão Geral do Projeto

Este repositório contém o projeto completo de modelagem de um banco de dados relacional para um **Sistema de Gerenciamento de Biblioteca Universitária**. O projeto foi desenvolvido seguindo as etapas de Definição do Minimundo, Modelagem Conceitual (DER) e Implementação Lógica e Manipulação de Dados (SQL DDL/DML), visando a normalização até a 3ª Forma Normal (3FN) e a garantia da integridade referencial.

---

## 💻 Modelo Lógico Resultante

O modelo final é composto por 6 tabelas principais, conectadas por chaves primárias (PK) e chaves estrangeiras (FK), eliminando o relacionamento Muitos-para-Muitos (N:N) entre LIVRO e AUTOR através da tabela associativa LIVRO_AUTOR.

### Entidades (Tabelas)

| Tabela | Descrição | Chave Primária (PK) | Chaves Estrangeiras (FK) |
| :--- | :--- | :--- | :--- |
| **USUARIO** | Membros da biblioteca (alunos, professores). | `matricula` | N/A |
| **AUTOR** | Responsáveis pela escrita das obras. | `id_autor` | N/A |
| **LIVRO** | Obras intelectuais (títulos). | `isbn` | N/A |
| **LIVRO_AUTOR** | Tabela de ligação N:N. | `isbn`, `id_autor` (Composta) | `isbn` (ref. LIVRO), `id_autor` (ref. AUTOR) |
| **EXEMPLAR** | Cópias físicas individuais de um livro. | `id_exemplar` | `isbn` (ref. LIVRO) |
| **EMPRESTIMO** | Registro das transações de saída/devolução. | `id_emprestimo` | `matricula_usuario` (ref. USUARIO), `id_exemplar` (ref. EXEMPLAR) |

### 🖼️ Diagrama Relacional (3FN)



---

## 🛠️ Tecnologias e Ambiente

* **SGBD (Sistema Gerenciador de Banco de Dados):** MySQL ou PostgreSQL (Os scripts DDL são compatíveis com a sintaxe SQL padrão).
* **Ferramenta de Desenvolvimento:** DBeaver, MySQL Workbench, pgAdmin ou terminal SQL.
* **Linguagem:** SQL (DDL e DML).

---

## 📋 Estrutura do Repositório

O projeto está organizado em scripts SQL numerados para garantir a ordem correta de execução:

| Arquivo | Conteúdo | Propósito |
| :--- | :--- | :--- |
| `01-ddl-create-tables.sql` | `CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY` | Construção do esquema do banco de dados. |
| `02-dml-inserts.sql` | `INSERT INTO` | Povoamento inicial das tabelas. |
| `03-dml-selects.sql` | Comandos `SELECT` (Consultas com JOIN, GROUP BY). | Recuperação e análise de dados complexos. |
| `04-dml-updates-deletes.sql` | Comandos `UPDATE` e `DELETE`. | Manipulação, atualização e exclusão de dados com integridade. |

---

## ▶️ Instruções de Execução

Siga a ordem abaixo para recriar e interagir com o banco de dados em seu ambiente:

1.  **Criação do Banco de Dados:** Crie um novo esquema (schema) vazio no seu SGBD preferido (ex: `CREATE DATABASE biblioteca;`).
2.  **Construção das Tabelas:** Execute o script `01-ddl-create-tables.sql` para definir todas as tabelas e suas restrições de integridade.
3.  **Povoamento dos Dados:** Execute o script `02-dml-inserts.sql` para popular as tabelas com dados de exemplo.
4.  **Testes e Consultas:** Execute os scripts `03-dml-selects.sql` e `04-dml-updates-deletes.sql` para testar a manipulação e a recuperação de dados, verificando a funcionalidade do modelo.

Qualquer dúvida ou sugestão, entre em contato!
