-- Comando para testar a performance da consulta com e sem o indice idx_matricula_periodo
EXPLAIN ANALYZE
SELECT COUNT(1)
FROM escola.matricula
WHERE periodo_letivo = '2024.1';
-- Sem index: Execution Time: 2.220 ms
-- Com index: Execution Time: 0.765 ms

-- Comando para testar a performance da consulta com e sem o indice idx_disciplina_estado
EXPLAIN ANALYZE
SELECT id, nome, estado
FROM escola.usuario
WHERE estado = 'SP';
-- Sem index: Execution Time: 1.859 ms
-- Com index: Execution Time: 0.221 ms


-- Comando para testar a performance da consulta com e sem o indice idx_matricula_aluno_disciplina
EXPLAIN ANALYZE
SELECT nota, status
FROM escola.matricula
WHERE aluno_id = 1050 AND disciplina_id = 3;
-- Sem index: Execution Time: 1.409 ms
-- Com index: Execution Time: 0.026 ms