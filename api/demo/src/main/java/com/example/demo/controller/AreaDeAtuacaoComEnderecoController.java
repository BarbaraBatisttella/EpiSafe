package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.AreaDeAtuacaoComEndereco;
import com.example.demo.service.AreaDeAtuacaoComEnderecoService;

@RestController
@RequestMapping("/api/area-de-atuacao-com-endereco")
public class AreaDeAtuacaoComEnderecoController extends BaseController<AreaDeAtuacaoComEndereco> {

    public AreaDeAtuacaoComEnderecoController(AreaDeAtuacaoComEnderecoService service) {
        super(service);
    }
}
