/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.desenho;

/**
 *
 * @author joaoo
 */

import javax.swing.JFrame;
public class DrawPanelTeste {
    
    public static void main(String[] args) {
        DrawPanel panel = new DrawPanel();
        
        JFrame application = new JFrame();
                
        application.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        application.add(panel);
        application.setSize(600, 600);
        application.setVisible(true);
        
    }
}
