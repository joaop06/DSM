/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio02;

/**
 *
 * @author João
 */
public class Biblioteca {
    
    public void main(){
        
        // Livro
        Livro livro = new Livro();
        livro.codigo = 123456;
        livro.titulo = "O Primeiro Livro";
        livro.anoLancamento = "12/07/2014";
        livro.autor = "João Pedro";
        livro.genero = "Comédia";
        System.out.print("\n\n***** Livro criado! *****");
        livro.print_information();
        
        
        // DVD
        DVD dvd = new DVD();
        dvd.codigo = 333;
        dvd.titulo = "Gente Grande";
        dvd.anoLancamento = "24/09/2010";
        dvd.diretor = "Dennis Dugan";
        dvd.duracao = "1h40m";
        dvd.faixa_etaria = 12;
        System.out.print("\n***** DVD criado! *****");
        dvd.print_information();

        
        // CD
        CD cd = new CD();
        cd.codigo = 4104;
        cd.titulo = "Seu Astral";
        cd.anoLancamento = "2010";
        cd.artista = "Jorge & Mateus";
        cd.genero_musical = "Sertanejo";
        System.out.print("\n***** CD criado! *****");
        cd.print_information();
    }
}
