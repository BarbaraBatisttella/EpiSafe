INSERT INTO
    Endereco (cidade, bairro, logradouro, observacao)
VALUES
    (
        'São Miguel do Oeste',
        'Centro',
        'Rua das Flores',
        'Próximo ao supermercado'
    ),
    (
        'São Miguel do Oeste',
        'Jardim América',
        'Avenida Brasil',
        'Perto da praça central'
    ),
    (
        'São Miguel do Oeste',
        'Progresso',
        'Rua 25 de Julho',
        'Casa de esquina'
    ),
    (
        'São Miguel do Oeste',
        'Agostini',
        'Rua do Comércio',
        'Fundo da igreja'
    ),
    (
        'São Miguel do Oeste',
        'São Luiz',
        'Rua das Palmeiras',
        'Ao lado do hospital'
    ),
    (
        'Guaraciaba',
        'Centro',
        'Rua Principal',
        'Ponto de ônibus'
    ),
    (
        'Guaraciaba',
        'Vila Nova',
        'Avenida dos Imigrantes',
        'Proximidades do posto de gasolina'
    ),
    (
        'Guaraciaba',
        'Santa Terezinha',
        'Travessa das Flores',
        'Fundos da escola'
    ),
    (
        'Guaraciaba',
        'São Francisco',
        'Rua das Acácias',
        'Casa amarela'
    ),
    (
        'Guaraciaba',
        'Santa Rita',
        'Avenida das Oliveiras',
        'Próximo ao campo de futebol'
    ),
    (
        'Descanso',
        'Centro',
        'Rua das Violetas',
        'Esquina com a praça'
    ),
    (
        'Descanso',
        'Jardim América',
        'Avenida dos Ipês',
        'Casa de tijolos à vista'
    ),
    (
        'Descanso',
        'São Jorge',
        'Rua do Bosque',
        'Última casa da rua'
    ),
    (
        'Descanso',
        'São José',
        'Avenida das Águias',
        'Frente ao mercado'
    ),
    (
        'Descanso',
        'Santa Clara',
        'Rua dos Girassóis',
        'Perto da creche'
    ),
    (
        'Maravilha',
        'Centro',
        'Avenida Brasil',
        'Bem movimentado'
    ),
    (
        'Maravilha',
        'Santa Cruz',
        'Rua das Orquídeas',
        'Casa de madeira'
    ),
    (
        'Maravilha',
        'São Cristóvão',
        'Travessa das Hortênsias',
        'Frente à escola'
    ),
    (
        'Maravilha',
        'São José',
        'Rua dos Lírios',
        'Casa azul'
    ),
    (
        'Maravilha',
        'Santa Catarina',
        'Avenida das Rosas',
        'Final da rua'
    ),
    (
        'Itapiranga',
        'Centro',
        'Rua Principal',
        'Ao lado do banco'
    ),
    (
        'Itapiranga',
        'Santa Rosa',
        'Avenida das Acácias',
        'Perto do hospital'
    ),
    (
        'Itapiranga',
        'São Francisco',
        'Rua das Tulipas',
        'Próximo à igreja'
    ),
    (
        'Itapiranga',
        'São João',
        'Travessa dos Cedros',
        'Casa grande'
    ),
    (
        'Itapiranga',
        'São Paulo',
        'Avenida das Mangueiras',
        'Esquina movimentada'
    ),
    (
        'São Miguel do Oeste',
        'Santa Rita',
        'Rua das Oliveiras',
        'Frente ao campo de futebol'
    ),
    (
        'Guaraciaba',
        'Centro',
        'Rua do Comércio',
        'Fundo da igreja'
    ),
    (
        'Descanso',
        'Jardim América',
        'Avenida dos Ipês',
        'Casa de tijolos à vista'
    ),
    (
        'Maravilha',
        'Santa Cruz',
        'Rua das Orquídeas',
        'Casa de madeira'
    ),
    (
        'Itapiranga',
        'Centro',
        'Rua Principal',
        'Ao lado do banco'
    );

-- Inserir residências para cada endereço
-- Residências para São Miguel do Oeste
INSERT INTO
    Residencia (
        tipo_residencia,
        numero,
        ponto_de_referencia,
        endereco_id
    )
