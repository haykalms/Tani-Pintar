//
//  constants.swift
//  Tani Pintar
//
//  Created by Haykal on 08/01/26.
//

import Foundation
import SwiftUI

struct Constants {
    static let berandaString="Beranda"
    static let mendatangString="Mendatang"
    static let pencarianString="Pencarian"
    static let unduhanString="Unduhan"
    static let putarString="Putar"
    static let unduhString="Unduh"
    static let videoPopulerString="  Video Populer"
    static let videoTerbaruString="  Video Terbaru"
    static let peringkatTeratasString="  Peringkat Teratas"
    static let pilihanTaniPintarString="  Pilihan Tani Pintar"
    
    static let berandaIconString="house"
    static let mendatangIconString="play.circle"
    static let pencarianIconString="magnifyingglass"
    static let unduhanIconString="arrow.down.to.line"
    
    static let testTitleURL="https://img.youtube.com/vi/PllU6SK0III/maxresdefault.jpg"
    static let testTitleURL2="https://img.youtube.com/vi/iVrCLYZfJPE/maxresdefault.jpg"
    static let testTitleURL3="https://img.youtube.com/vi/XTFxsmhApK8/maxresdefault.jpg"
    static let testTitleURL4="https://img.youtube.com/vi/jSRyvIvcjIA/maxresdefault.jpg"
    static let testTitleURL5="https://img.youtube.com/vi/krgsiXqA8-o/maxresdefault.jpg"
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background{
                RoundedRectangle(cornerRadius: 19, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 3)
            }
    }
}
