package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException.NotFound;

import com.example.demo.dtos.ResidenciaVisitaDTO;
import com.example.demo.model.Visita;
import com.example.demo.repository.VisitaRepository;

import jakarta.transaction.Transactional;

@Service
public class VisitaService {

    @Autowired
    public VisitaRepository repository;

    public Page<Visita> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @SuppressWarnings("null")
    public Visita findOne(Integer id) {
        return repository.findById(id).orElseThrow(
                () -> NotFound.create(HttpStatusCode.valueOf(404), "Entidade não encontrada!", null, null, null));
    }

    @Transactional
    public Visita save(Visita entity) {
        return repository.save(entity);
    }

    @Transactional
    public void delete(Integer id) {
        repository.deleteById(id);
    }

    public List<ResidenciaVisitaDTO> getResidenciasVisitasEm2024() {
        return repository.findResidenciasVisitas();
    }

}
