package poo;
import javax.swing.*;
public class Uso_Coche {
    public static void main(String[] args){
        //instanciamos un objeto Renault de la clase Coche
        Coche Renault = new Coche();//Aqui ya le estamos dando un estado inicial tiene 4 ruedas largo 200 etc
        
        Renault.establece_color(JOptionPane.showInputDialog("Introduce color"));//Nombre instancia.metodo
        System.out.println(Renault.dime_datos_generales());
        System.out.println(Renault.dime_color());
        
        //setter
        Renault.configura_asientos(JOptionPane.showInputDialog("¿Tiene asiento de cuero? (si) (no)"));
        //getter
        System.out.println(Renault.dime_asientos());
        
        //setter
        Renault.configura_climatizador(JOptionPane.showInputDialog("¿Tiene climatizador? (si) (no)"));
        //getter
        System.out.println(Renault.dime_climatizador());
        
        
        //setter y getter
        System.out.println(Renault.dime_peso_coche());
        
        System.out.println("El precio del coche final es "+Renault.precio_coche());
    }
    
}

