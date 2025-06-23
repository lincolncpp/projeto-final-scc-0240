import random
from faker import Faker

fake = Faker("pt_BR")

NUM_ALUNOS = 10000
NUM_MATRICULAS = 30000
UNIDADES = [1, 2, 3]
CURSOS = [1, 2, 3, 4, 5]
DISCIPLINAS = list(range(1, 11))
TIPOS_STATUS = ["ativa", "trancada", "concluida", "reprovada"]


# Gera 10.000 alunos com IDs de 1000 a 10999
def gerar_usuarios_alunos():
    alunos = []

    for i in range(1000, 1000 + NUM_ALUNOS):
        nome = fake.first_name()
        sobrenome = fake.last_name()
        data_nasc = fake.date_of_birth(minimum_age=18, maximum_age=35).strftime(
            "%Y-%m-%d"
        )
        sexo = random.choice(["H", "M"])
        telefone = fake.phone_number()
        email = f"{nome.lower().replace(' ', '')}.{sobrenome.lower().replace(' ', '')}.{i}@escola.br"
        senha = fake.password()
        rua = fake.street_name().replace("'", "")
        numero = str(fake.building_number())
        bairro = fake.bairro().replace("'", "")
        cidade = fake.city().replace("'", "")
        estado = fake.estado_sigla()
        pais = "Brasil"
        cep = fake.postcode()
        unidade = random.choice(UNIDADES)

        linha = f"INSERT INTO escola.usuario (id, nome, sobrenome, data_nascimento, sexo, telefone, email, senha, rua, numero, bairro, cidade, estado, pais, cep, tipo_usuario, unidade_id) VALUES ({i}, '{nome}', '{sobrenome}', '{data_nasc}', '{sexo}', '{telefone}', '{email}', '{senha}', '{rua}', '{numero}', '{bairro}', '{cidade}', '{estado}', '{pais}', '{cep}', 'aluno', {unidade});"
        alunos.append(linha)
    return alunos


# Gera 30.000 matrículas com IDs de 1000 a 10999
def gerar_matriculas():
    matriculas = []

    for i in range(1000, 1000 + NUM_MATRICULAS):
        aluno_id = random.randint(1000, 1000 + NUM_ALUNOS - 1)
        disciplina_id = random.choice(DISCIPLINAS)
        curso_id = random.choice(CURSOS)
        periodo = random.choice(["2023.2", "2024.1", "2024.2"])
        data_matricula = fake.date_between(start_date="-1y", end_date="today").strftime(
            "%Y-%m-%d"
        )
        status = random.choice(TIPOS_STATUS)
        nota = round(random.uniform(0, 10), 2)
        bolsa = round(random.uniform(0, 1000), 2)
        taxa = round(random.uniform(500, 2000), 2)
        data_limite = fake.date_between(start_date="today", end_date="+4y").strftime(
            "%Y-%m-%d"
        )

        linha = f"INSERT INTO escola.matricula (id, aluno_id, disciplina_id, curso_id, periodo_letivo, data_matricula, status, nota, bolsa_desconto, taxa_pago, data_limite) VALUES ({i}, {aluno_id}, {disciplina_id}, {curso_id}, '{periodo}', '{data_matricula}', '{status}', {nota}, {bolsa}, {taxa}, '{data_limite}');"
        matriculas.append(linha)
    return matriculas


if __name__ == "__main__":
    with open("bulk_insert.sql", "w", encoding="utf-8") as f:
        f.write("-- Arquivo gerado automaticamente pelo script data_generator.py\n")
        
        f.write("\n\n")
        
        f.write("-- ALUNOS GERADOS\n")
        f.write("\n".join(gerar_usuarios_alunos()))

        f.write("\n\n")

        f.write("-- MATRÍCULAS GERADAS\n")
        f.write("\n".join(gerar_matriculas()))
