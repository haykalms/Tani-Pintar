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
            Tab(Constants.berandaString, systemImage: Constants.berandaIconString){
                Text(Constants.berandaString)
            }
            Tab(Constants.mendatangString, systemImage: Constants.mendatangIconString){
                Text(Constants.mendatangString)
            }
            Tab(Constants.pencarianString, systemImage: Constants.pencarianIconString){
                Text(Constants.pencarianString)
            }
            Tab(Constants.unduhanString, systemImage: Constants.unduhanIconString){
                Text(Constants.unduhanString)
            }
        }
    }
}

#Preview {
    ContentView()
}
