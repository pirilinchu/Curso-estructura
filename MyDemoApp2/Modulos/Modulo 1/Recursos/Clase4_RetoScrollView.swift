//
//  Clase4_RetoScrollView.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

import SwiftUI

struct Clase4_RetoScrollView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
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
    Clase4_RetoScrollView()
}
