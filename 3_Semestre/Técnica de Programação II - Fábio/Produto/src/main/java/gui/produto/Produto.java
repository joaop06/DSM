/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produto;

/**
 *
 * @author joaoo
 */
public class Produto {
    
    private Integer codigo;
    private String tipoProduto;
    private String descricao;
    private Integer quantidade;
    private Double precoCusto;
    private Double precoVenda;
    private String estado;

    
    /**
     * Construtor padrão sobrescrito
     */
    public Produto() {}

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getTipoProduto() {
        return tipoProduto;
    }

    public void setTipoProduto(String tipoProduto) {
        this.tipoProduto = tipoProduto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public Double getPrecoCusto() {
        return precoCusto;
    }

    public void setPrecoCusto(Double precoCusto) {
        this.precoCusto = precoCusto;
    }

    public Double getPrecoVenda() {
        return precoVenda;
    }

    public void setPrecoVenda(Double precoVenda) {
        this.precoVenda = precoVenda;
    }
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Produto{" + "codigo=" + codigo + ", tipoProduto=" + tipoProduto + ", descricao=" + descricao + ", quantidade=" + quantidade + ", precoCusto=" + precoCusto + ", precoVenda=" + precoVenda + ", estado=" + estado + '}';
    }
    
    
}
