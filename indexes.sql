-- 1. INDEX idx_matricula_periodo
-- Consultas que filtram ou agrupam dados por período letivo são frequentes,
-- como as que calculam número de matrículas ou listam alunos em um período específico
CREATE INDEX idx_matricula_periodo
ON escola.matricula (periodo_letivo);

-- 2. INDEX idx_usuario_estado
-- O índice idx_usuario_estado melhora a performance de consultas que filtram usuários por estado,
-- como ao listar alunos ou professores de um estado específico.
CREATE INDEX idx_usuario_estado
ON escola.usuario (estado);

-- 3. INDEX idx_matricula_aluno_disciplina
-- Muitos JOINs e filtros usam aluno_id e disciplina_id juntos para recuperar notas,
-- verificar inscrições ou gerar avaliações. O índice idx_matricula_aluno_disciplina 
-- melhora esse padrão de acesso.
CREATE INDEX idx_matricula_aluno_disciplina
ON escola.matricula (aluno_id, disciplina_id);