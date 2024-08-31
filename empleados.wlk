//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0

    method sueldo(){
        return sueldo 
    }

    method dinero(){
        return dinero.max(0)
    // return if (saldo >= 0) saldo else 0
    }

     method sueldo(_sueldo){
        sueldo = _sueldo 
    }

    method gastar(cantidad){
        dinero -= cantidad
    }

    method cobrarSueldo(){
        dinero += sueldo
    }

    method deuda(){
        return dinero.min(0).abs()
    }

}

object baigorria {

    var totalCobrado = 0
    var cantDeEmpanadasVendidas = 0

    method cobrarSueldo() {
        totalCobrado += self.sueldo()
        cantDeEmpanadasVendidas = 0
    }

    method totalCobrado(){
        return totalCobrado
    }

    method sueldo(){
        return cantDeEmpanadasVendidas * 15
    }

    method vender(cantidad) {
    cantDeEmpanadasVendidas += cantidad
    }
}



object gimenez {

    fondoParaSueldos = 300000

    method fondo(){
        return fondoParaSueldos
    }

    method pagarSueldo(cliente){
        fondoParaSueldos -= cliente.sueldo()
        cliente.cobrarSueldo()
    }

}

 