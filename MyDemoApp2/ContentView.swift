//
//  ContentView.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 12/11/24.
//

import SwiftUI

struct ContentView: View {


    var body: some View {
        Text("Hello world!")
            .foregroundStyle(Color.blue)
            .padding()// Color
            .background(Color.red) // Fondo
            .padding()
            .background(Color.green)
            .frame(width: 200, height: 100)
            .rotationEffect(.degrees(30))
    }


}

#Preview {
    ContentView()
}
