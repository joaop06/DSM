/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produtovenda;

/**
 *
 * @author joaoo
 */
public class VendaMG extends Venda {
    
    @Override
    public Produto vender(Produto produto){
        produto = super.vender(produto);
        produto.setPrecoVenda(produto.getPrecoVenda()*1.085);
        return produto;
    }
}
