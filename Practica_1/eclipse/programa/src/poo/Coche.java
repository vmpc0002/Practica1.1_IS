package poo;

/**
 *
 * @author David
 */
public class Coche {
    //Propiedades comunes de todos los coches
    private int ruedas;
    private int largo;
    private int ancho;
    private int motor;
    private int peso_plataforma;
    
    //Propiedad no comunes caracteristicas de cada coche
    private String color;
    private int peso_total;
    private boolean asientos_cuero, climatizador;
    
    
    //Establece un estado inicial para el objeto Coche
    public Coche(){//constructor
        ruedas=4;
        largo=2000;
        ancho=300;
        peso_plataforma=500;
        motor=1600;
    }
    //Para modificar las propiedades de los objetos al estar encapsuladas (private) solo se pueden cambiar aqui
    //metodo getter
    public String dime_datos_generales(){//obteien el valor de la propiedad largo
        return "La plataforma del vehiculo tiene "+ruedas+"ruedas"+
                ".Mide "+largo/1000+"metros con un ancho de "+ancho+
                "cm y un peso de plataforma de "+peso_plataforma+"kilos";
    }
    //metodo setter
    public void establece_color(String color_coche){//modifica el valor de la propiedad azul
        color=color_coche;
    }
    public String dime_color(){
      return "El color del coche es "+color;  
    }
    //metodo setter
    public void configura_asientos(String asientos_cuero){
        if(asientos_cuero.equalsIgnoreCase("si")){
        	this.asientos_cuero=true;
        }else{
        	this.asientos_cuero=false;
        }
        
    }
    //metodo getter
    public String dime_asientos(){
    	if(asientos_cuero==true){
    		return "El coche tiene asientos de cuero";
    	}else {
    		return "El coche no tiene asientos de cuero";
    	}
    }
    
    //metodo setter 
    public void configura_climatizador(String climatizador){
    	
    	//No comparo con == se compara con el metodo equals o equalsIgnoreCase para q no tenga en cuenta las mayusculas
    	if(climatizador.equalsIgnoreCase("si")){
    		this.climatizador=true;
    	}else{
    		this.climatizador=false;
    	}
    }
    //metodo getter
    public String dime_climatizador(){
    	if(climatizador==true){
    		return "El coche incorpora climatizador";
    	}else{
    		return "El coche no lleva climatizador";
    	}
    }
    
    public String dime_peso_coche(){//Setter + getter
    	int peso_carroceria=500;
    	
    	peso_total=peso_plataforma+peso_carroceria;
    	if(asientos_cuero==true){
    		peso_total=peso_total+50;
    	}
    	if(climatizador==true){
    		peso_total=peso_total+20;
    	}
    	return "El coche del peso total es "+peso_total;
    }
    //metodo getter
    public int precio_coche(){
    	int precio_final=10000;
    	if(asientos_cuero==true){
    		precio_final+=2000;
    	}
    	if(climatizador==true){
    		precio_final+=1500;
    	}
    	return precio_final;
    }
    
}
