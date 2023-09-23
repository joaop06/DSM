/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.fintech;

/**
 *
 * @author 1091392223012
 */
public interface Movimentacao {
    
    public void depositar(Conta conta, Double valor);
    
    public void sacar(Conta conta, Double valor);    
}
