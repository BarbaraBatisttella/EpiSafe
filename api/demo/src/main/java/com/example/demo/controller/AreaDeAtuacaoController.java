package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.AreaDeAtuacao;
import com.example.demo.service.AreaDeAtuacaoService;

@RestController
@RequestMapping("/api/area-de-atuacao")
public class AreaDeAtuacaoController extends BaseController<AreaDeAtuacao> {

    public AreaDeAtuacaoController(AreaDeAtuacaoService service) {
        super(service);
    }
}
