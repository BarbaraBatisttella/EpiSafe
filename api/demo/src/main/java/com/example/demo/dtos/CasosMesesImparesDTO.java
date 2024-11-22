package com.example.demo.dtos;

import java.time.LocalDate;

public class CasosMesesImparesDTO {
    private Long id;
    private String nomePessoa;
    private String cidade;
    private LocalDate dataCaso;

    public CasosMesesImparesDTO(Long id, String nomePessoa, String cidade, LocalDate dataCaso) {
        this.id = id;
        this.nomePessoa = nomePessoa;
        this.cidade = cidade;
        this.dataCaso = dataCaso;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomePessoa() {
        return nomePessoa;
    }

    public void setNomePessoa(String nomePessoa) {
        this.nomePessoa = nomePessoa;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public LocalDate getDataCaso() {
        return dataCaso;
    }

    public void setDataCaso(LocalDate dataCaso) {
        this.dataCaso = dataCaso;
    }

    

}
    
