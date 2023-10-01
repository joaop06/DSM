/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio02;

/**
 *
 * @author João
 */
public class DVD extends Midia {
    
    String diretor;
    String duracao;
    int faixa_etaria;

    public void print_information(){
        String dados_dvd = String.format(
                "Código: %s%n"
                + "Título: %s%n"
                + "Ano de Lançamento: %s%n"
                + "Diretor: %s%n"
                + "Duração: %s%n"
                + "Faixa Etária: %s%n", 
                super.codigo,super.titulo,super.anoLancamento,this.diretor,this.duracao, this.faixa_etaria
        );
        System.out.printf("%n%s%n****************************************%n",dados_dvd);
    }
}
