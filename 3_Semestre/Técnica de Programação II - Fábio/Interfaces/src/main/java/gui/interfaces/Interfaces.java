/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package gui.interfaces;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joaoo
 */
public class Interfaces {

    public static void main(String[] args) {
        FechamentoLetivoInterface fechamento = new FechamentoFatec();
        
        List<Double> notas = new ArrayList<Double>();
        notas.add(5.0);
        notas.add(7.0);
        notas.add(8.0);
        notas.add(8.6);
        notas.add(4.3);
        notas.add(6.4);
        
        
        Double media = fechamento.calcularMedia(notas);
        System.out.println("Media: " + media);
    }
}
