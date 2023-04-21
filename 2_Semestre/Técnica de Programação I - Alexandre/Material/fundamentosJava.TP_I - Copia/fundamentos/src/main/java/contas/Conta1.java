/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package contas;

/**
 *
 * @author Alexandre
 */

// Classe Conta1 que contém uma variável de instância "name"
// e métodos para configurar e obter seu valor
public class Conta1 {
    private String name; //variável de instância
    
    //método para definir o nome no objeto
    public void setName(String name){
        this.name = name; //armazena o nome
    }
    
    //método para recuperar o nome do objeto
    public String getName(){
        return name; //retorna o valor do nome
    }
} //fim da classe Conta1
