/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio06;

/**
 *
 * @author João
 */
public class Carro implements Veiculo {
    private String modelo;
    private int ano;
    private String placa;
    private double valorHora;

    public Carro(String modelo, int ano, String placa, double valorHora) {
        this.modelo = modelo;
        this.ano = ano;
        this.placa = placa;
        this.valorHora = valorHora;
    }

    @Override
    public double calcularTaxa(int horasEstacionado) {
        return valorHora * horasEstacionado;
    }
}
