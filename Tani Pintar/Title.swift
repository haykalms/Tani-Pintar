//
//  Title.swift
//  Tani Pintar
//
//  Created by Haykal on 09/01/26.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
    
    static var previewTitles = [
        Title(id: 1, title: "Swasembada Pangan", name: "Swasembada Pangan", overview: "Video tentang swasembada pangan di Nusantara", posterPath: Constants.testTitleURL),
        Title(id: 2, title: "Bisnis Tauge", name: "Bisnis Tauge", overview: "Merintis bisnis tauge premium", posterPath: Constants.testTitleURL2),
        Title(id: 3, title: "Bisnis Paprika", name: "Bisnis Paprika", overview: "Lulusan S2 yang menjadi petani paprika", posterPath: Constants.testTitleURL3),
        Title(id: 4, title: "Bisnis Domba", name: "Bisnis Domba", overview: "Pulang ke kampung untuk merintis bisnis peternakan domba", posterPath: Constants.testTitleURL4),
        Title(id: 5, title: "Petani Muda", name: "Petani Muda", overview: "Petani muda merintis bisnis pertanian", posterPath: Constants.testTitleURL5),
    ]
}
