//
//  PostView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct PostView: View {
    
    var hit: BigImage
    
    var body: some View {
        ZStack {
            PosViewImage(url: hit.webformatURL)
                
            VStack {
                Spacer()
                VStack {
                    HStack {
                        CirclePhoto(size: 0.1, avatar: Image(systemName: "person.crop.circle.fill"), color: .white, border: 3)
                        Text("Понравилось \(hit.id) людям")
                            .foregroundColor(Color.white)
                            .shadow(color: Color("MyPurple"), radius: 5, x: 5, y: 5)
                        Spacer()
                    }
                    Text(hit.tags )
                        .padding(.vertical, 0)
                        .foregroundColor(Color.white)
                        .shadow(color: Color("MyPurple"), radius: 5, x: 5, y: 5)
                }
                .background(RoundedRectangle(cornerRadius: 30)
                                .fill(Color.gray.opacity(0.6))
                                )
            }
        }
        .frame(width: Get_Width(w: 0.95), height: Get_Width(w: 1))
    }
}



struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(hit: BigImage(id: 0, pageURL: "", tags: "hello", webformatURL: "https://pixabay.com/get/g7e8ebf4ac14fe4a9953f99c0e0d1e0458ebff544847ac7c19f57e01f23290d85f10454c7a26c7174587d7ea9897f3673_640.jpg"))
    }
}
