/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/*
 * Tem-se um conjunto de dados contendo a altura e o sexo “M” Masculino
 * e “F” Feminino de 10 pessoas. Fazer um programa em JAVA que calcule e escreva:
 * a) A maior e a menor altura do grupo;
 * b) A média de altura dos homens;
 * c) A quantidade de mulheres.
*/
        
package exercicio;

import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author Alexandre
 */
public class CalculaAlturas {
        public static void main(String[] args) {
            Locale.setDefault(Locale.US);
            Scanner sc = new Scanner(System.in);
            
            double maiorAltura = 0.0;
            double menorAltura = 3.0;
            double somaAlturasHomens = 0.0;
            int numMulheres = 0;
            int numHomens = 0;
            
            //para
            for(int i=1; i<=10; i++){
                System.out.print("Digite a altura da pessoa "+i+": ");
                double altura = sc.nextDouble();
                System.out.print("Digite o sexo da pessoa "+i+" (M/F): ");
                String sexo = sc.next();
                
                if(altura > maiorAltura){
                    maiorAltura = altura;
                }
                if(altura < menorAltura){
                    menorAltura = altura;
                }
                if(sexo.equals("M")){
                    somaAlturasHomens +=altura;
                    numHomens++;
                }else {
                    numMulheres++;
                }
            }
            
            double mediaAlturasHomens = somaAlturasHomens / numHomens;
            
            System.out.println("Maior altura: "+maiorAltura);
            System.out.println("Menor altura: "+menorAltura);
            System.out.println("Média de altura dos homens: "+mediaAlturasHomens);
            System.out.println("Quantidade de mulheres: "+numMulheres);            
    }
}
