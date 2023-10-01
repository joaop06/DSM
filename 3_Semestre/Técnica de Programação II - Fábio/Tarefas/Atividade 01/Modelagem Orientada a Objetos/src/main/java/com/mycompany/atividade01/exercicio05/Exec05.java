/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio05;

/**
 *
 * @author João
 */
public class Exec05 {
    public void main() {
        // Criar uma Universidade
        Universidade universidade = new Universidade();

        // Adicionar 10 departamentos à universidade
        for (int i = 1; i <= 10; i++) {
            Departamento departamento = new Departamento(i, "Departamento " + i, "Área " + i);
            universidade.adicionarDepartamento(departamento);
        }

        // Exibir a relação de departamentos da universidade
        universidade.exibirDepartamentos();

        // Procurar um departamento específico
        Departamento departamentoProcurado = new Departamento(3, "", "");
        universidade.procurarDepartamento(departamentoProcurado);
    }
}
