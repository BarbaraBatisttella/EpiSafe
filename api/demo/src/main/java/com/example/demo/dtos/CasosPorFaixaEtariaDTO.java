package com.example.demo.dtos;

public class CasosPorFaixaEtariaDTO {

    private String cidade;
    private String faixaEtaria;
    private Long totalCasos;

    public CasosPorFaixaEtariaDTO(String cidade, String faixaEtaria, Long totalCasos) {
        this.cidade = cidade;
        this.faixaEtaria = faixaEtaria;
        this.totalCasos = totalCasos;
    }

    // Getters e Setters
    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getFaixaEtaria() {
        return faixaEtaria;
    }

    public void setFaixaEtaria(String faixaEtaria) {
        this.faixaEtaria = faixaEtaria;
    }

    public Long getTotalCasos() {
        return totalCasos;
    }

    public void setTotalCasos(Long totalCasos) {
        this.totalCasos = totalCasos;
    }
}