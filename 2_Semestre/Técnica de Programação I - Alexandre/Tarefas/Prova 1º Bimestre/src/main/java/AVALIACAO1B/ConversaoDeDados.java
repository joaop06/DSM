/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AVALIACAO1B;

/**
 *
 * @author joaoo
 */
public class ConversaoDeDados {
    
    private double valor;
    
 
    public ConversaoDeDados(double valor){
        this.valor = valor;
    }
    
    public void setName(double valor){
        this.valor = valor;
    }
    
    // Método para configurar/inserir o valor em name
    public double km_metro(double valor){
        this.valor = valor * 1000;
        return valor;
        
    }   
    

}
