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
public class NomeDialogo {
    public static void main(String[] args) {
        
        //pede para o usúario inserir o nome
        String name = JOptionPane.showInputDialog("Qual é o seu nome?");
        
        //cria a mensagem
        String message = String.format("Olá %s, bem vindo ao Java", name);
        
        //exibe a mensagem com o nome do usuário
        JOptionPane.showMessageDialog(null, message);
        
        //exibe a mensagem passando a variável "name" diretamente
        JOptionPane.showMessageDialog(null, "Olá "+ name + ", bem vindo ao Java,"
                + "passando a variável \"name\" aqui!");   
    }
} //fim da classe NomeDialogo
