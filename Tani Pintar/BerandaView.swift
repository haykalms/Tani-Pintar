//
//  BerandaView.swift
//  Tani Pintar
//
//  Created by Haykal on 08/01/26.
//

import SwiftUI

struct BerandaView: View {
    var heroTestTitle=Constants.testTitleURL
    let viewModel=ViewModel()
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical) {
                switch viewModel.homeStatus {
                case .notStarted:
                    EmptyView()
                case .fetching:
                    ProgressView()
                case .success:
                    Text("")
                case .failed(let error):
                    Text("Error: \(error)")
                }
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)){ image in
                        image
                            .resizable()
                            .scaledToFit()
                            .overlay{
                                LinearGradient(
                                    stops: [Gradient.Stop(color: .clear, location: 0.33),
                                            Gradient.Stop(color: .gradient, location: 1)],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.33)
                    
                    HStack{
                        Button{
                            
                        } label: {
                            Text(Constants.putarString)
                                .ghostButton()
                        }
                        Button{
                            
                        } label: {
                            Text(Constants.unduhString)
                                .ghostButton()
                        }
                    }
                    HorizontalListView(header: Constants.videoPopulerString)
                    HorizontalListView(header: Constants.videoTerbaruString)
                    HorizontalListView(header: Constants.peringkatTeratasString)
                    HorizontalListView(header: Constants.pilihanTaniPintarString)
                }
            }
        }
    }
}

#Preview {
    BerandaView()
}
