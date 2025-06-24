-- 1. Exibe lista de disciplinas com os respectivos professores responsáveis.
CREATE OR REPLACE VIEW escola.vw_disciplinas_com_professores AS
SELECT
    d.nome AS nome_disciplina,
    d.codigo AS codigo_disciplina,
    u.nome AS nome_professor,
    u.sobrenome AS sobrenome_professor,
    p.titulacao,
    p.area_especializacao
FROM escola.disciplina d
JOIN escola.disciplina_professor dp ON d.id = dp.disciplina_id
JOIN escola.professor p ON dp.professor_id = p.usuario_id
JOIN escola.usuario u ON p.usuario_id = u.id;

-- 2. Apresenta uma visão consolidada das matrículas com informações do aluno, disciplina e curso.
CREATE OR REPLACE VIEW escola.vw_matriculas_com_curso AS
SELECT
    m.id AS id_matricula,
    u.nome AS nome_aluno,
    u.sobrenome AS sobrenome_aluno,
    d.nome AS nome_disciplina,
    c.nome AS nome_curso,
    m.periodo_letivo,
    m.nota,
    m.status
FROM escola.matricula m
JOIN escola.usuario u ON m.aluno_id = u.id
JOIN escola.disciplina d ON m.disciplina_id = d.id
JOIN escola.curso c ON m.curso_id = c.id;

-- 3. Objetivo: Exibe o resumo das avaliações feitas aos professores, com médias agrupadas.
CREATE OR REPLACE VIEW escola.vw_avaliacao_professores AS
SELECT
    u.id AS id_professor,
    u.nome,
    u.sobrenome,
    ROUND(AVG(a.didatica), 2) AS media_didatica,
    ROUND(AVG(a.material_apoio), 2) AS media_material,
    ROUND(AVG(a.relevancia_conteudo), 2) AS media_conteudo,
    ROUND(AVG(a.infraestrutura), 2) AS media_infra
FROM escola.avaliacao a
JOIN escola.usuario u ON a.professor_id = u.id
GROUP BY u.id, u.nome, u.sobrenome;
