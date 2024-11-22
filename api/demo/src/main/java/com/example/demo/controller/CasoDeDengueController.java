package com.example.demo.controller;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dtos.CasosMesesImparesDTO;
import com.example.demo.dtos.CasosPorFaixaEtariaDTO;
import com.example.demo.dtos.OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale;
import com.example.demo.model.CasoDeDengue;
import com.example.demo.service.CasoDeDengueService;

@RestController
@RequestMapping("/api/caso_de_dengue")
public class CasoDeDengueController {

   private final CasoDeDengueService service;

    public CasoDeDengueController(CasoDeDengueService service) {
        this.service = service;
    }

    @GetMapping("")
    public ResponseEntity<Iterable<CasoDeDengue>> getPage(Pageable pageable){
        return ResponseEntity.ok(service.findAll(pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<CasoDeDengue> getOne(@PathVariable Integer id){
        return ResponseEntity.ok(service.findOne(id));
    }

    @PutMapping("")
    public ResponseEntity<CasoDeDengue> update(@RequestBody CasoDeDengue updated){
        return ResponseEntity.ok(service.save(updated));
    }

    @PostMapping("")
    public ResponseEntity<CasoDeDengue> create(@RequestBody CasoDeDengue created){
        return ResponseEntity.ok(service.save(created));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable Integer id){
        service.delete(id);
        return ResponseEntity.ok("Ok");
    }

    @GetMapping("/entre-mulheres-de-20-e-30-anos")
    public ResponseEntity<List<OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale>> findOcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale() {
        List<OcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale> report = this.service.findOcurrencesBetweenTwentyAndThirtyYearsWhereSexIsFemale();
        return ResponseEntity.ok(report);
    }

    @GetMapping("/meses-impares-em-2024")
    public ResponseEntity<List<CasosMesesImparesDTO>> findCasosMesesImpares() {
        return ResponseEntity.ok(this.service.findCasosMesesImpares());
    }

    @GetMapping("/total-casos-por-faixa-etária")
    public ResponseEntity<List<CasosPorFaixaEtariaDTO>> getCasosPorFaixaEtaria() {
        return ResponseEntity.ok(this.service.getCasosPorFaixaEtaria());
    }
 
}
