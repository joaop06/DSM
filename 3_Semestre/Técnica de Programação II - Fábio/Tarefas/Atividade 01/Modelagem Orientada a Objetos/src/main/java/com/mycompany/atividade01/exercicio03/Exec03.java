/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio03;

/**
 *
 * @author João
 */
public class Exec03 {
    
    public void main(){
        Universidade princeton = new Universidade("Princeton");
        Universidade cambridge = new Universidade("Cambridge");
        
        Pessoa einstein = new Pessoa("Albert Einstein", "14/03/1879");
        Pessoa newton = new Pessoa("Isaac Newton", "04/01/1643");
        
        
        // Associar Pessoa a uma Universidade
        einstein.setUniversidade(princeton);
        newton.setUniversidade(cambridge);
        
        
        // Dados de Albert Einstein
        System.out.print(einstein.informarNomePessoa());
        System.out.print(einstein.informarUniversidade());
        
        // Dados de Isaac Newton
        System.out.print(newton.informarNomePessoa());
        System.out.print(newton.informarUniversidade());
    }

}
