-- 1) Relacionar todos as pessoas com idades entre 20 e 30 anos e do sexo feminino. Ordenar o relatório pelo nome dos clientes em ordem descendente;
select
    nome_pessoa,
    DATE_PART ('year', AGE (data_nascimento)) as idade
from
    caso_de_dengue cdd
where
    sexo = 'F'
    and data_nascimento between CURRENT_DATE - INTERVAL '30 years' and CURRENT_DATE  - INTERVAL '20 years'
order by
    nome_pessoa desc;

-- 2) Relacionar os casos registradas em meses ímpares de 2023 de clientes das cidades de São Miguel do Oeste e Descanso. Ordene o relatório pela data do caso de forma ascendente;
select
    *
from
    caso_de_dengue cdd
    join visita v on v.id = cdd.visita_id
    join residencia r on r.id = v.id
    join endereco e on e.id = r.endereco_id
where
    e.cidade = 'São Miguel do Oeste'
    or e.cidade = 'Descanso'
    -- 3) Relacionar todas as residências das cidades de Maravilha, Descanso, Itapiranga e Guaraciaba que foram visitadas em 2024. Ordene o relatório da cidade com mais visitas para a cidade com menos visitas;
select
    Endereco.cidade AS cidade,
    COUNT(*) AS total_visitas
from
    Visita
    JOIN Residencia ON Visita.residencia_id = Residencia.id
    JOIN Endereco ON Residencia.endereco_id = Endereco.id
where
    date_part ('year', Visita.data_visita) = 2024
    and Endereco.cidade IN (
        'Maravilha',
        'Descanso',
        'Itapiranga',
        'Guaraciaba'
    )
group by
    Endereco.cidade
order by
    total_visitas DESC;

-- 4) Relacionar o nome da cidade, o total de casos por faixa etária. Relacionar da faixa etária com mais casos para a faixa com menos casos.