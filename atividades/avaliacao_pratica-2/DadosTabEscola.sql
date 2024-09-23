-- Inserindo dados na tabela TB_ALUNOS
INSERT INTO TB_ALUNOS (nome) VALUES ('Caua Icaro');
INSERT INTO TB_ALUNOS (nome) VALUES ('Gustavo Henrique');
INSERT INTO TB_ALUNOS (nome) VALUES ('Isabelle Silva');
INSERT INTO TB_ALUNOS (nome) VALUES ('Isadora Braide');
INSERT INTO TB_ALUNOS (nome) VALUES ('Vitoria Ketlyn');
INSERT INTO TB_ALUNOS (nome) VALUES ('Victor Moura');
INSERT INTO TB_ALUNOS (nome) VALUES ('Livia');
INSERT INTO TB_ALUNOS (nome) VALUES ('Eduarda de Queiroz');
INSERT INTO TB_ALUNOS (nome) VALUES ('Ruth Rodrigues');

-- Inserindo dados na tabela TB_PROFESSOR
INSERT INTO TB_PROFESSOR (nome) VALUES ('Prof. Taveira');
INSERT INTO TB_PROFESSOR (nome) VALUES ('Prof. Tulio');
INSERT INTO TB_PROFESSOR (nome) VALUES ('Prof. Alexandre Feitosa');
INSERT INTO TB_PROFESSOR (nome) VALUES ('Prof(a). Nubelia');

-- Inserindo dados na tabela TB_DISCIPLINA
INSERT INTO TB_DISCIPLINA (nome) VALUES ('Banco de Dados');
INSERT INTO TB_DISCIPLINA (nome) VALUES ('Historia');
INSERT INTO TB_DISCIPLINA (nome) VALUES ('Fisica');
INSERT INTO TB_DISCIPLINA (nome) VALUES ('Portugues');
INSERT INTO TB_DISCIPLINA (nome) VALUES ('Geografia');

-- Inserindo dados na tabela Matricula
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (1, 1, 1, 9.0, 8.5, 2, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (2, 2, 2, 6.0, 5.5, 5, FALSE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (3, 1, 1, 9.0, 8.5, 1, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (4, 3, 3, 6.5, 7.0, 3, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (5, 4, 4, 5.0, 6.0, 6, FALSE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (6, 1, 1, 8.5, 9.0, 0, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (7, 2, 5, 7.0, 7.5, 4, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (8, 3, 3, 9.0, 8.5, 1, TRUE);
INSERT INTO Matricula (nome_aluno, nome_professor, disciplina, nota_N1, nota_N2, faltas, Aprovado_SN) 
VALUES (9, 4, 4, 5.5, 6.0, 8, FALSE);
