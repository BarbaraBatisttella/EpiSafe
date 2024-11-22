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

import com.example.demo.dtos.ResidenciaVisitaDTO;
import com.example.demo.model.Visita;
import com.example.demo.service.VisitaService;

@RestController
@RequestMapping("/api/visitas")
public class VisitaController {

   private final VisitaService service;

    public VisitaController(VisitaService service) {
        this.service = service;
    }

    @GetMapping("")
    public ResponseEntity<Iterable<Visita>> getPage(Pageable pageable){
        return ResponseEntity.ok(service.findAll(pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Visita> getOne(@PathVariable Integer id){
        return ResponseEntity.ok(service.findOne(id));
    }

    @PutMapping("")
    public ResponseEntity<Visita> update(@RequestBody Visita updated){
        return ResponseEntity.ok(service.save(updated));
    }

    @PostMapping("")
    public ResponseEntity<Visita> create(@RequestBody Visita created){
        return ResponseEntity.ok(service.save(created));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable Integer id){
        service.delete(id);
        return ResponseEntity.ok("Ok");
    }

    @GetMapping("/residencias-visitadas-em-2024")
    public List<ResidenciaVisitaDTO> getVisitasVisitasEm2024() {
        return service.getResidenciasVisitasEm2024();
    }
    
}
