/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio05;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author João
 */
public class Universidade {
    private List<Departamento> departamentos = new ArrayList<>();

    public void adicionarDepartamento(Departamento departamento) {
        departamentos.add(departamento);
    }

    public List<Departamento> getDepartamentos() {
        return departamentos;
    }

    public void exibirDepartamentos() {
        System.out.println("Departamentos da Universidade:");
        for (Departamento departamento : departamentos) {
            System.out.println(departamento.getNome());
        }
    }

    public void procurarDepartamento(Departamento departamentoProcurado) {
        for (Departamento departamento : departamentos) {
            if (departamento.equals(departamentoProcurado)) {
                System.out.println("Departamento encontrado:");
                System.out.println("Código: " + departamento.getCodigo());
                System.out.println("Nome: " + departamento.getNome());
                System.out.println("Área de Conhecimento: " + departamento.getAreaConhecimento());
                return;
            }
        }
        System.out.println("Departamento não encontrado.");
    }
}
