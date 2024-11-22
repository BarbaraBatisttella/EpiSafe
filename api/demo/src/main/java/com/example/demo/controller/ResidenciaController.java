package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Residencia;
import com.example.demo.service.ResidenciaService;

@RestController
@RequestMapping("/api/residencias")
public class ResidenciaController extends BaseController<Residencia> {
    
    public ResidenciaController(ResidenciaService service) {
        super(service);
    }
}
