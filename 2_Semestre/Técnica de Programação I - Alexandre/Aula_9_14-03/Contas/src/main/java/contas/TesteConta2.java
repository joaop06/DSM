/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

// Usando o construtor de Conta2 para inicializar a instância "name" no momento em que cada objeto Conta2 é criado
package contas;

/**
 *
 * @author joaoo
 */
public class TesteConta2 {
    
    public static void main(String[] args) {
        // Cria dois objetos Conta2
        Conta2 minhaConta1 = new Conta2("João");
        Conta2 minhaConta2 = new Conta2("Araújo");
        
        
        // Exibe o valor inicial de "name" para cada Cpnta2
        System.out.printf("Os nomes dos objetos são: %s %s", minhaConta1.getName(), minhaConta2.getName());
        
    }
}
