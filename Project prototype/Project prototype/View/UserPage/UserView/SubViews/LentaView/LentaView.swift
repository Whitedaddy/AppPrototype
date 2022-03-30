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
            ForEach (network.images) {text in
                PostView(hit: text)
            }
        }
        .onAppear(perform: {network.GetImages(searh: "flowers", page: 1)})
    }
}

struct LentaView_Previews: PreviewProvider {
    static var previews: some View {
        LentaView()
    }
}
