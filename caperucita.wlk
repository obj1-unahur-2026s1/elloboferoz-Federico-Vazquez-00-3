object caperucita {
    method peso() = 60 + canasta.peso()

    method perderManzana(){
        canasta.disminuirCantidad()
    }
}

object canasta {
    var cantidadManzanas = 6
    const pesoManzana = 0.2

    method peso() = pesoManzana * cantidadManzanas

    method disminuirCantidad(){
        cantidadManzanas -= 1
    }
}

object abuelita {
    method peso() = 50
}