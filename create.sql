CREATE SCHEMA escola;
SET search_path TO escola;

-- UNIDADE
CREATE TABLE unidade (
    id SERIAL PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    predio VARCHAR(100)
);

-- DEPARTAMENTO
CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL
);

-- USUARIO
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F', 'X')),
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    rua VARCHAR(100),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    pais VARCHAR(50),
    cep VARCHAR(15),
    tipo_usuario VARCHAR(20) NOT NULL CHECK (tipo_usuario IN ('aluno', 'professor', 'administrativo')),
    unidade_id INTEGER REFERENCES unidade(id),
    UNIQUE (nome, sobrenome, telefone)
);

-- PROFESSOR
CREATE TABLE professor (
    usuario_id INTEGER PRIMARY KEY REFERENCES usuario(id),
    area_especializacao VARCHAR(100),
    titulacao VARCHAR(100)
);

-- CURSO
CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    nivel VARCHAR(20) NOT NULL CHECK (nivel IN ('fundamental', 'medio', 'tecnico', 'graduacao')),
    carga_horaria INTEGER NOT NULL,
    numero_vagas INTEGER NOT NULL,
    ementa TEXT,
    sala_padrao VARCHAR(20),
    departamento_id INTEGER NOT NULL REFERENCES departamento(id),
    unidade_id INTEGER NOT NULL REFERENCES unidade(id)
);

-- DISCIPLINA
CREATE TABLE disciplina (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    aulas_semana INTEGER NOT NULL,
    material_didatico TEXT,
    unidade_id INTEGER REFERENCES unidade(id)
);

-- RELAÇÃO CURSO-DISCIPLINA
CREATE TABLE curso_disciplina (
    curso_id INTEGER REFERENCES curso(id),
    disciplina_id INTEGER REFERENCES disciplina(id),
    PRIMARY KEY (curso_id, disciplina_id)
);

-- RELAÇÃO DISCIPLINA-PROFESSOR
CREATE TABLE disciplina_professor (
    disciplina_id INTEGER REFERENCES disciplina(id),
    professor_id INTEGER REFERENCES professor(usuario_id),
    PRIMARY KEY (disciplina_id, professor_id)
);

-- REGRA
CREATE TABLE regra (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL
);

-- CURSO-REGRA
CREATE TABLE curso_regra (
    curso_id INTEGER REFERENCES curso(id),
    regra_id INTEGER REFERENCES regra(id),
    PRIMARY KEY (curso_id, regra_id)
);

-- INFRAESTRUTURA
CREATE TABLE infraestrutura (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL
);

-- CURSO-INFRAESTRUTURA
CREATE TABLE curso_infraestrutura (
    curso_id INTEGER REFERENCES curso(id),
    infraestrutura_id INTEGER REFERENCES infraestrutura(id),
    PRIMARY KEY (curso_id, infraestrutura_id)
);

-- MATRÍCULA
CREATE TABLE matricula (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER REFERENCES usuario(id),
    disciplina_id INTEGER REFERENCES disciplina(id),
    curso_id INTEGER REFERENCES curso(id),
    periodo_letivo VARCHAR(20) NOT NULL,
    data_matricula DATE NOT NULL,
    status VARCHAR(20) CHECK (status IN ('ativa', 'trancada', 'concluida', 'reprovada')),
    nota DECIMAL(4,2),
    bolsa_desconto DECIMAL(6,2),
    taxa_pago DECIMAL(6,2),
    data_limite DATE
);

-- AVALIAÇÃO
CREATE TABLE avaliacao (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER REFERENCES usuario(id),
    disciplina_id INTEGER REFERENCES disciplina(id),
    professor_id INTEGER REFERENCES professor(usuario_id),
    comentario TEXT,
    didatica INTEGER CHECK (didatica BETWEEN 1 AND 5),
    material_apoio INTEGER CHECK (material_apoio BETWEEN 1 AND 5),
    relevancia_conteudo INTEGER CHECK (relevancia_conteudo BETWEEN 1 AND 5),
    infraestrutura INTEGER CHECK (infraestrutura BETWEEN 1 AND 5)
);

-- MENSAGEM
CREATE TABLE mensagem (
    id SERIAL PRIMARY KEY,
    remetente_id INTEGER REFERENCES usuario(id),
    destinatario_id INTEGER REFERENCES usuario(id),
    texto TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PRÉ-REQUISITOS (CURSO)
CREATE TABLE curso_prerequisito (
    curso_id INTEGER REFERENCES curso(id),
    prerequisito_id INTEGER REFERENCES curso(id),
    PRIMARY KEY (curso_id, prerequisito_id)
);

-- PRÉ-REQUISITOS (DISCIPLINA)
CREATE TABLE disciplina_prerequisito (
    disciplina_id INTEGER REFERENCES disciplina(id),
    prerequisito_id INTEGER REFERENCES disciplina(id),
    PRIMARY KEY (disciplina_id, prerequisito_id)
);

-- RELAÇÃO PROFESSOR - DEPARTAMENTO (CHEFIA)
CREATE TABLE departamento_chefe (
    departamento_id INTEGER PRIMARY KEY REFERENCES departamento(id),
    professor_id INTEGER UNIQUE REFERENCES professor(usuario_id)
);
