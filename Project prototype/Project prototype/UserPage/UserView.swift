//
//  ContentView.swift
//  Project prototype
//
//  Created by MacBook on 15.03.2022.
//

import SwiftUI

struct UserView: View {
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("SubBackground"))
                    .overlay(TopView())
                    .padding(0)
            }
            .frame(width:Get_Width(w: 0.95), height: Get_Height(h: 0.3))
            .ignoresSafeArea()
            .padding()
            
            Spacer()
        }
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
