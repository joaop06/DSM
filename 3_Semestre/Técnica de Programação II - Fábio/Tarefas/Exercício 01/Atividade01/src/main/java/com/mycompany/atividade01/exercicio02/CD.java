/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio02;

/**
 *
 * @author João
 */
public class CD extends Midia{
    
    String artista;
    String genero_musical;
    
    public void print_information(){
        String dados_cd = String.format(
                "Código: %s%n"
                + "Título: %s%n"
                + "Ano de Lançamento: %s%n"
                + "Artista: %s%n"
                + "Gênero Musical: %s%n", 
                super.codigo,super.titulo,super.anoLancamento,this.artista,this.genero_musical
        );
        System.out.printf("%n%s%n****************************************%n",dados_cd);
    }
}
