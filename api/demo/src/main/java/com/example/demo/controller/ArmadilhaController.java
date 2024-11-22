package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Armadilha;
import com.example.demo.service.ArmadilhaService;

@RestController
@RequestMapping("/api/armadilhas")
public class ArmadilhaController extends BaseController<Armadilha> {

    public ArmadilhaController(ArmadilhaService service) {
        super(service);
    }
}
