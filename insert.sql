-- UNIDADE
INSERT INTO escola.unidade (id, cidade, estado, pais, predio) VALUES (1, 'São Paulo', 'SP', 'Brasil', 'Prédio A');
INSERT INTO escola.unidade (id, cidade, estado, pais, predio) VALUES (2, 'Rio de Janeiro', 'RJ', 'Brasil', 'Prédio C');
INSERT INTO escola.unidade (id, cidade, estado, pais, predio) VALUES (3, 'Belo Horizonte', 'MG', 'Brasil', 'Prédio C');

-- DEPARTAMENTO
INSERT INTO escola.departamento (id, nome, codigo) VALUES (1, 'Departamento de Matemática', 'DEP101');
INSERT INTO escola.departamento (id, nome, codigo) VALUES (2, 'Departamento de Engenharia de Software', 'DEP102');
INSERT INTO escola.departamento (id, nome, codigo) VALUES (3, 'Departamento de Ciências Humanas', 'DEP103');

-- USUARIO
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        1, 'Pedro', 'Souza', '1999-05-16', 'H',
        '15 99777-8888', 'pedro.souza@escola.br', '9h$p+^HY)j', 'Vila Sales', '4',
        'Madeira', 'Belo Horizonte', 'SP', 'Brasil',
        '72343303', 'professor', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        2, 'Agatha', 'da Mata', '1966-03-11', 'M',
        '15 99777-8888', 'agatha.damata@escola.br', '&_8MXa9(TW', 'Fazenda Rocha', '78',
        'Acaiaca', 'Rio de Janeiro', 'SP', 'Brasil',
        '10411-026', 'professor', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        3, 'Maria Luiza', 'Nunes', '1990-10-16', 'M',
        '15 99777-8888', 'marialuiza.nunes@escola.br', '!J&A1gVpZw', 'Rua Ana Laura Dias', '57',
        'Pousada Santo Antonio', 'Salvador', 'SP', 'Brasil',
        '40037180', 'professor', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        4, 'Emanuelly', 'Aragão', '1998-04-07', 'M',
        '15 99777-8888', 'emanuelly.aragao@escola.br', 'Y&p0LHOk4!', 'Núcleo da Paz', '64',
        'Lajedo', 'Curitiba', 'SP', 'Brasil',
        '57562334', 'professor', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        5, 'Isadora', 'Almeida', '1989-09-10', 'M',
        '15 99777-8888', 'isadora.almeida@escola.br', ')fq!pO+h2k', 'Rua Marcelo Duarte', '49',
        'Vila Trinta E Um De Março', 'Fortaleza', 'SP', 'Brasil',
        '56666-653', 'professor', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        6, 'Bruno', 'Rezende', '1967-06-19', 'H',
        '15 99777-8888', 'bruno.rezende@escola.br', '%XML#66t1P', 'Rua Maria Eduarda Melo', '1',
        'Manacas', 'Rio de Janeiro', 'SP', 'Brasil',
        '48708649', 'professor', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        7, 'João Guilherme', 'da Conceição', '1991-12-12', 'H',
        '15 99777-8888', 'joaoguilherme.daconceicao@escola.br', 'P%V4OvU(T#', 'Rua Bárbara Luz', '5',
        'Vila Real', 'Fortaleza', 'SP', 'Brasil',
        '26176864', 'professor', 2
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        8, 'Isabelly', 'Moreira', '1992-10-23', 'M',
        '15 99777-8888', 'isabelly.moreira@escola.br', '00zHeRdH)t', 'Rua Lopes de Souza', '50',
        'Vila Real', 'São Paulo', 'SP', 'Brasil',
        '21291-932', 'professor', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        9, 'Kevin', 'Azevedo', '1974-12-14', 'H',
        '15 99777-8888', 'kevin.azevedo@escola.br', 'n4VjFXsl_p', 'Rua Fernando da Cunha', '94',
        'São Tomaz', 'Curitiba', 'SP', 'Brasil',
        '33305393', 'professor', 2
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        10, 'Antônio', 'Ramos', '1980-11-09', 'H',
        '15 99777-8888', 'antonio.ramos@escola.br', 'vA^J7S^a&4', 'Rua Bianca Ramos', '86',
        'São Jorge', 'Salvador', 'SP', 'Brasil',
        '87533532', 'professor', 2
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        11, 'Yuri', 'Oliveira', '1965-06-22', 'H',
        '15 99777-8888', 'yuri.oliveira@escola.br', 's5MHSenS*x', 'Rua Lincoln de Silveira', '42',
        'Vila Batik', 'Belo Horizonte', 'SP', 'Brasil',
        '65571323', 'aluno', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        12, 'Bianca', 'Cavalcanti', '1974-08-02', 'M',
        '15 99777-8888', 'bianca.cavalcanti@escola.br', 'HODj7Tf)_A', 'Parque Cavalcanti', '1',
        'Ouro Minas', 'Salvador', 'SP', 'Brasil',
        '59211-984', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        13, 'Ana Sophia', 'Rezende', '1995-02-03', 'M',
        '15 99777-8888', 'anasophia.rezende@escola.br', '^6CyLtWNK7', 'Rua Pedro Costela', '91',
        'Paraíso', 'Belo Horizonte', 'SP', 'Brasil',
        '18310-865', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        14, 'Mirella', 'da Mata', '1971-12-11', 'M',
        '15 99777-8888', 'mirella.damata@escola.br', '9d5NyYhF#^', 'Feira de Viana', '39',
        'Flavio Marques Lisboa', 'Curitiba', 'SP', 'Brasil',
        '83556996', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        15, 'Rafael', 'Souza', '2006-12-18', 'H',
        '15 99777-8888', 'rafael.souza@escola.br', '@3rXEgXl9Z', 'Loteamento Porto', '25',
        'São Francisco', 'Curitiba', 'SP', 'Brasil',
        '88881-055', 'aluno', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        16, 'Camila', 'Oliveira', '1990-01-18', 'M',
        '15 99777-8888', 'camila.oliveira@escola.br', 'z3TsWpMP*Q', 'Vale dos Lagos', '62',
        'Paquetá', 'Belo Horizonte', 'SP', 'Brasil',
        '58708-914', 'aluno', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        17, 'Mariane', 'Pinto', '1975-06-05', 'M',
        '15 99777-8888', 'mariane.pinto@escola.br', '*66_bNF%er', 'Campo Duarte', '41',
        'Jardim Leblon', 'Curitiba', 'SP', 'Brasil',
        '02164-815', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        18, 'Laís', 'Jesus', '2005-02-12', 'M',
        '15 99777-8888', 'lais.jesus@escola.br', '^1B!5Ycd&2', 'Rua Ana Luiza Nascimento', '885',
        'Santo André', 'São Paulo', 'SP', 'Brasil',
        '71782393', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        19, 'Caroline', 'Cavalcanti', '1980-05-04', 'M',
        '15 99777-8888', 'caroline.cavalcanti@escola.br', 'skgjfwW)@1', 'Rua das Amoras', '331',
        'Lagoa', 'São Paulo', 'SP', 'Brasil',
        '16061254', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        20, 'Mariane', 'Porto', '2004-06-04', 'M',
        '15 99777-8888', 'mariane.porto@escola.br', 'w@r)8HYiq$', 'Rua Sales Gomes', '37',
        'Frei Leopoldo', 'Salvador', 'SP', 'Brasil',
        '84786-362', 'aluno', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        21, 'Lucca', 'Ferreira', '1998-06-24', 'H',
        '15 99777-8888', 'lucca.ferreira@escola.br', 'l2X_FRrr_1', 'Rua Sales Gomes', '56',
        'Paraíso', 'Fortaleza', 'SP', 'Brasil',
        '87995-332', 'administrativo', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        22, 'Pedro', 'Lima', '1987-10-08', 'H',
        '15 99777-8888', 'pedro.lima@escola.br', '513TMBQi^L', 'Rua Costa', '31',
        'Jardim Guanabara', 'Rio de Janeiro', 'SP', 'Brasil',
        '50495614', 'administrativo', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        23, 'Renan', 'Ramos', '1967-02-08', 'H',
        '15 99777-8888', 'renan.ramos@escola.br', 'isl1XUZ@W!', 'Lago Fernandes', '52',
        'Vila São Gabriel', 'São Paulo', 'SP', 'Brasil',
        '19030-116', 'administrativo', 3
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        24, 'Rebeca', 'da Costa', '1972-07-23', 'M',
        '15 99777-8888', 'rebeca.dacosta@escola.br', 'M!%55Aya!K', 'Rua das Neves', '39',
        'Xique-Xique', 'São Paulo', 'SP', 'Brasil',
        '33983429', 'administrativo', 1
    );
