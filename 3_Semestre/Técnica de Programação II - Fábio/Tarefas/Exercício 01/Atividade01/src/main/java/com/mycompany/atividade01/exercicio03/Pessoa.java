/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio03;

/**
 *
 * @author joaoo
 */
public class Pessoa extends Universidade{
    
    String nome_pessoa;
    
    public void dados_pessoa(){
        System.out.printf("Nome: %s%nUniversidade: %s", this.nome_pessoa, super.nome_uni);
    }
}
