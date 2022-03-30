//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                
                CirclePhoto(size: 0.09, avatar: Image(systemName: "plus.circle"), color: .purple, border: 2)
                
                ForEach((1...10), id: \.self) {_ in
                    CirclePhoto(size: 0.09, avatar: Image("ImagePlaceholder"), color: .purple, border: 3)
                        .padding(.vertical)
                }
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
