//
//  ViewModel.swift
//  Tani Pintar
//
//  Created by Haykal on 09/01/26.
//

import Foundation

@Observable
class ViewModel {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(underlyingError: Error)
    }
    private(set) var homeStatus: FetchStatus = .notStarted
}
