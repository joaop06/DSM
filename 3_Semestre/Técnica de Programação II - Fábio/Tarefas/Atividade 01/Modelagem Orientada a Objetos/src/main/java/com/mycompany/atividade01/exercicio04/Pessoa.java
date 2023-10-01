/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio04;

/**
 *
 * @author João
 */
public class Pessoa implements PessoaInfo {
    private String nome;
    private DepartamentoInfo departamento;

    public Pessoa(String nome, DepartamentoInfo departamento) {
        this.nome = nome;
        this.departamento = departamento;
    }

    public String getNome() {
        return nome;
    }

    public DepartamentoInfo getDepartamento() {
        return departamento;
    }
}
