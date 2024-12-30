//
//  Clase1Antes.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 12/11/24.
//

// MARK: Script:
// Explicar la pantalla @main, los assets y el ContentView
// Que es un View? Protocolo que permite crear interfaces
// Mostrar los Views mas comunes Text("Hello, World!"), Image(systemName: "house"), Circle()
// Explicar como usar los assets con imagen de ejemplo
// Mostrar la libreria de Xcode para imagenes
// Mostrar la libreria de Xcode para views
// Mostrar que se puede hacer con el preview
// Mostrar los modifiers: metodos que modifican la vista(Nel)
//

// MARK: Slides:
// bullet points con imagenes que cambian segun el bullet en el que estamos
// - Crear un proyecto
// - Entender lo que es un View
// - Renderizar imagenes desde los Assets
// - Utilizar el Preview

import SwiftUI

struct Clase1Antes: View {

    var body: some View {
        Text("Hello world!")
    }
}

#Preview {
    Clase1Despues()
}

struct Clase1Despues: View {
    var body: some View {
        Text("Hello world!")
        Circle()
        Image(systemName: "house")
        Image("exampleImage")
//            .foregroundStyle(Color.red)
//            .padding()
//            .background(Color.green)
//            .rotationEffect(.degrees(30))
    }
}
