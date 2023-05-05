/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.desenho;

/**
 *
 * @author joaoo
 */

// Utilizando DrawLine para conectar os cantos de um painel
import java.awt.Graphics;
import javax.swing.JPanel;
public class DrawPanel extends JPanel{
    
    @Override
    public void paintComponent(Graphics g){
        
        super.paintComponent(g);
        
        int width = getWidth(); // Largura total
        int height = getHeight(); // Altura total
        
        // Desenha uma linha a partir do canto superior esquerdo até o inferior direito
        g.drawLine(width/2, height/2, width, height);
        
        // Desenha uma linha a partir do canto inferior esquerdo até o superior direito
        g.drawLine(0, height, width, 0);
        
        
    }
}
