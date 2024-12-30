//
//  Clase4ScrollView.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

// MARK: SCRIPT
// Traer el card mas pequeño del reto, explicarlo brevemente y wrappearlo en un VStack
// Copiar 4 veces el contenido y mostrar como con un ViewBuilder se puede solucionar el chorizo de codigo
// Copiar varias veces hasta que se pierda el contenido y explicar el ScrollView
// Explicar el axis del ScrollView cambiar todo a horizontal y explicar que asi es como se crean los carouseles
// Reto agregar el card mediano a la lista con su funcion ViewBuilder (Estara en los recursos)

// MARK: Intro
// En esta clase aprenderas a utilizar el ScrollView en combinacion con los Stacks para dibujar Listas y Carruseles
// MARK: Outro
// Listo, ya sabes crear listas y carouseles. Ahora tengo una tarea para ti, te acuerdas del card mediano del reto anterior, traelo, conviertelo en una funcion ViewBuilder y agregalo dentro del ScrollView vertical

// MARK: Momentos
// Traer el card small, moverlo dentro de un VStack, copiarlo 3 veces
// Mostrar el problema de codigo saliendose de las manos, presentar la solucion (Mover a una funcion exclusiva del Card)
// Implementar la funcion y llevarla al VStack 3 veces
// Copiar y pegar 15 veces mostrar el desborde presentar ScrollView como solucion
// Agregar ScrollView y mostrar funcionamiento en el preview
// Mostrar cambio de eje (axes) vertical y horizontal (O en otras palabras un carousel)

import SwiftUI

struct Clase4Antes: View {

    @ViewBuilder
    func CardSmallView() -> some View {
        HStack {
            Text("Hello, World!")
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            Image(systemName: "heart")
                .foregroundStyle(Color.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
                CardSmallView()
            }
        }
    }
}

#Preview {
    Clase4Antes()
}

struct Clase4Despues: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
                SmallCardView()
            }
            .padding()
        }
    }

    @ViewBuilder
    func SmallCardView() -> some View {
        HStack {
            Text("Hello, World!")
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            Image(systemName: "heart")
                .foregroundStyle(Color.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }
}
