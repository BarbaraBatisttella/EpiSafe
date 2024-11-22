package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Usuario;
import com.example.demo.service.UsuarioService;

@RestController
@RequestMapping("/api/usuario")
public class UsuarioController extends BaseController<Usuario> {

    public UsuarioController(UsuarioService service) {
        super(service);
    }
}
