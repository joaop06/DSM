/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package observer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author joaoo
 */
public class AuditoriaEstoqueObserver implements ProdutoObserver {
    
    private Map<Long, List<Produto>> listaAuditoria = new HashMap();

    @Override
    public void atualizarEstoque(Produto produto) {
        System.out.println("Auditoria: " + produto);
        
        
        List<Produto> auditoria = listaAuditoria.get(produto.getId());
        
        if(auditoria == null){
            auditoria = new ArrayList();
        }

        auditoria.add(produto);
        this.listaAuditoria.put(produto.getId(), auditoria);
    }
}
