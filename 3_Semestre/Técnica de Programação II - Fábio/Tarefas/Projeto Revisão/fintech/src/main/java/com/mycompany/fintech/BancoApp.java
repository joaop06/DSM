/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fintech;

/**
 *
 * @author 1091392223012
 */
public class BancoApp {
    
    public static void main(String... args) {
        
        Movimentacao movimentacao = new BancoMovimentacao();
        Conta c1 = new Conta(101022);
        
        System.out.println(c1);
        
        movimentacao.depositar(c1, 250.00);
        System.out.println(c1);
        
        movimentacao.sacar(c1, 50.00);
        System.out.println(c1);
        
        movimentacao.sacar(c1, 500.00);
        System.out.println(c1);
        
        System.out.println("\n\nMovimentação FranBank");
        Conta c2 = new Conta(9999, 1000D);
        movimentacao = new FranBankMov();
        System.out.println(c2);
        
        movimentacao.depositar(c2, 1000D);
        System.out.println(c2);
        
        movimentacao.sacar(c2, 1500D);
        System.out.println(c2);
        
    }
}
