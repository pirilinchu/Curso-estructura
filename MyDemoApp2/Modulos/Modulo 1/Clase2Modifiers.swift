//
//  Clase2.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 12/11/24.
//

// MARK: Script:
// Que son los modifiers? Metodos que modifican un View
// Retornan una copia de un View + el modifier aplicado
// Mostrar la libreria de modifiers
// Explicar modifiers de Text (font, multilineTextAlignment, lineLimit, bold, underline)
// Mostrar los modifiers de Layout con Circle (background, padding20, background, frame100
// Mostrar modifiers de Effects con Rectangle (cornerRadius20, opacity0.5, .shadow(color: Color.black, radius: 10, x: 10, y: 10))
// Mostrar mas modifiers de Effects con Ellipse (.stroke() .frame(width: 200, height: 150) .rotationEffect(.degrees(20))
// Image modifiers con systemImage: "star"
// overlay para combinar elementos
// Reto Button


// MARK: Slides:
// No slides

// MARK: Objetivos:
// Entender como aplicar modifiers para personalizar vistas
// Comprender como se comporta el frame de una vista

import SwiftUI

struct Clase2Antes: View {
    var body: some View {
        Text("Hello World!")
    }
}

#Preview {
    Clase2Despues()
}

struct Clase2Despues: View {
    var body: some View {
        // Explicar modifiers de Text (font, multilineTextAlignment, lineLimit, bold, underline)
        Text("Esta es una prueba de los modifiers con texto largo")
            .font(.largeTitle)
            .lineLimit(1)
            .multilineTextAlignment(.center)
            .bold()
            .underline()

        // Mostrar los modifiers de Layout con Circle (background, padding20, background, frame100
        Circle()
            .background(Color.green)
            .padding(20)
            .background(Color.red)
            .padding(40)
            .frame(width: 200, height: 200)

        // Mostrar modifiers de Effects con Rectangle (cornerRadius20, opacity0.5, .shadow(color: Color.black, radius: 10, x: 10, y: 10))
        Rectangle()
            .frame(width: 200, height: 200)
            .foregroundStyle(Color.yellow)
            .cornerRadius(20)
            .opacity(0.5)
            .shadow(radius: 10, x: 10, y: 10)
        

        // Mostrar mas modifiers de Effects con Ellipse (.stroke() .frame(width: 200, height: 150) .rotationEffect(.degrees(20))
        Ellipse()
            .stroke(lineWidth: 5)
            .foregroundStyle(Color.red)
            .frame(width: 200, height: 150)
            .rotationEffect(.degrees(30))
    }
}
