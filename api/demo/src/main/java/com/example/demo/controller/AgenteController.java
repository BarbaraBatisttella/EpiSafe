package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Agente;
import com.example.demo.service.AgenteService;

@RestController
@RequestMapping("/api/agentes")
public class AgenteController extends BaseController<Agente> {
    
    public AgenteController(AgenteService service) {
        super(service);
    }
}
