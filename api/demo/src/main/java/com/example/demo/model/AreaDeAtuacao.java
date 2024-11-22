package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "Area_de_atuacao")
public class AreaDeAtuacao {
    @Id
    @Column(nullable = false, updatable = false)
    @SequenceGenerator(name = "area_de_atuacao", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "area_de_atuacao")
    private Integer id;

    @Column(length = 100)
    private String apelido;

    @Column()
    private String observacao;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        this.apelido = apelido;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    
}
