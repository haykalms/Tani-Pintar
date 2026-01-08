//
//  ContentView.swift
//  Tani Pintar
//
//  Created by Haykal on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Beranda", systemImage: "house"){
                Text("Beranda")
            }
            Tab("Mendatang", systemImage: "play.circle"){
                Text("Mendatang")
            }
            Tab("Pencarian", systemImage: "magnifyingglass"){
                Text("Pencarian")
            }
            Tab("Unduhan", systemImage: "arrow.down.to.line"){
                Text("Unduhan")
            }
        }
    }
}

#Preview {
    ContentView()
}
