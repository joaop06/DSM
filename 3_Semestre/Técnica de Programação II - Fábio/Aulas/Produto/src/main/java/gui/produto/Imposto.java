/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produto;

/**
 *
 * @author joaoo
 */
public abstract class Imposto {
    
    public Integer calcularImposto(Produto p, String tipo){
        return 10;
    }
    
    public abstract Integer calcularICMS(Produto p);
}
