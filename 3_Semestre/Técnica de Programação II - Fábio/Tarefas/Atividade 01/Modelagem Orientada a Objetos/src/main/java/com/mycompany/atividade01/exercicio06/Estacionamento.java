/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio06;

import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author João
 */
public class Estacionamento {
    private List<Veiculo> veiculosEstacionados = new ArrayList<>();

    public void adicionarVeiculo(Veiculo veiculo) {
        veiculosEstacionados.add(veiculo);
    }

    public double calcularTotal() {
        double total = 0.0;
        for (Veiculo veiculo : veiculosEstacionados) {
            total += veiculo.calcularTaxa(2); // Exemplo: 2 horas de estacionamento para todos os veículos
        }
        return total;
    }

}