VALUES
    (1, '101', 'Próximo à escola', 1),
    (2, '201', 'Casa amarela', 1),
    (3, '301', 'Ao lado do mercado', 1),
    (1, '102', 'Esquina com a praça', 2),
    (2, '202', 'Casa branca', 2),
    -- Residências para Guaraciaba
    (1, '103', 'Perto da igreja', 6),
    (2, '203', 'Casa azul', 6),
    (3, '303', 'Frente à praça', 6),
    (1, '104', 'Rua das Flores', 7),
    (2, '204', 'Casa vermelha', 7),
    -- Residências para Descanso
    (1, '105', 'Próximo ao parque', 11),
    (2, '205', 'Casa verde', 11),
    (3, '305', 'Esquina movimentada', 11),
    (1, '106', 'Rua das Palmeiras', 12),
    (2, '206', 'Casa grande', 12),
    -- Residências para Maravilha
    (1, '107', 'Ao lado do hospital', 16),
    (2, '207', 'Casa de madeira', 16),
    (3, '307', 'Frente ao campo', 16),
    (1, '108', 'Avenida Principal', 17),
    (2, '208', 'Casa de tijolos à vista', 17),
    -- Residências para Itapiranga
    (1, '109', 'Perto da escola', 21),
    (2, '209', 'Casa rosa', 21),
    (3, '309', 'Final da rua', 21),
    (1, '110', 'Rua dos Cedros', 22),
    (2, '210', 'Casa térrea', 22);

INSERT INTO
    Usuario (login, senha)
VALUES
    ('usuario1', 'senha123'),
    ('usuario2', 'abcde456'),
    ('usuario3', 'qwerty789'),
    ('usuario4', '12345678'),
    ('usuario5', 'senha@123'),
    ('usuario6', 'abc123'),
    ('usuario7', 'password'),
    ('usuario8', 'securepass'),
    ('usuario9', 'mysecret'),
    ('usuario10', 'letmein');

INSERT INTO
    Agente (
        nome_completo,
        data_nasc,
        sexo,
        telefone,
        cpf,
        endereco_id,
        usuario_id
    )
VALUES
    (
        'Joana Silva',
        '1990-05-15',
        'F',
        '(49) 9999-1111',
        '12345678901',
        1,
        1
    ),
    (
        'Pedro Souza',
        '1985-07-20',
        'M',
        '(49) 9888-2222',
        '23456789012',
        6,
        2
    ),
    (
        'Ana Oliveira',
        '1992-03-10',
        'F',
        '(49) 9777-3333',
        '34567890123',
        11,
        3
    ),
    (
        'Marcos Santos',
        '1988-11-25',
        'M',
        '(49) 9666-4444',
        '45678901234',
        16,
        4
    ),
    (
        'Juliana Costa',
        '1995-09-18',
        'F',
        '(49) 9555-5555',
        '56789012345',
        21,
        5
    ),
    (
        'Lucas Martins',
        '1980-12-30',
        'M',
        '(49) 9444-6666',
        '67890123456',
        1,
        6
    ),
    (
        'Carla Pereira',
        '1987-04-05',
        'F',
        '(49) 9333-7777',
        '78901234567',
        6,
        7
    ),
    (
        'Ricardo Almeida',
        '1993-06-08',
        'M',
        '(49) 9222-8888',
        '89012345678',
        11,
        8
    ),
    (
        'Fernanda Lima',
        '1983-02-12',
        'F',
        '(49) 9111-9999',
        '90123456789',
        16,
        9
    ),
    (
        'José Torres',
        '1998-08-22',
        'M',
        '(49) 9000-0000',
        '01234567890',
        21,
        10
    );

-- Inserção de ciclos na tabela Ciclo
INSERT INTO
    Ciclo (nome, descricao, data_inicio, data_fim)
VALUES
    (
        'Ciclo de Verão 2024',
        'Ciclo dedicado ao verão com foco na prevenção de doenças relacionadas ao calor.',
        '2024-01-01',
        '2024-03-31'
    ),
    (
        'Ciclo de Outono 2024',
        'Ciclo para preparação contra doenças respiratórias comuns no outono.',
        '2024-04-01',
        '2024-06-30'
    ),
    (
        'Ciclo de Inverno 2024',
        'Ciclo focado na prevenção de gripes e resfriados típicos do inverno.',
        '2024-07-01',
        '2024-09-30'
    ),
    (
        'Ciclo de Primavera 2024',
        'Ciclo para controle de doenças transmitidas por insetos na primavera.',
        '2024-10-01',
        '2024-12-31'
    ),
    (
        'Ciclo Anual 2024',
        'Ciclo abrangente que cobre todas as estações do ano com estratégias variadas de prevenção.',
        '2024-01-01',
        '2024-12-31'
    );

-- Inserção de uma visita para cada residência
INSERT INTO
    Visita (
        residencia_id,
        ciclo_id,
        descricao,
        agente_id,
        data_visita
    )
