//
//  PostView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct PostView: View {
    
    @ObservedObject var network = ImageDownloader()
    var hit: BigImage
    
    var body: some View {
        ZStack {
            Image("ImagePlaceholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                VStack {
                    HStack {
                        CirclePhoto(size: 0.1, avatar: Image(systemName: "person.crop.circle.fill"), color: .white, border: 3)
                        Text("Понравилось \(hit.id) людям")
                        Spacer()
                    }
                    Text(hit.tags )
                        .padding(.top, 0)
                }
                .background(RoundedRectangle(cornerRadius: 3)
                                .fill(Color.gray.opacity(0.3)))
            }
        }
        .frame(width: Get_Width(w: 0.95), height: Get_Width(w: 1))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(hit: BigImage(id: 0, pageURL: "", tags: ""))
    }
}
