/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exercicios;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author joaoo
 */
public class Ex1 {
    
    public static void main(String[] args){
        
    }

    public class LimpaConsole {
        public static void main(String[] args) throws IOException, InterruptedException {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Teste");
            String texto = scanner.next();

            //Limpa a tela no windows, no linux e no MacOS
            if (System.getProperty("os.name").contains("Windows"))
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            else
                Runtime.getRuntime().exec("clear");

        }
    }
    
}
