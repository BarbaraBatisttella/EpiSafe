package com.example.demo.dtos;

public class ResidenciaVisitaDTO {

    private String cidade;
    private Long totalVisitas;

    public ResidenciaVisitaDTO(String cidade, Long totalVisitas) {
        this.cidade = cidade;
        this.totalVisitas = totalVisitas;
    }

    // Getters e Setters
    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Long getTotalVisitas() {
        return totalVisitas;
    }

    public void setTotalVisitas(Long totalVisitas) {
        this.totalVisitas = totalVisitas;
    }
}
