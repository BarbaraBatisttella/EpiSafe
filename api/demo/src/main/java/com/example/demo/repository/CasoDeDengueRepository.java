package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.dtos.CasosMesesImparesDTO;
import com.example.demo.dtos.CasosPorFaixaEtariaDTO;
import com.example.demo.model.CasoDeDengue;

@Repository
public interface CasoDeDengueRepository extends BaseRepository<CasoDeDengue> {
    /**
     * 
     * @return Mulheres entre 20 e 30 anos que tiveram dengue
     */
    @Query(value = """
                SELECT cdd.nome_pessoa, DATE_PART('year', AGE(cdd.data_nascimento)) AS idade
                FROM caso_de_dengue cdd
                WHERE cdd.sexo = 'F'
                  AND cdd.data_nascimento BETWEEN CURRENT_DATE - INTERVAL '30 years' AND CURRENT_DATE - INTERVAL '20 years'
                ORDER BY cdd.nome_pessoa DESC
            """, nativeQuery = true)
    public List<Object[]> findOcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale();

    /**
     * 
     * @return casos registradas em meses ímpares de 2024 de clientes das cidades de São Miguel do Oeste e Descanso.
     */
    @Query("""
    SELECT new com.example.demo.dtos.CasosMesesImparesDTO(
        cdd.id,
        cdd.nomePessoa,
        e.cidade,
        v.dataVisita
    )
    FROM CasoDeDengue cdd
    JOIN cdd.visita v
    JOIN v.residencia r
    JOIN r.endereco e
    WHERE (e.cidade = 'São Miguel do Oeste' OR e.cidade = 'Descanso')
      AND YEAR(v.dataVisita) = 2024
      AND MONTH(v.dataVisita) IN (1, 3, 5, 7, 9, 11)
    ORDER BY v.dataVisita ASC
    """)
    List<CasosMesesImparesDTO> findCasosMesesImpares();

    /**
     * 
     * @return casos registrados agrupados por faixa etária.
     */
    @Query("""
        SELECT new com.example.demo.dtos.CasosPorFaixaEtariaDTO(
            e.cidade,
            CASE 
                WHEN EXTRACT(YEAR FROM cdd.dataNascimento) BETWEEN 0 AND 10 THEN '0-10 anos'
                WHEN EXTRACT(YEAR FROM cdd.dataNascimento) BETWEEN 11 AND 20 THEN '11-20 anos'
                WHEN EXTRACT(YEAR FROM cdd.dataNascimento) BETWEEN 21 AND 30 THEN '21-30 anos'
                WHEN EXTRACT(YEAR FROM cdd.dataNascimento) BETWEEN 31 AND 40 THEN '31-40 anos'
                ELSE '40+ anos'
            END AS faixaEtaria,
            COUNT(cdd.id) AS totalCasos
        )
        FROM CasoDeDengue cdd
        JOIN cdd.visita v
        JOIN v.residencia r
        JOIN r.endereco e
        GROUP BY e.cidade, faixaEtaria
        ORDER BY totalCasos DESC
    """)
    List<CasosPorFaixaEtariaDTO> findCasosPorFaixaEtaria();

}