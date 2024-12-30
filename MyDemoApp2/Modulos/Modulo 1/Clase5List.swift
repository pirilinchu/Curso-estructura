//
//  Clase5List.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

// MARK: SCRIPT
// Explicar List vs ScrollView with VStack
// Explicar las diferencias y la lista por default.
// Comentar que las listas se usan asi porque Apple quiere comentando las cards
// Explicar .listStyle(.plain) y el
// .listRowSeparator(.hidden)
// Explicar el ForEach (0..<10) { _ in
// Agregar parametros de entrada a los viewBuilders
// Crear modelo
// Reto: Adaptar el card mediano y crear el Card Grande

// MARK: Momentos
// Cambiar ScrollView por List y mostrar las diferencias
// Quitar estilo de lista
// Explicar que para que una lista sea funcional hay que agregar un modelo, utilizar un array e iterarlo con un forEach y pintar cada card en funcion a nuestro set de datos
// Crear modelo
// Agregar ForEach con Identifiable
// Agregar parametro de entrada en SmallCardView
// Pedirle que pause el video y adapte el MediumCardView

// MARK: Intro
// En esta clase aprenderas a crear una lista completa, renderizando una coleccion de datos con la combinacion de modelos y for loops.
// MARK: Outro
// En esta clase aprendiste a combinar conceptos mas avanzados de Swift con Views para lograr una Lista de cards. Ahora te reto crear una tercera version del card llamada CardLargeView y agregarla a la lista.

import SwiftUI

struct Clase5Antes: View {
    var body: some View {
        List {
            SmallCardView()
            SmallCardView()
            SmallCardView()
            MediumCardView()
            MediumCardView()
            SmallCardView()
            MediumCardView()
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

    @ViewBuilder
    func MediumCardView() -> some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            Text("Hello, World!")
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }
}

#Preview {
    Clase5Despues()
}

struct Clase5Despues: View {
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small),
    ]

    var body: some View {
        List {
            ForEach(cards) { card in
                switch card.type {
                case .small:
                    SmallCardView(card: card)
                case .medium:
                    MediumCardView()
                }
            }
        }
        .listStyle(.plain)
    }

    @ViewBuilder
    func SmallCardView(card: NCard) -> some View {
        HStack {
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
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
        .listRowInsets(.none)
        .listRowSeparator(.hidden)
    }

    @ViewBuilder
    func MediumCardView() -> some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            Text("Hello, World!")
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowInsets(.none)
        .listRowSeparator(.hidden)
    }

}
