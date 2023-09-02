/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produto;

/**
 *
 * @author joaoo
 */
public class Principal {
    
    public static void main(String...strings){
        Produto p1 = new Produto();
        p1.setCodigo(123);
        p1.setDescricao("Celular bonito");
        p1.setTipoProduto("A");
        p1.setQuantidade(2);
        p1.setPrecoCusto(2500D);
        p1.setEstado("SP");

        Venda venda = new Venda();
        
        if("MG".equalsIgnoreCase(p1.getEstado())){
            venda = new VendaMG();
        } else if ("RS".equalsIgnoreCase(p1.getEstado())) {
            venda = new VendaRS();
        } else {
            venda = new Venda();
        }
        
        System.out.println(venda.vender(p1));
        
    }
}
