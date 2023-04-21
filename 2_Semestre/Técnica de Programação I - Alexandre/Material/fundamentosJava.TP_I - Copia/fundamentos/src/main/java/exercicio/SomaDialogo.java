/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exercicio;
import javax.swing.JOptionPane;

/**
 *
 * @author Alexandre
 */
public class SomaDialogo {
    public static void main(String[] args) {
        //Digitando os números na caixa de diálogo para somar
        String num1 = JOptionPane.showInputDialog("Digite o primeiro número!");
        String num2 = JOptionPane.showInputDialog("Digite o segundo número!");
        
        //convertendo string em int
        int convertNum1 = Integer.parseInt(num1);
        int convertNum2 = Integer.parseInt(num2);
        
        //somar os números convertidos
        int sum = convertNum1 + convertNum2;
        
        //mostrando a mensagem na caixa de diálogo
        JOptionPane.showMessageDialog(null, "A soma dos números é: "+ sum);
    }
} //fim classe SomaDialogo