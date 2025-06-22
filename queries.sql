-- 1. Alunos matriculados em uma disciplina específica em um determinado período
SELECT u.nome, u.sobrenome, d.nome AS disciplina, m.periodo_letivo
FROM escola.matricula m
JOIN escola.usuario u ON m.aluno_id = u.id
JOIN escola.disciplina d ON m.disciplina_id = d.id
WHERE d.nome = 'Banco de Dados' AND m.periodo_letivo = '2024.1';

-- 2. Média das notas dos alunos
SELECT u.nome, u.sobrenome, ROUND(AVG(m.nota), 2) AS media
FROM escola.matricula m
JOIN escola.usuario u ON m.aluno_id = u.id
GROUP BY u.nome, u.sobrenome;

-- 3. Professores e as disciplinas que eles ministram
SELECT u.nome AS professor, d.nome AS disciplina
FROM escola.professor p
JOIN escola.usuario u ON u.id = p.usuario_id
JOIN escola.disciplina_professor dp ON dp.professor_id = p.usuario_id
JOIN escola.disciplina d ON d.id = dp.disciplina_id
ORDER BY u.nome, d.nome;

-- 4. Disciplinas que os alunos cursaram no período 2024.1
SELECT a.nome AS aluno, d.nome AS disciplina, c.nome AS curso
FROM escola.matricula m
JOIN escola.usuario a ON m.aluno_id = a.id
JOIN escola.disciplina d ON m.disciplina_id = d.id
JOIN escola.curso c ON m.curso_id = c.id
WHERE m.periodo_letivo = '2024.1'
ORDER BY a.nome, d.nome;

-- 5. Avaliação média dos professores
SELECT u.nome, u.sobrenome,
       ROUND(AVG(a.didatica), 2) AS media_didatica,
       ROUND(AVG(a.material_apoio), 2) AS media_material,
       ROUND(AVG(a.relevancia_conteudo), 2) AS media_conteudo,
       ROUND(AVG(a.infraestrutura), 2) AS media_infra
FROM escola.avaliacao a
JOIN escola.usuario u ON a.professor_id = u.id
GROUP BY u.nome, u.sobrenome;

-- 6. Disciplinas com pré-requisitos
SELECT d1.nome AS disciplina, d2.nome AS prerequisito
FROM escola.disciplina_prerequisito dp
JOIN escola.disciplina d1 ON dp.disciplina_id = d1.id
JOIN escola.disciplina d2 ON dp.prerequisito_id = d2.id;

-- 7. Número de matrículas por curso no período 2024.1
SELECT c.nome AS curso, COUNT(*) AS total_matriculas
FROM escola.matricula m
JOIN escola.curso c ON m.curso_id = c.id
WHERE m.periodo_letivo = '2024.1'
GROUP BY c.nome
ORDER BY total_matriculas DESC;