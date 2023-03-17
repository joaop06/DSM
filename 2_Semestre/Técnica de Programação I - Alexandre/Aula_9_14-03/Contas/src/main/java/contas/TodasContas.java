/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package contas;

import java.util.Scanner;

/**
 *
 * @author joaoo
 */
public class TodasContas {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        Conta1 primeiroOBJ = new Conta1();
        
        System.out.print("Digite o nome do primeiro objeto:");
        String name = entrada.nextLine();
        primeiroOBJ.setName(name);
        
        Conta2 segundoOBJ = new Conta2("Pedro");
        Conta2 terceiroOBJ = new Conta2("Borges");
        
        System.out.printf("1° Objeto: %s%2° e 3° Objeto: %s %s", primeiroOBJ.getName(),
                segundoOBJ.getName(), terceiroOBJ.getName());
    }
}
