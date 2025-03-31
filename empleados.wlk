//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0


    method sueldo() { //Consulta, Getter
        return sueldo
    }
    
    method sueldo(_sueldo) {//Setter, convención: mismo nombre del atributo con guión bajo
        sueldo = _sueldo	
    }
	
	method deuda() {
        return sueldo - deuda
    }
	
	method cobrarSueldo(){
				
		if (self.deuda() > 0 ) {
			dinero = dinero + self.deuda()
			deuda = 0
		}
		else{
			deuda = (self.deuda()).abs()
			dinero = 0
		}	
	}
	
	method gastar(cantidad){
		deuda = (deuda + cantidad)
		
		if (dinero >0){
			dinero = dinero - deuda
			if ( dinero - deuda < 0){
				deuda = dinero.abs()
				dinero = 0
			}
			else{
				deuda = 0
			}
		}
	}
	
	method totalDeuda(){ return deuda }
	method totalDinero(){ return dinero }
    
}

object baigorria {
    var cantEmpanadasVendidas = 0
    var precioEmpanadas = 15
    var totalCobrado = 0


    method venderEmpanadas(_empanadasVendidas){
        cantEmpanadasVendidas = cantEmpanadasVendidas + _empanadasVendidas
    }

    method sueldo() {
        return cantEmpanadasVendidas * precioEmpanadas
    }



    method precioEmpanadas(_precio){
        precioEmpanadas = _precio
    }
    
    method cobrarSueldo(){
		totalCobrado = totalCobrado + self.sueldo()
		cantEmpanadasVendidas = 0	
		return totalCobrado
	}
    
    

}



object gimenez {
    var fondo = 300000

    method fondo(_fondo){
        fondo = _fondo
    }
    method fondo() { //"Se conoce su fondo" Getter
        return fondo
    }
    method pagarSueldo(_empleado){
        fondo = fondo - _empleado.sueldo()
    }
}

/*
Borrar credenciales

git bash
$ git config --global user.name "Carla Burgos"
$ git config --global user.email "carlaburgosunq@gmail.com"

CLASE 31/3
Variable =/= referencia
x Aunque no son lo mismo son intercambiables, referencia "es todo"
Atributo Tipo específico de referencia, info del objeto
Constante y Variable Detallan qué tipo de referencia 
Referencia Una fecha que apunta a un objeto
Objeto = Referencia No hay objeto sin referencia 
var fondo (referencia sin objeto) var fondo = 1000 (referencia c objeto)

shift alt f



*/