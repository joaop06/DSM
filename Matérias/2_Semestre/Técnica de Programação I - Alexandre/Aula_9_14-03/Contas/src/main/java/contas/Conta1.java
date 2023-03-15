/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package contas;

/**
 *
 * @author joaoo
 */


// Classe Conta1 que contém uma variável de instância "nome" e métodos para configurar e ovter seu valor
public class Conta1 {
    private String nome; // Variável de instância
    
    
    // Método para definir o nome do objeto
    public void setName(String nome){
        this.nome = nome;   // Armazena o nome
    }
    
    
    // Método para recuperar o nome do objeto
    public String getName(){
        return nome;    // Retorna o valor do nome
    }
}   // Fim da classe Conta1
