/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio04;

/**
 *
 * @author João
 */
public class Exec04 {
    public void main() {
        // Criar um Departamento
        DepartamentoInfo departamentoInformatica = new DepartamentoInformatica(1, "Informática", "Tecnologia da Informação");

        // Criar uma Universidade relacionada ao Departamento
        Universidade universidade = new UniversidadeExemplo(departamentoInformatica);

        // Criar duas pessoas associadas ao Departamento
        PessoaInfo pessoa1 = new Pessoa("João", departamentoInformatica);
        PessoaInfo pessoa2 = new Pessoa("Pedro", departamentoInformatica);

        // Exibir informações
        System.out.print("\n*****************************\n");
        System.out.println("Universidade pertence ao Departamento de " + universidade.getDepartamento().getNome());
        System.out.println(pessoa1.getNome() + " trabalha no Departamento de " + pessoa1.getDepartamento().getNome());
        System.out.println(pessoa2.getNome() + " trabalha no Departamento de " + pessoa2.getDepartamento().getNome());
        System.out.print("*****************************\n\n");
    }
}