INSERT INTO escola.usuario (
        id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha,
        rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id
    ) VALUES (
        25, 'Esther', 'da Conceição', '1977-06-27', 'M',
        '15 99777-8888', 'esther.daconceicao@escola.br', 'f#&&8BBqwN', 'Rua de Jesus', '3',
        'Manacas', 'Belo Horizonte', 'SP', 'Brasil',
        '40608629', 'administrativo', 2
    );

-- PROFESSOR
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (1, 'Algoritmos', 'Mestre');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (2, 'Probabilidade', 'Doutor');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (3, 'Teoria da Computação', 'Mestre');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (4, 'Redes de Computadores', 'Doutor');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (5, 'Banco de Dados', 'Mestre');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (6, 'Linguagens Formais', 'Doutor');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (7, 'Engenharia de Software', 'Mestre');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (8, 'Computação Gráfica', 'Doutor');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (9, 'Matemática Discreta', 'Mestre');
INSERT INTO escola.professor (usuario_id, area_especializacao, titulacao) VALUES (10, 'Sistemas Operacionais', 'Doutor');

-- CURSO
INSERT INTO escola.curso (id, nome, codigo, nivel, carga_horaria, numero_vagas, ementa, sala_padrao, departamento_id, unidade_id) VALUES (1, 'Bacharelado em Ciência da Computação', 'C001', 'graduacao', 3000, 60, 'Formação completa em Bacharelado em Ciência da Computação', 'Sala 101', 2, 2);
INSERT INTO escola.curso (id, nome, codigo, nivel, carga_horaria, numero_vagas, ementa, sala_padrao, departamento_id, unidade_id) VALUES (2, 'Bacharelado em Matemática Aplicada', 'C002', 'graduacao', 3000, 60, 'Formação completa em Bacharelado em Matemática Aplicada', 'Sala 201', 3, 3);
INSERT INTO escola.curso (id, nome, codigo, nivel, carga_horaria, numero_vagas, ementa, sala_padrao, departamento_id, unidade_id) VALUES (3, 'Engenharia de Computação', 'C003', 'graduacao', 3000, 60, 'Formação completa em Engenharia de Computação', 'Sala 301', 1, 1);
INSERT INTO escola.curso (id, nome, codigo, nivel, carga_horaria, numero_vagas, ementa, sala_padrao, departamento_id, unidade_id) VALUES (4, 'Bacharelado em Estatística', 'C004', 'graduacao', 3000, 60, 'Formação completa em Bacharelado em Estatística', 'Sala 401', 2, 2);
INSERT INTO escola.curso (id, nome, codigo, nivel, carga_horaria, numero_vagas, ementa, sala_padrao, departamento_id, unidade_id) VALUES (5, 'Sistemas de Informação', 'C005', 'graduacao', 3000, 60, 'Formação completa em Sistemas de Informação', 'Sala 501', 3, 3);

