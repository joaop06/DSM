/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package contas;

/**
 *
 * @author joaoo
 */
public class Conta2 {
    
    private String name;
    
    
    // O construtor inicializa "name" como nome no parâmetro
    public Conta2(String name){ // O nome do construtor é o nome da classe
        this.name = name;
    }
    
    
    // Método para configurar/inserir o valor em name
    public void setName(String name){
        this.name = name;
    }
    
    // Método para retornar o valor de name
    public String getName(){
        return name;
    }
}
