package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Ciclo;
import com.example.demo.service.CicloService;

@RestController
@RequestMapping("/api/ciclos")
public class CicloController extends BaseController<Ciclo> {
    
    public CicloController(CicloService service) {
        super(service);
    }
}