VALUES
    -- Visita para as 30 residências
    (1, 5, 'Visita de verificação', 1, '2024-01-05'),
    (2, 5, 'Visita de verificação', 1, '2024-01-05'),
    (3, 5, 'Visita de verificação', 1, '2024-01-05'),
    (4, 5, 'Visita de verificação', 1, '2024-01-05'),
    (5, 5, 'Visita de verificação', 1, '2024-01-05'),
    (6, 5, 'Visita de verificação', 1, '2024-01-05'),
    (7, 5, 'Visita de verificação', 1, '2024-01-05'),
    (8, 5, 'Visita de verificação', 1, '2024-01-05'),
    (9, 5, 'Visita de verificação', 1, '2024-01-05'),
    (10, 5, 'Visita de verificação', 1, '2024-01-05'),
    (11, 5, 'Visita de verificação', 1, '2024-01-05'),
    (12, 5, 'Visita de verificação', 1, '2024-01-05'),
    (13, 5, 'Visita de verificação', 1, '2024-01-05'),
    (14, 5, 'Visita de verificação', 1, '2024-01-05'),
    (15, 5, 'Visita de verificação', 1, '2024-01-05'),
    (16, 5, 'Visita de verificação', 1, '2024-01-05'),
    (17, 5, 'Visita de verificação', 1, '2024-01-05'),
    (18, 5, 'Visita de verificação', 1, '2024-01-05'),
    (19, 5, 'Visita de verificação', 1, '2024-01-05'),
    (20, 5, 'Visita de verificação', 1, '2024-01-05'),
    (21, 5, 'Visita de verificação', 1, '2024-01-05'),
    (22, 5, 'Visita de verificação', 1, '2024-01-05'),
    (23, 5, 'Visita de verificação', 1, '2024-01-05'),
    (24, 5, 'Visita de verificação', 1, '2024-01-05'),
    (25, 5, 'Visita de verificação', 1, '2024-01-05');

INSERT INTO
    Caso_de_dengue (
        nome_pessoa,
        sexo,
        cpf,
        data_nascimento,
        visita_id
    )
VALUES
    (
        'Maria Silva',
        'F',
        '12345678912',
        '1985-03-10',
        1
    ),
    ('João Souza', 'M', '12345678913', '1990-07-15', 2),
    (
        'Ana Oliveira',
        'F',
        '12345678914',
        '1992-05-20',
        3
    ),
    (
        'Pedro Santos',
        'M',
        '12345678915',
        '1988-11-25',
        4
    ),
    (
        'Juliana Costa',
        'F',
        '12345678916',
        '1995-09-18',
        5
    ),
    (
        'Lucas Martins',
        'M',
        '12345678917',
        '1980-12-30',
        6
    ),
    (
        'Carla Pereira',
        'F',
        '12345678918',
        '1987-04-05',
        7
    ),
    (
        'Ricardo Almeida',
        'M',
        '12345678919',
        '1993-06-08',
        8
    ),
    (
        'Fernanda Lima',
        'F',
        '12345678910',
        '1983-02-12',
        9
    ),
    (
        'José Torres',
        'M',
        '11345678911',
        '1998-08-22',
        10
    ),
    (
        'Maria Santos',
        'F',
        '12345678911',
        '1985-03-10',
        11
    ),
    (
        'João Oliveira',
        'M',
        '13345678911',
        '1990-07-15',
        12
    ),
    ('Ana Costa', 'F', '14345678911', '1992-05-20', 13),
    (
        'Pedro Alves',
        'M',
        '15345678911',
        '1988-11-25',
        14
    ),
    (
        'Juliana Rodrigues',
        'F',
        '16345678911',
        '1995-09-18',
        15
    ),
    (
        'Lucas Pereira',
        'M',
        '17345678911',
        '1980-12-30',
        16
    ),
    (
        'Carla Souza',
        'F',
        '18345678911',
        '1987-04-05',
        17
    ),
    (
        'Ricardo Costa',
        'M',
        '19345678911',
        '1993-06-08',
        18
    ),
    (
        'Fernanda Santos',
        'F',
        '20345678911',
        '1983-02-12',
        19
    ),
    (
        'José Almeida',
        'M',
        '21345678911',
        '1998-08-22',
        20
    ),
    (
        'Maria Rodrigues',
        'F',
        '22345678911',
        '1985-03-10',
        21
    ),
    (
        'João Costa',
        'M',
        '23345678911',
        '1990-07-15',
        22
    ),
    ('Ana Lima', 'F', '24345678911', '1992-05-20', 23),
    (
        'Pedro Torres',
        'M',
        '25345678911',
        '1988-11-25',
        24
    ),
    (
        'Juliana Alves',
        'F',
        '26345678911',
        '1995-09-18',
        25
    ),
    (
        'Lucas Oliveira',
        'M',
        '27345678911',
        '1980-12-30',
        1
    ),
    (
        'Carla Costa',
        'F',
        '28345678911',
        '1987-04-05',
        25
    );