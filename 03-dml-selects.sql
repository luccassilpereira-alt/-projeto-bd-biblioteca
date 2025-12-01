SELECT
    E.id_emprestimo,
    U.nome AS nome_usuario,
    L.titulo AS titulo_livro,
    E.data_prev_devolucao
FROM EMPRESTIMO E
JOIN USUARIO U ON E.matricula_usuario = U.matricula
JOIN EXEMPLAR EX ON E.id_exemplar = EX.id_exemplar
JOIN LIVRO L ON EX.isbn = L.isbn
WHERE E.data_real_devolucao IS NULL -- Apenas empréstimos ativos
ORDER BY E.data_prev_devolucao ASC;
