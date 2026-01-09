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
}
