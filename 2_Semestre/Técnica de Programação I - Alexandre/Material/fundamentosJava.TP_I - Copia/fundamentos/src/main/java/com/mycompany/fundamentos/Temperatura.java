/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fundamentos;
import java.util.Locale;
import java.util.Scanner;


/**
 *
 * @author Alexandre
 */
public class Temperatura {
    public static void main(String[] args) {
        Locale.setDefault(Locale.US);
        Scanner input = new Scanner(System.in);
        
        //(ºF - 32) x 5/9 = ºC
        final int AJUSTE = 32;
        final double FATOR = 5.0 / 9.0;
        
        System.out.print("Digite o valor em fahrenheit ºF : ");
        double fahrenheit = input.nextDouble();
          double celsius = (fahrenheit - AJUSTE) * FATOR;
        
        System.out.println("O resultado é " + celsius + "ºC.");
        
    }
}
