//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import SwiftUI

struct StoriesView: View {
    
    @ObservedObject var network = ImageDownloader()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                
                AddStoriesView()
                
                ForEach((network.smallImages), id: \.self) {smallImage in
                    SingleStorieView(hit: smallImage)
                }
            }
        }
        .onAppear(perform: {network.GetSmallImages(searh: "minimalism", page: "1", perPage: "10")})
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
