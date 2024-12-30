//
//  Clase 3 Stacks.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

// MARK: SCRIPT
// Explicar los stacks con slides
// Partir de una estructura conocida

// Explicar el VStack implicito, cambiar el alignment y luego el spacing
// Introducir Spacer()
// Cambiar a HStack, agregar background, height al ultimo elemento y cambiar el alignment
// Cambiar a ZStack, cambiar por figuras cada vez mas pequeñas y de distintos colores
// Juntar todos
// Reto crear card
// Dentro de los recursos estara mi solucion

// MARK: Slides
// Stacks
// Slide del reto

// MARK: Intro:
// Aprender a usar Stacks para combinar diferentes views y crear layouts complejos
// MARK: Outro:
// Muy bien, ya sabes como combinar elementos con la ayuda de Stacks. Te reto a crear el primer card para tu proyecto. Recuerda que el codigo de mi solucion esta en los recursos de esta clase

// MARK: Momentos:
// Explicar VStack con Text
// Cambiar alineacion de componentes, cambiar spacing
// Cambiar frame y agregar spacer
// Volver al VStack simple y cambiar a HStack
// Explicar el alignment modificando el frame
// Borrar frame y mostrar el spacing, y el Spacer
// Volver a la version base del HStack y cambiar por ZStack
// Usar figuras una por una
// Cambiar el alignment
// Combinar


import SwiftUI

struct Clase3Antes: View {
    var body: some View {
        VStack {
            Text("Nunca")
            Text("pares")
            Spacer()
            Text("de")
            Text("aprender")
        }
    }
}

#Preview {
    Clase3Antes()
}

struct Clase3Despues: View {

    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("Hola")
                Text("Mundo")
                Text("Esta")
                Spacer()
                Text("Es")
                Text("Una")
                Text("Prueba")
            }
            .frame(height: 400)
            HStack(alignment: .center) {
                Text("Hola")
                Text("Mundo")
                Text("Esta")
                Text("Es")
                Text("Una")
                Text("Prueba")
                    .frame(height: 100)
            }
            .background(Color.red)
            ZStack(alignment: .center) {
                Color.green
                Circle()
                Rectangle()
                    .frame(width: 200, height: 100)
                    .foregroundStyle(Color.yellow)
                Text("Prueba")
            }
            ZStack(alignment: .center) {
                Color.green
                Circle()
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundStyle(Color.yellow)
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.orange)
                }
                VStack {
                    Text("Esto es una prueba")
                    Text("de Stacks")
                }
            }
        }
    }

}
