/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package contas;

/**
 *
 * @author Alexandre
 */

//a classe Conta com um construtor que inicializa o "name"
public class Conta2 {
    
    private String name;
    
    //o construtor inicializa "name" com nome no parâmetro
    public Conta2(String name){ // o nome do construtor é o nome da classe
        this.name = name;
    }
    
    //métod para configurar/inserir o nome
    public void setName(String name){
        this.name = name;
    }
    
    //método para recuperar o nome
    public String getName(){
        return name;
    }
} //fim da classe Conta2
