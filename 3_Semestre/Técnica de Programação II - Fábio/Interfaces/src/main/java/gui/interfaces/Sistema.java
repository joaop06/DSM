/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.interfaces;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joaoo
 */
public class Sistema {
    
    public static void main(String...strings){
        FechamentoLetivoInterface fechamento = new FechamentoFatec();
        
        List<Double> notas = new ArrayList<Double>();
        notas.add(5.0);
        notas.add(7.0);
        
        Double media = fechamento.calcularMedia(notas);
        System.out.println("Media: " + media);
    }
    
}
