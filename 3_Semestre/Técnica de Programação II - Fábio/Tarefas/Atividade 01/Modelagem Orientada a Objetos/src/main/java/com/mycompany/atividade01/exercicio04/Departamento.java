/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio04;

/**
 *
 * @author João
 */
public class Departamento implements DepartamentoInfo {
    private int codigo;
    private String nome;
    private String areaConhecimento;
    
    public Departamento(int codigo, String nome, String areaConhecimento){
        this.codigo = codigo;
        this.nome = nome;
        this.areaConhecimento = areaConhecimento;
    }
    
    public int getCodigo(){
        return codigo;
    }
    
    public String getNome() {
        return nome;
    }

    public String getAreaConhecimento() {
        return areaConhecimento;
    }
}