-- DISCIPLINA
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (1, 'Álgebra Linear', 'D001', 5, 'Livro: Fundamentos de Álgebra Linear', 2);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (2, 'Cálculo I', 'D002', 2, 'Livro: Fundamentos de Cálculo I', 1);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (3, 'Estrutura de Dados', 'D003', 2, 'Livro: Fundamentos de Estrutura de Dados', 1);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (4, 'Banco de Dados', 'D004', 4, 'Livro: Fundamentos de Banco de Dados', 2);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (5, 'Lógica de Programação', 'D005', 2, 'Livro: Fundamentos de Lógica de Programação', 1);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (6, 'Física Geral', 'D006', 5, 'Livro: Fundamentos de Física Geral', 1);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (7, 'Química Orgânica', 'D007', 2, 'Livro: Fundamentos de Química Orgânica', 2);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (8, 'História da Arte', 'D008', 3, 'Livro: Fundamentos de História da Arte', 2);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (9, 'Filosofia Moderna', 'D009', 3, 'Livro: Fundamentos de Filosofia Moderna', 2);
INSERT INTO escola.disciplina (id, nome, codigo, aulas_semana, material_didatico, unidade_id) VALUES (10, 'Literatura Brasileira', 'D010', 5, 'Livro: Fundamentos de Literatura Brasileira', 1);

