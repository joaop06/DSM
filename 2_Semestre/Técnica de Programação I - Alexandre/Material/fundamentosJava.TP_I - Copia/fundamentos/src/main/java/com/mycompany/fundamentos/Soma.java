/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fundamentos;
import java.util.Scanner;
/**
 *
 * @author Alexandre
 */
public class Soma {
    public static void main(String[] args)
    {
     //cria um Scanner para obter entrada a partir da janela de comando
       Scanner input = new Scanner(System.in);
       int number1, number2, sum;
       
       System.out.print("Digite o primeiro numero: ");
       number1 = input.nextInt();
       
       System.out.print("Digite o segundo numero: ");
       number2 = input.nextInt();
       
       sum = number1 + number2;
       
       System.out.printf("A Soma é %d%n", sum);
    }
}
