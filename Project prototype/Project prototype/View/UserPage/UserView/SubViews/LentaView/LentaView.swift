//
//  LentaView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct LentaView: View {
    
    @ObservedObject var network = ImageDownloader()
    
    @State var page: Int = 2

    var body: some View {
        VStack {
            ForEach (network.bigImages.indices, id: \.self) {index in
                let image = network.bigImages[index]
                PostView(hit: image)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    .onAppear(perform: {
                        if index == network.bigImages.count-1 {
                            self.page += 1
//                            network.GetRegularImages(searh: "beautiful+nature", page: page, perPage: "10")
                        }
                    })
            }
        }
        .onAppear(perform: {network.GetRegularImages(searh: "beautiful+nature", page: page, perPage: "10")})
    }
}

struct LentaView_Previews: PreviewProvider {
    static var previews: some View {
        LentaView()
    }
}
