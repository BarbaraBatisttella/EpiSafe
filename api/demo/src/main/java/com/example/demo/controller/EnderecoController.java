package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Endereco;
import com.example.demo.service.EnderecoService;

@RestController
@RequestMapping("/api/enderecos")
public class EnderecoController extends BaseController<Endereco> {
    
    public EnderecoController(EnderecoService service) {
        super(service);
    }
}
