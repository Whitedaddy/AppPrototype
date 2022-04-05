//
//  LentaView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct LentaView: View {
    
    @ObservedObject var network = ImageDownloader()
    

    var body: some View {
        VStack {
            ForEach (network.bigImages.indices, id: \.self) {index in
                let image = network.bigImages[index]
                PostView(hit: image)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
            }
            if ((network.bigImages.count - 10*network.page) == 0) {
                ProgressView()
                    .padding(.vertical)
                    .onAppear(perform: {
                        print("New data")
                        if !network.bigImages.isEmpty {
                            network.GetRegularImages(searh: "beautiful+nature", page: network.page, perPage: "10")
                        }
                    })
            }
            else {
                GeometryReader {reader -> Color in
                    let minY = reader.frame(in: .global).minY
                    let height = Get_Height(h: 0.77)
                    
                    if !network.bigImages.isEmpty && minY < height {
                        print("end here")
                        network.page += 1
                    }
                    return Color.clear
                }
                .frame(width: 5, height: 5)
            }
        }
        .onAppear(perform: {network.GetRegularImages(searh: "beautiful+nature", page: network.page, perPage: "10")})
    }
}

struct LentaView_Previews: PreviewProvider {
    static var previews: some View {
        LentaView()
    }
}
