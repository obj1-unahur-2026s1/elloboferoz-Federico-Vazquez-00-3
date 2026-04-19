object feroz {
  var peso = 10

  method peso() = peso

  method estaSaludable(){
    return peso.between(20, 150)
  }

  method aumentarDePeso(cantidad){
    peso += cantidad
  }

  method disminuirDePeso(cantidad){
    peso -= cantidad
  }

  method sufrirUnaCrisis(){
    peso = 10
  }

  method comer(comida){
    self.aumentarDePeso(comida.peso() * 0.1)
  }

  method correr(){
    self.disminuirDePeso(1)
  }
}

object cazador {
    method peso() = 70 + escopeta.peso()

    method dispararAFeroz(){
        if(escopeta.estaCargada()){
            escopeta.disparar()
            feroz.sufrirUnaCrisis()
        }
    }

    method cargarEscopeta(){
        escopeta.recargar()
    }
}

object escopeta {
    method peso() = 25
    var carga = false

    method estaCargada() = carga

    method recargar(){
        carga = true
    }

    method disparar(){
        carga = false
    }
}