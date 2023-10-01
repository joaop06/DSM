/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio06;

/**
 *
 * @author João
 */
public class Exec06 {
    public void main() {
        Estacionamento estacionamento = new Estacionamento();

        Carro carro1 = new Carro("Toyota", 2020, "ABC123", 5.0);
        Carro carro2 = new Carro("Honda", 2019, "XYZ456", 4.5);
        Bicicleta bicicleta1 = new Bicicleta("Mountain Bike", 2021, "Montanha");

        estacionamento.adicionarVeiculo(carro1);
        estacionamento.adicionarVeiculo(carro2);
        estacionamento.adicionarVeiculo(bicicleta1);

        double receitaTotal = estacionamento.calcularTotal();
        System.out.println("Receita total do estacionamento: R$" + receitaTotal);
    }
}
