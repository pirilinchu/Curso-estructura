//
//  Clase2.5.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 25/11/24.
//

// MARK: Momentos
// Imagen para cargar icono "star" Libreria de iconos y Color amarillo
// Cambiar tamaño como Text
// Cambiar tamaño como Image
// Subir image a los assets
// Dibujar image y modificar su tamaño
// Explicar diferencia entre Star y Logo en frame

// MARK: Intro
// Vas a aprender como dibujar iconos de sistema, renderizar imagenes propias y personalizarlas con modifiers de Imagenes

// MARK: Outro
// Ahora sabes que sabes como utilizar las imagenes en SwiftUI te animo a que utilices un icono para la version deshabilitada de tu boton

import SwiftUI

struct Clase2_5: View {
    var body: some View {
        Image(systemName: "star")
            .foregroundStyle(Color.yellow)
            .font(.system(size: 100))
            .bold()
        Image(systemName: "star")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 100)
            .foregroundStyle(Color.yellow)
        Image("exampleImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    Clase2_5()
}
