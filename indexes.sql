-- 1. INDEX idx_matricula_periodo
-- Consultas que filtram ou agrupam dados por período letivo são frequentes,
-- como as que calculam número de matrículas ou listam alunos em um período específico
CREATE INDEX idx_matricula_periodo
ON escola.matricula (periodo_letivo);

-- 2. INDEX idx_disciplina_nome
-- Algumas consultas recuperam disciplinas específicas pelo nome, então um índice no nome 
-- da disciplina acelera buscas de igualdade (nome = "Banco de Dados", por exemplo).
CREATE INDEX idx_disciplina_nome
ON escola.disciplina (nome);

-- 3. INDEX idx_matricula_aluno_disciplina
-- Muitos JOINs e filtros usam aluno_id e disciplina_id juntos para recuperar notas,
-- verificar inscrições ou gerar avaliações. O índice idx_matricula_aluno_disciplina 
-- melhora esse padrão de acesso.
CREATE INDEX idx_matricula_aluno_disciplina
ON escola.matricula (aluno_id, disciplina_id);
