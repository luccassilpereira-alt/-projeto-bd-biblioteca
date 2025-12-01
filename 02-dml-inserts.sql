-- 1. Povoamento da Tabela AUTOR
INSERT INTO AUTOR (id_autor, nome_autor, nacionalidade) VALUES
(1, 'Machado de Assis', 'Brasileiro'),
(2, 'Andrew S. Tanenbaum', 'Holandês'),
(3, 'Barbara O. Kitzler', 'Alemã');

-- 2. Povoamento da Tabela LIVRO
INSERT INTO LIVRO (isbn, titulo, ano_publicacao, editora, genero) VALUES
('978-8575225441', 'Engenharia de Software', 2018, 'Pearson', 'Tecnologia'),
('978-8535914800', 'Dom Casmurro', 1899, 'Companhia das Letras', 'Ficção'),
('978-0134057631', 'Database System Concepts', 2019, 'McGraw Hill', 'Tecnologia');

-- 3. Povoamento da Tabela LIVRO_AUTOR (Associação N:N)
INSERT INTO LIVRO_AUTOR (isbn, id_autor) VALUES
('978-8575225441', 2), -- Engenharia de Software por Tanenbaum
('978-8535914800', 1); -- Dom Casmurro por Machado de Assis

-- 4. Povoamento da Tabela USUARIO
INSERT INTO USUARIO (matricula, nome, tipo_usuario, email, status) VALUES
('A2024001', 'Ana Silva', 'Aluno', 'ana.silva@uni.edu', TRUE),
('P1005', 'Dr. Carlos Souza', 'Professor', 'carlos.souza@uni.edu', TRUE);

-- 5. Povoamento da Tabela EXEMPLAR
INSERT INTO EXEMPLAR (id_exemplar, isbn, numero_tombo, status_exemplar) VALUES
(1001, '978-8575225441', 'ES001', 'Emprestado'),
(1002, '978-8575225441', 'ES002', 'Disponível'),
(1003, '978-8535914800', 'DC001', 'Disponível');

-- 6. Povoamento da Tabela EMPRESTIMO
INSERT INTO EMPRESTIMO (id_emprestimo, matricula_usuario, id_exemplar, data_emprestimo, data_prev_devolucao) VALUES
(5001, 'A2024001', 1001, '2025-11-20', '2025-12-05');
