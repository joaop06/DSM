/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio06;

/**
 *
 * @author João
 */
public class Bicicleta implements Veiculo{
    private String modelo;
    private int ano;
    private String tipo;

    public Bicicleta(String modelo, int ano, String tipo) {
        this.modelo = modelo;
        this.ano = ano;
        this.tipo = tipo;
    }

    /**
     *
     * @param horasEstacionado
     * @return
     */
    @Override
    public double calcularTaxa(int horasEstacionado) {
        // Bicicletas não pagam taxa
        return 0.0;
    }
}
