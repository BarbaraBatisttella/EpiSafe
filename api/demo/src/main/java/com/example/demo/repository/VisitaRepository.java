package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.dtos.ResidenciaVisitaDTO;
import com.example.demo.model.Visita;

@Repository
public interface VisitaRepository extends BaseRepository<Visita> {
    /**
     * 
     * @return Visitas agrupadas por cidade.
     */
     @Query("""
        SELECT new com.example.demo.dtos.ResidenciaVisitaDTO(
            e.cidade,
            COUNT(v.id)
        )
        FROM Visita v
        JOIN v.residencia r
        JOIN r.endereco e
        WHERE YEAR(v.dataVisita) = 2024
          AND e.cidade IN ('Maravilha', 'Descanso', 'Itapiranga', 'Guaraciaba')
        GROUP BY e.cidade
        ORDER BY COUNT(v.id) DESC
    """)
    List<ResidenciaVisitaDTO> findResidenciasVisitas();
}