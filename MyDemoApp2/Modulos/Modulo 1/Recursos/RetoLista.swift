//
//  Clase5_RetoLista.swift
//  SwiftUICourse
//
//  Created by Santiago Mendoza on 13/11/24.
//

import SwiftUI

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
}

enum NCardType {
    case small
    case medium
}

struct RetoLista: View {
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
                    MediumCardView(card: card)
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
    func MediumCardView(card: NCard) -> some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
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
        .listRowInsets(.none)
        .listRowSeparator(.hidden)
    }

}

#Preview {
    RetoLista()
}
