package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@Entity
@Table(name = "Residencia")
public class Residencia {
    @Id
    @Column(nullable = false, updatable = false)
    @SequenceGenerator(name = "residencia_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "residencia_id_seq")
    private Integer id;

    @Column(nullable = false)
    private Integer tipo_residencia;

    @Column(name="numero", nullable = false, length = 10)
    private String numero;

    @Column
    private String ponto_de_referencia;

    @ManyToOne
    @JoinColumn(name = "endereco_id")
    @JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
    private Endereco endereco;

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getPonto_de_referencia() {
        return ponto_de_referencia;
    }

    public void setPonto_de_referencia(String ponto_de_referencia) {
        this.ponto_de_referencia = ponto_de_referencia;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTipo_residencia() {
        return tipo_residencia;
    }

    public void setTipo_residencia(Integer tipo_residencia) {
        this.tipo_residencia = tipo_residencia;
    }
}
