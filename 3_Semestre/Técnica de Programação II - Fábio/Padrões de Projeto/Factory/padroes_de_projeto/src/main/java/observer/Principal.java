/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package observer;

/**
 *
 * @author joaoo
 */
public class Principal {
    
    public static void main(String... strings){
        Subject estoqueSubject = new EstoqueSubject();
        
        ProdutoObserver auditoria = new AuditoriaEstoqueObserver();
        
        ProdutoObserver faturamento = new FaturamentoObserver();
        
        
        estoqueSubject.registerObserver(faturamento);
        estoqueSubject.registerObserver(auditoria);
        
        
        Produto p = new Produto();
        p.setId(44L);
        p.setPrecoCusto(1333.44);
        p.setQuantidade(4L);
        p.setPrecoVenda(1500.00);
        
        estoqueSubject.setProduto(p);
        
        p.setQuantidade(10L);
        estoqueSubject.setProduto(p);
                
    }
}
