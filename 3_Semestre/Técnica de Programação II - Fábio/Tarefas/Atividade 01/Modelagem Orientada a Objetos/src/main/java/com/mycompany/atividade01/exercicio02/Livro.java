/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio02;

/**
 *
 * @author João
 */
public class Livro extends Midia{
    
    String autor;
    String genero;

    public void print_information(){
        String dados_livro = String.format(
                "Código: %s%n"
                + "Título: %s%n"
                + "Ano de Lançamento: %s%n"
                + "Autor: %s%n"
                + "Gênero: %s%n", 
                super.codigo,super.titulo,super.anoLancamento,this.autor,this.genero
        );
        System.out.printf("%n%s%n****************************************%n",dados_livro);
    }
}
