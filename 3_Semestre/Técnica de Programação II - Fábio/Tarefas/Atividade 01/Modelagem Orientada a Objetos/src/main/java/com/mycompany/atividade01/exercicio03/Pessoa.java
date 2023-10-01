/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio03;

/**
 *
 * @author joaoo
 */
public class Pessoa implements PessoaInfo{
    
    private String nome_pessoa;
    private String data_nasc;
    private UniversidadeInfo universidade;
    
    
    public Pessoa(String nome, String data_nasc){
        this.nome_pessoa = nome;
        this.data_nasc = data_nasc;
    }
    
    public void setUniversidade(UniversidadeInfo universidade){
        this.universidade = universidade;
    }
    
    @Override
    public String informarNomePessoa(){
        return nome_pessoa;
    }
    
    @Override
    public String informarUniversidade(){
        if(universidade != null){
            return String.format("%nTrabalha na Universidade de %s%n*************************%n%n", universidade.informarNome());
        } else {
            return "%nNão está associado a nenhuma universidade no momento%n*************************%n%n";
        }
    }
}
