/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fintech;

/**
 *
 * @author 1091392223012
 */
public abstract class MovimentacaoPadrao implements Movimentacao{
    
    @Override
    public void depositar(Conta conta, Double valor) {
        
        conta.atualizarSaldo(valor);
        
    }
    
    @Override
    public void sacar(Conta conta, Double valor) {
        
        if(conta.getSaldo() < valor){
            System.out.println("Sem saldo na conta!");
            return;
        }
        
        conta.atualizarSaldo(-valor);
    }
    
}
