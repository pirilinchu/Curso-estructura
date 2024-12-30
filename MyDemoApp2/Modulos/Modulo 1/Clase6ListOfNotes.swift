//
//  Clase6ListOfNotes.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

// MARK: SCRIPT
// Reorganizar un poco, llevar modelo a una carpeta
// Crear el CardView con un let card: NCard en otro archivo
// Recurso repo de github con esta estructura

// MARK: INTRO
// En esta clase aprenderas a crear una vista nueva y agregarle propiedades aplicando buenas practicas. Reorganizaremos nuestros archivos y crearemos la base para tu proyecto final.
// MARK: OUTRO
// Se veia dificil pero ya tienes una estructura limpia para ir construyendo tu proyecto. Creaste tus primeros Views desde lo mas simple como es un texto, hasta algo mucho mas complejo como una lista de Cards. Mas adelante agregaremos mas interaccion entre vista y usuario, para eso te veo en el siguiente modulo o clase?
// Crear proyecto
// Views
// Modifiers
// Stacks
// Lista
// MARK: MOMENTOS
// Momento 2: Resolver el reto con switch
// Momento 3: Crear carpeta Models y llevar el el modelo
// Momento 4: Explicacion de porque debemos Crear un NCardView
// Momento 5: Creacion del archivo NCardView con la propiedad card y agregar en el preview (usar comentarios)
// Momento 6: Mover las funciones y adaptarlas eliminando el parametro de entrada card
// Momento 7: Agregar el body
// Momento 8: Mejorar el preview utilizando un VStack
// Momento 9: Retar a crear el view CardsListView
// Momento 10: Crear la carpeta Views y Crear el componente

import SwiftUI

struct Clase6ListOfNotes: View {
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small),
    ]

    var body: some View {
        List {
            ForEach(cards) { card in
                NCardView(card: card)
                    .listRowInsets(.none)
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    Clase6ListOfNotes()
}

struct NCardView: View {
    let card: NCard

    var cardPrimaryColor: Color {
        Color.cyan.opacity(0.2)
    }

    var body: some View {
        switch card.type {
        case .small:
            CardSmallView()
        case .medium:
            CardMediumView()
        }
    }

    @ViewBuilder
    func FavoriteButton() -> some View {
        Image(systemName: "heart")
            .foregroundStyle(Color.red)
    }

    @ViewBuilder
    func CardSmallView() -> some View {
        HStack {
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(cardPrimaryColor)
                .cornerRadius(8)
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            FavoriteButton()
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }

    @ViewBuilder
    func CardMediumView() -> some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                FavoriteButton()
            }
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(cardPrimaryColor)
                .cornerRadius(8)
            Text(card.text)
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

    @ViewBuilder
    func CardLargeView() -> some View {
        ZStack {
            VStack {
                ZStack(alignment: .bottom) {
                    cardPrimaryColor
                    Text(card.title)
                        .font(.title2)
                        .lineLimit(2)
                        .cornerRadius(8)
                        .padding(8)
                }
                ZStack {
                    Color.clear
                    Text(card.text)
                        .font(.body)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .padding(8)
                }
            }
            VStack(alignment: .trailing) {
                HStack(alignment: .top) {
                    Spacer()
                    FavoriteButton()
                }
                Spacer()
            }
            .padding()
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .frame(height: 200)
    }
}

#Preview {
    VStack {
        NCardView(
            card:
                NCard(title: "Grocery Shopping List",
                      text: "Milk, Bread, Eggs, Cheese, Apples, Carrots, and a few spices.",
                      type: .small
                     )
        )
        NCardView(
            card:
                NCard(title: "Meeting with Marketing Team",
                      text: "Discuss Q1 goals, review social media strategy, and allocate budgets for paid advertising.",
                      type: .small
                     )
        )
        NCardView(
            card:
                NCard(title: "Exercise Routine",
                      text: "Monday: Chest and Triceps\nTuesday: Back and Biceps\nWednesday: Legs and Core\nThursday: Shoulders\nFriday: Cardio and Abs",
                      type: .medium
                     )
        )
        NCardView(
            card:
                NCard(title: "Reading List for the Month",
                      text: "1. 'Atomic Habits' by James Clear\n2. 'The Pragmatic Programmer'\n3. 'SwiftUI Essentials' by Apple\n4. 'Clean Code' by Robert C. Martin",
                      type: .medium
                     )
        )
        NCardView(
            card:
                NCard(title: "Project Goals: Mobile App Launch",
                      text: """
                      Key objectives:
                      1. Complete UI/UX design by end of month.
                      2. Integrate authentication and payment features.
                      3. Conduct usability testing with at least 20 participants.
                      4. Prepare marketing materials for launch, including screenshots and video previews.
                      """,
                      type: .medium
                     )
        )
    }
    .padding()
}


