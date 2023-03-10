/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.util.Scanner;
/**
 *
 * @author joaoo
 */
public class GrausCparaF {
    public static void main(String[] args){
        //(°C × 9/5) + 32 = °F  --> ºC para ºF
        //(°F − 32) × 5/9 = °C  --> ºF para ºC

        Scanner input = new Scanner(System.in);
        
        final double fator2 = 5.0 / 9.0;
        double graus, result;
        String unid;
        
        System.out.print("Informe unidade quer converter [C/F]: ");
        unid = input.next();
        
        System.out.printf("Digite a temperatura em º%s: ", unid);
        graus = input.nextInt();
        
        if (unid == "C"){
            result = (graus - fator2) + 32;
            System.out.printf("%dºC convertido é %dºF", graus, result);
        }
        
        if (unid == "F"){
            result = (graus - 32) * fator2;
            System.out.printf("%dºF convertido é %dºC", graus, result);
        }

    }
}
