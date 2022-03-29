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
                ForEach((1...10), id: \.self) {_ in
                    CirclePhoto(size: 0.1, avatar: Image(systemName: "star"))
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
