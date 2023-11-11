/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package observer;

/**
 *
 * @author joaoo
 */
public class FaturamentoObserver implements ProdutoObserver {
    

    @Override
    public void atualizarEstoque(Produto produto) {
        System.out.println("Faturamento: " + produto);
        
        // TODO: faz algo com produto
    }
}
