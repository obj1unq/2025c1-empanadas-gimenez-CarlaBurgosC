//Escribir aqui los objetos
object galvan {
    var sueldo = 15000


    method sueldo() { //Consulta
        return sueldo
    }
    method sueldo(_sueldo){ //Orden?
        sueldo = _sueldo
    }
    method gastar(_cuanto){
        return sueldo - _cuanto
    }
    method deuda(){
        

    }
    method dinero(){
        
    }
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
    method totalCobrado(){
        return  totalCobrado + self.sueldo()
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