-- CURSO_DISCIPLINA
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (5, 1);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (3, 2);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (3, 3);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (4, 4);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (2, 5);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (3, 6);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (2, 7);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (1, 8);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (1, 9);
INSERT INTO escola.curso_disciplina (curso_id, disciplina_id) VALUES (2, 10);

-- DISCIPLINA_PROFESSOR
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (1, 3);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (2, 7);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (3, 10);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (4, 6);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (5, 7);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (6, 10);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (7, 8);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (8, 2);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (9, 7);
INSERT INTO escola.disciplina_professor (disciplina_id, professor_id) VALUES (10, 8);

-- MATRICULA
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (1, 11, 1, 2, '2024.1', '2024-01-10', 'ativa', 7.1, 813, 604, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (2, 12, 1, 3, '2024.1', '2024-01-10', 'ativa', 5.2, 655, 872, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (3, 16, 10, 4, '2024.1', '2024-01-10', 'ativa', 6.4, 810, 724, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (4, 18, 7, 4, '2024.1', '2024-01-10', 'ativa', 8.1, 709, 700, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (5, 19, 5, 2, '2024.1', '2024-01-10', 'ativa', 5.5, 296, 1470, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (6, 12, 3, 4, '2024.1', '2024-01-10', 'ativa', 7.4, 26, 1807, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (7, 14, 7, 1, '2024.1', '2024-01-10', 'ativa', 6.3, 508, 892, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (8, 19, 3, 1, '2024.1', '2024-01-10', 'ativa', 6.0, 500, 579, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (9, 13, 10, 3, '2024.1', '2024-01-10', 'ativa', 5.6, 92, 1230, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (10, 12, 8, 5, '2024.1', '2024-01-10', 'ativa', 6.3, 806, 1484, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (11, 19, 1, 3, '2024.1', '2024-01-10', 'ativa', 5.3, 475, 1300, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (12, 14, 8, 2, '2024.1', '2024-01-10', 'ativa', 6.9, 423, 1408, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (13, 16, 9, 1, '2024.1', '2024-01-10', 'ativa', 5.3, 869, 1810, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (14, 14, 10, 3, '2024.1', '2024-01-10', 'ativa', 6.7, 378, 1475, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (15, 13, 2, 3, '2024.1', '2024-01-10', 'ativa', 9.5, 122, 1078, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (16, 17, 9, 2, '2024.1', '2024-01-10', 'ativa', 6.5, 189, 658, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (17, 20, 2, 1, '2024.1', '2024-01-10', 'ativa', 5.9, 736, 799, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (18, 13, 6, 4, '2024.1', '2024-01-10', 'ativa', 7.6, 182, 542, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (19, 19, 8, 5, '2024.1', '2024-01-10', 'ativa', 5.5, 968, 542, '2024-01-05');
INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES (20, 15, 4, 4, '2024.1', '2024-01-10', 'ativa', 7.7, 770, 841, '2024-01-05');

-- AVALIAÇÃO
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (19, 10, 10, 'Muito bom', 5, 5, 3, 5);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (16, 6, 3, 'Muito bom', 4, 4, 3, 3);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (11, 5, 1, 'Muito bom', 4, 5, 4, 5);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (20, 2, 5, 'Muito bom', 3, 3, 4, 5);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (13, 1, 10, 'Muito bom', 3, 4, 4, 3);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (18, 2, 6, 'Muito bom', 5, 3, 4, 4);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (16, 7, 3, 'Muito bom', 5, 4, 4, 3);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (11, 8, 1, 'Muito bom', 4, 4, 3, 4);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (12, 2, 2, 'Muito bom', 3, 4, 4, 5);
INSERT INTO escola.avaliacao (aluno_id, disciplina_id, professor_id, comentario, didatica, material_apoio, relevancia_conteudo, infraestrutura) VALUES (19, 5, 1, 'Muito bom', 3, 5, 3, 3);

-- MENSAGEM
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (17, 3, 'Oi, professor(a)! Poderia revisar a questão 3 da última aula?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (18, 7, 'Bom dia! Quando será disponibilizado o material de apoio?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (13, 3, 'Olá! Estou com dificuldade na lista de exercícios.');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (19, 1, 'Oi, tudo bem? Pode confirmar o conteúdo para a próxima prova?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (19, 9, 'Professor(a), qual o prazo para o trabalho final?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (20, 10, 'Bom dia, professor(a)! Terei que faltar, haverá gravação?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (12, 9, 'Olá! A disciplina terá revisão antes da prova?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (13, 7, 'Boa tarde! Pode corrigir minha nota na atividade 2?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (14, 4, 'Oi, professor(a)! Tem plantão de dúvidas essa semana?');
INSERT INTO escola.mensagem (remetente_id, destinatario_id, texto) VALUES (13, 9, 'Estou gostando muito da disciplina! Parabéns pela didática!');

-- INFRAESTRUTURA & REGRA 1
INSERT INTO escola.infraestrutura (id, descricao) VALUES (1, 'Infraestrutura 1 - Laboratório Informática');
INSERT INTO escola.regra (id, descricao) VALUES (1, 'Regra 1: frequência mínima de 75% e nota >= 6.0');
INSERT INTO escola.curso_infraestrutura (curso_id, infraestrutura_id) VALUES (4, 1);
INSERT INTO escola.curso_regra (curso_id, regra_id) VALUES (1, 1);

-- INFRAESTRUTURA & REGRA 2
INSERT INTO escola.infraestrutura (id, descricao) VALUES (2, 'Infraestrutura 2 - Laboratório Química');
INSERT INTO escola.regra (id, descricao) VALUES (2, 'Regra 2: frequência mínima de 75% e nota >= 6.0');
INSERT INTO escola.curso_infraestrutura (curso_id, infraestrutura_id) VALUES (3, 2);
INSERT INTO escola.curso_regra (curso_id, regra_id) VALUES (5, 2);

-- INFRAESTRUTURA & REGRA 3
INSERT INTO escola.infraestrutura (id, descricao) VALUES (3, 'Infraestrutura 3 - Laboratório Química');
INSERT INTO escola.regra (id, descricao) VALUES (3, 'Regra 3: frequência mínima de 75% e nota >= 6.0');
INSERT INTO escola.curso_infraestrutura (curso_id, infraestrutura_id) VALUES (1, 3);
INSERT INTO escola.curso_regra (curso_id, regra_id) VALUES (2, 3);

-- INFRAESTRUTURA & REGRA 4
INSERT INTO escola.infraestrutura (id, descricao) VALUES (4, 'Infraestrutura 4 - Laboratório Física');
INSERT INTO escola.regra (id, descricao) VALUES (4, 'Regra 4: frequência mínima de 75% e nota >= 6.0');
INSERT INTO escola.curso_infraestrutura (curso_id, infraestrutura_id) VALUES (1, 4);
INSERT INTO escola.curso_regra (curso_id, regra_id) VALUES (4, 4);

-- INFRAESTRUTURA & REGRA 5
INSERT INTO escola.infraestrutura (id, descricao) VALUES (5, 'Infraestrutura 5 - Laboratório Química');
INSERT INTO escola.regra (id, descricao) VALUES (5, 'Regra 5: frequência mínima de 75% e nota >= 6.0');
INSERT INTO escola.curso_infraestrutura (curso_id, infraestrutura_id) VALUES (5, 5);
INSERT INTO escola.curso_regra (curso_id, regra_id) VALUES (1, 5);

-- PREREQUISITO
INSERT INTO escola.disciplina_prerequisito (disciplina_id, prerequisito_id) VALUES (4, 1);
INSERT INTO escola.curso_prerequisito (curso_id, prerequisito_id) VALUES (2, 1);

-- DEPARTAMENTO_CHEFE
INSERT INTO escola.departamento_chefe (departamento_id, professor_id) VALUES (1, 1);
INSERT INTO escola.departamento_chefe (departamento_id, professor_id) VALUES (2, 2);
INSERT INTO escola.departamento_chefe (departamento_id, professor_id) VALUES (3, 3);