CREATE table
    Endereco (
        id serial primary key,
        cidade VARCHAR(50),
        bairro VARCHAR(50),
        logradouro VARCHAR(50),
        observacao text
    );

CREATE table
    Area_de_atuacao (
        id serial primary key,
        apelido VARCHAR(100) not null,
        observacao TEXT
    );

create table
    Area_de_atuacao_com_enderecos (
        id serial primary key,
        endereco_id integer not null references Endereco (id),
        area_de_atuacao_id integer not null references Area_de_atuacao (id)
    );

create table
    Residencia (
        id serial primary key,
        tipo_residencia INTEGER check (tipo_residencia IN (1, 2, 3)),
        numero VARCHAR(10) not null,
        ponto_de_referencia text,
        endereco_id INTEGER references Endereco (id)
    );

create table
    Usuario (
        id SERIAL primary key,
        login VARCHAR(50) unique not null,
        senha VARCHAR(100) not null
    );

create table
    Agente (
        id serial primary key,
        nome_completo VARCHAR(100) not null,
        data_nasc DATE not null,
        sexo CHAR(1) check (sexo in ('F', 'M')),
        telefone VARCHAR(15) not null,
        cpf CHAR(11) UNIQUE not null,
        endereco_id INTEGER references Endereco (id),
        usuario_id INTEGER references Usuario (id)
    );

create table
    Ciclo (
        id serial primary key,
        nome VARCHAR(100) not null,
        descricao TEXT,
        data_inicio DATE not null,
        data_fim DATE not null
    );

create table
    Visita (
        id SERIAL primary key,
        residencia_id INTEGER references Residencia (id),
        ciclo_id INTEGER references Ciclo (id),
        descricao TEXT,
        agente_id INTEGER not null references Agente (id),
        data_visita DATE not null
    );

create table
    Armadilha (
        id serial primary key,
        area_de_atuacao_id INTEGER references area_de_atuacao (id),
        agente_id INTEGER not null references Agente (id),
        tipo_armadilha VARCHAR(50),
        data DATE not null,
        descricao TEXT
    );

create table
    Caso_de_dengue (
        id serial primary key,
        nome_pessoa text not null,
        sexo CHAR(1) check (sexo in ('F', 'M')),
        cpf CHAR(11) unique not null,
        data_nascimento DATE not null,
        visita_id INTEGER references Visita (id)
    );

create table
    Cadastro_de_notificacao (
        id serial primary key,
        visita_id INTEGER references Visita (id),
        data_retorno DATE not null,
        foco_dengue BOOLEAN not null,
        descricao TEXT
    );