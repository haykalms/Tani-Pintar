//
//  HorizontalListView.swift
//  Tani Pintar
//
//  Created by Haykal on 08/01/26.
//

import SwiftUI

struct HorizontalListView: View {
    let header : String
    var titles=[Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3, Constants.testTitleURL4, Constants.testTitleURL5]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title)
            
            ScrollView(.horizontal){
                LazyHStack {
                    ForEach(titles, id:\.self) {title in
                        AsyncImage(url: URL(string:title)){image in
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 13))
                        }placeholder: {
                            ProgressView()
                        }
                        .frame(width: 365, height: 445)
                    }
                }
            }
            .frame(height:230)
            .padding(10)
        }
    }
}

#Preview {
    HorizontalListView(header: Constants.videoPopulerString)
}
