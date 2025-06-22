# Projeto Final - Banco de Dados (ICMC/USP)

Este repositório contém o projeto final da disciplina de Banco de Dados SCC0240, realizado durante o 1º semestre de 2025 no ICMC-USP.

## Como configurar e executar o banco de dados

### 1. Instale o PostgreSQL

A instalação do [PostgreSQL](https://www.postgresql.org/download/) é necessária para a execução deste trabalho. Recomendamos a versão 16 ou superior.

### 2. Crie o banco de dados

Abra o `psql` e execute:

```bash
createdb gestao_escolar
```

### 3. Acesse o banco

```bash
psql -d gestao_escolar
```

### 4. Execute os scripts

Na ordem:

```sql
\i create.sql
\i insert.sql
```

O script `create.sql` cria o esquema `escola` e todas as tabelas do projeto com restrições e chaves estrangeiras.

O script `insert.sql` insere dados de usuários (alunos, professores e administrativos), cursos, disciplinas, matrículas, avaliações, infraestrutura, regras e pré-requisitos.

## Consultas (queries.sql)

O arquivo `queries.sql` contém 7 consultas:

### Lista os alunos que estão matriculados na disciplina "Banco de Dados" no período "2024.1"

```sql
SELECT u.nome, u.sobrenome, d.nome AS disciplina, m.periodo_letivo
FROM escola.matricula m
JOIN escola.usuario u ON m.aluno_id = u.id
JOIN escola.disciplina d ON m.disciplina_id = d.id
WHERE d.nome = 'Banco de Dados' AND m.periodo_letivo = '2024.1';
```

### Calcula a média das notas do aluno id 13, considerando todas as disciplinas em que ele está matriculado

```sql
SELECT u.nome, u.sobrenome, ROUND(AVG(m.nota), 2) AS media
FROM escola.matricula m
JOIN escola.usuario u ON m.aluno_id = u.id
WHERE u.id = 13
GROUP BY u.nome, u.sobrenome;
```

### Relaciona cada professor as disciplinas que ele ministra

```sql
SELECT u.nome AS professor, d.nome AS disciplina
FROM escola.professor p
JOIN escola.usuario u ON u.id = p.usuario_id
JOIN escola.disciplina_professor dp ON dp.professor_id = p.usuario_id
JOIN escola.disciplina d ON d.id = dp.disciplina_id
ORDER BY u.nome, d.nome;
```

### Exibe os alunos, as disciplinas em que estão matriculados e os cursos correspondentes no período "2024.1"

```sql
SELECT a.nome AS aluno, d.nome AS disciplina, c.nome AS curso
FROM escola.matricula m
JOIN escola.usuario a ON m.aluno_id = a.id
JOIN escola.disciplina d ON m.disciplina_id = d.id
JOIN escola.curso c ON m.curso_id = c.id
WHERE m.periodo_letivo = '2024.1'
ORDER BY a.nome, d.nome;
```

### Calcula a média de cada critério de avaliação por professor

```sql
SELECT u.nome, u.sobrenome,
       ROUND(AVG(a.didatica), 2) AS media_didatica,
       ROUND(AVG(a.material_apoio), 2) AS media_material,
       ROUND(AVG(a.relevancia_conteudo), 2) AS media_conteudo,
       ROUND(AVG(a.infraestrutura), 2) AS media_infra
FROM escola.avaliacao a
JOIN escola.usuario u ON a.professor_id = u.id
GROUP BY u.nome, u.sobrenome;
```

### Exibe as disciplinas que possuem pré-requisitos e quais são esses pré-requisitos

```sql
SELECT d1.nome AS disciplina, d2.nome AS prerequisito
FROM escola.disciplina_prerequisito dp
JOIN escola.disciplina d1 ON dp.disciplina_id = d1.id
JOIN escola.disciplina d2 ON dp.prerequisito_id = d2.id;
```

### Informa quantas matrículas cada curso teve no período "2024.1"

```sql
SELECT c.nome AS curso, COUNT(*) AS total_matriculas
FROM escola.matricula m
JOIN escola.curso c ON m.curso_id = c.id
WHERE m.periodo_letivo = '2024.1'
GROUP BY c.nome
ORDER BY total_matriculas DESC;
```
