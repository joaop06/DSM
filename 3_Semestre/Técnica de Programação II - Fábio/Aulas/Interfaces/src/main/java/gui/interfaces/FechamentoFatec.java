/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.interfaces;

import java.util.List;

/**
 *
 * @author joaoo
 */
public class FechamentoFatec implements FechamentoLetivoInterface {

    @Override
    public Double calcularMedia(List<Double> notas) {
        
        Double somanotas = 0D;
        Double media;
        
        for(Double n : notas){
            somanotas += n;
        }
        
        if(notas.size() > 5){
            media = (somanotas / notas.size()) * 1.1;
        } else {
            media = somanotas / notas.size();
        }
        
        return media;
    }

    @Override
    public Double validarAprovacao(Double media, Double notaExame) {
        return null;
    }
    
}
