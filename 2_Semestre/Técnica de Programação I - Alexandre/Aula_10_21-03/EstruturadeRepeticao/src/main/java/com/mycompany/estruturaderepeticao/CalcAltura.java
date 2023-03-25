/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.estruturaderepeticao;
import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author joaoo
 */
public class CalcAltura {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        int quant_Mulheres = 0, quant_Homens = 0;
        double maiorAlt = 0.0, menorAlt = 3.0, somaAltHomens = 0.0;
        
        for (int x = 0; x <= 10; x++){
            System.out.printf("Altura %sº Pessoa: ", x+1);
            double altura = input.nextDouble();
            System.out.printf("Sexo %sº Pessoa [M/F]: ", x+1);
            String sexo = input.next();
            
            if(altura > maiorAlt){
                maiorAlt = altura;
            }
            if (altura < menorAlt){
                menorAlt = altura;
            }
            if(sexo.equals("M")){
                somaAltHomens += altura;
                quant_Homens++;
            }else{
                quant_Mulheres++;
            }
        }
        
        
        double mediaAltHomens = somaAltHomens / quant_Homens;
        
        
        System.out.printf("A) Maior Altura: %d // Menor Altura: %d%nB) Média de Altura dos Homens: %d%nC) Quantidade de Mulheres: %d", maiorAlt, menorAlt, mediaAltHomens, quant_Mulheres);

    }
}
