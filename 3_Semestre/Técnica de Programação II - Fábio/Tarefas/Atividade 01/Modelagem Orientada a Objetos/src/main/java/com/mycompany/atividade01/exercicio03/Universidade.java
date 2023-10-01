/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio03;

/**
 *
 * @author João
 */
public class Universidade implements UniversidadeInfo{
    private String nome_uni;
    
    public Universidade(String nome_uni){
        this.nome_uni = nome_uni;
    }
    
    public String informarNome(){
        return nome_uni;
    }
}
