/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fintech;

/**
 *
 * @author 1091392223012
 */
public class FranBankMov extends MovimentacaoPadrao{
    
    @Override
    public void depositar(Conta conta, Double valor) {
        
        conta.atualizarSaldo(valor);
        
        Double adicional = valor *0.01;
        
        conta.atualizarSaldo(adicional);
        
    }
    
    @Override
    public void sacar(Conta conta, Double valor) {
        
        Double limiteTotal = conta.getLimite() + conta.getSaldo();
        
        if(limiteTotal < valor) {
            System.out.println("Sem limite para saque.");
            return;
        }
        
        conta.atualizarSaldo(-valor);
    }
}
