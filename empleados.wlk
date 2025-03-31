//Escribir aqui los objetos
object galvan {
    var sueldo = 15000


    method sueldo() { //Consulta
        return sueldo
    }
    method sueldo(nuevoValor) {	sueldo = nuevoValor	}
	
	method opeDeuda() { return sueldo - deuda}
	
	method cobrarSueldo(){
				
		if (self.opeDeuda() > 0 ) {
			dinero = dinero + self.opeDeuda()
			deuda = 0
		}
		else{
			deuda = (self.opeDeuda()).abs()
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
		cantidadEmpanadasVendidas = 0	
		return totalCobrado
	}
    
    

}



object gimenez {
    var fondo = 300000

    method fondo(_fondo){
        fondo = _fondo
    }
    method fondo() {
        return fondo
    }
    method pagarSueldo(_empleado){
        fondo = fondo - _empleado.sueldo()
    }
}

//object estoyprobandoelcommit{
    //Se suben con el perfil de otro alumno que se llama Franco
    //Nueva prueba 
    // Link para corregir usuario https://git-scm.com/book/es/v2/Inicio---Sobre-el-Control-de-Versiones-Configurando-Git-por-primera-vez

//}