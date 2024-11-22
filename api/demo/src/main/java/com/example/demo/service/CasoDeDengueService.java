package com.example.demo.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException.NotFound;

import com.example.demo.dtos.CasosMesesImparesDTO;
import com.example.demo.dtos.CasosPorFaixaEtariaDTO;
import com.example.demo.dtos.OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale;
import com.example.demo.model.CasoDeDengue;
import com.example.demo.repository.CasoDeDengueRepository;

import jakarta.transaction.Transactional;

@Service
public class CasoDeDengueService {

    @Autowired
    public CasoDeDengueRepository repository;

    public Page<CasoDeDengue> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    public List<OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale> findOcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale() {
        List<Object[]> results = this.repository.findOcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale();
        return results.stream()
                .map(row -> new OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale(
                        (String) row[0], // nome_pessoa
                        ((Number) row[1]).intValue() // idade
                ))
                .collect(Collectors.toList());
    }

    public List<CasosMesesImparesDTO> findCasosMesesImpares() {
        return this.repository.findCasosMesesImpares();
    }

    public List<CasosPorFaixaEtariaDTO> getCasosPorFaixaEtaria() {
        return this.repository.findCasosPorFaixaEtaria();
    }

    @SuppressWarnings("null")
    public CasoDeDengue findOne(Integer id) {
        return repository.findById(id).orElseThrow(
                () -> NotFound.create(HttpStatusCode.valueOf(404), "Entidade não encontrada!", null, null, null));
    }

    @Transactional
    public CasoDeDengue save(CasoDeDengue entity) {
        return repository.save(entity);
    }

    @Transactional
    public void delete(Integer id) {
        repository.deleteById(id);
    }

}
