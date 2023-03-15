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

// Cria e manipula um objeto Conta1
public class TesteConta1 {
    public static void main(String[] args) {
        // Cria um objeto Scanner para obter entrada a partir da 
        Scanner input = new Scanner(System.in);
        
        // Cria um objeto Conta1 e atribui a minhaConta
        Conta1 minhaConta = new Conta1();
        
        
        // Exibe o valor inicial de nome (Null)
        System.out.printf("Valor inicial de nome é: %s%n%n", minhaConta.getName());
        
        
        // Insere valor a variável nome
        System.out.print("Digite o nome: ");
        String nome = input.nextLine();     // Lê uma linha de texto
        minhaConta.setName(nome);           // Insere o conteúdo da variável nome como parâmetro para minhaConta
        
        
        // Exibe o novo valor de nome
        System.out.printf("%nValor atualizado de nome é: %s%n%n", minhaConta.getName());
    }
}
