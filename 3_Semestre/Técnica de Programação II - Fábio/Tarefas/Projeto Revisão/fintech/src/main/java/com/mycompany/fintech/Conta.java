/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fintech;

/**
 *
 * @author 1091392223012
 */
public class Conta {
    
    private Double saldo;
    private Integer numero;
    private Double limite;
    
    /**
     * 
     * 
     */
    public Conta(Integer numero) {        
        this.numero = numero;
        this.saldo = 0D;
        this.limite = 0D;
    }
    
    public Conta(Integer numero, Double limite) {        
        this.numero = numero;
        this.saldo = 0D;
        this.limite = limite;
    }

    public Double getSaldo() {
        return saldo;
    }
    
    public void atualizarSaldo(Double valor) {
        this.saldo += valor;
    }

    public Double getLimite() {
        return limite;
    }

    public void setLimite(Double limite) {
        this.limite = limite;
    }

    public Integer getNumero() {
        return numero;
    }

    @Override
    public String toString() {
        return "Conta{" + "saldo=" + saldo + ", numero=" + numero + ", limite=" + limite + '}';
    }
        
}
