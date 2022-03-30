//
//  ContentView.swift
//  Project prototype
//
//  Created by MacBook on 15.03.2022.
//

import SwiftUI

struct UserView: View {
    
    @ObservedObject var networkCall = ImageDownloader()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("SubBackground"))
                        .overlay(TopView())
                        .padding(0)
                }
                .frame(width:Get_Width(w: 0.95), height: Get_Height(h: 0.3))
                .ignoresSafeArea()
                .padding(.top)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("SubBackground"))
                        .overlay(StoriesView())
                        .padding(0)
                }
                .frame(width:Get_Width(w: 0.95), height: Get_Height(h: 0.12))
                .ignoresSafeArea()
                .padding(.top, 5)
                
               LentaView()
            }
        }
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
