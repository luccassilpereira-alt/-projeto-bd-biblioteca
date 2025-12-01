-- A. Registrar a Devolução do Empréstimo 5001
UPDATE EMPRESTIMO
SET data_real_devolucao = '2025-12-01'
WHERE id_emprestimo = 5001;

-- B. Mudar o status do EXEMPLAR 1001 para 'Disponível'
UPDATE EXEMPLAR
SET status_exemplar = 'Disponível'
WHERE id_exemplar = 1001;




UPDATE USUARIO
SET email = 'ana.nova.conta@uni.edu'
WHERE matricula = 'A2024001';




UPDATE AUTOR
SET nacionalidade = 'Americano'
WHERE nome_autor = 'Barbara O. Kitzler';



DELETE FROM AUTOR
WHERE id_autor = 3;


-- Este comando DEVE FALHAR, pois '978-8575225441' é chave estrangeira em EXEMPLAR.
-- Isso garante a integridade referencial.
DELETE FROM LIVRO
WHERE isbn = '978-8575225441';



-- Remove o autor 2 (Tanenbaum) do livro 'Engenharia de Software' (978-8575225441)
DELETE FROM LIVRO_AUTOR
WHERE isbn = '978-8575225441' AND id_autor = 2;
