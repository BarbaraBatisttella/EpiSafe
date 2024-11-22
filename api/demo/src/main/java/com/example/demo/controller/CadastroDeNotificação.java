package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.CadastroDeNotificacao;
import com.example.demo.service.CadastroDeNotificacaoService;

@RestController
@RequestMapping("/api/notificacoes")
public class CadastroDeNotificação extends BaseController<CadastroDeNotificacao> {

    public CadastroDeNotificação(CadastroDeNotificacaoService service) {
        super(service);
    }
}
