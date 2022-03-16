//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 16.03.2022.
//

import SwiftUI

struct SubscribeButton: View {
    
    let gradient = Gradient(colors: [.blue,.purple,.red,.pink])
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
            .frame(width: Get_Width(w: 0.9), height: Get_Height(h: 0.1))
            .overlay(
                Text("Subscribe")
                    .foregroundColor(.white)
                    .font(.title))
    }
}

struct SubscribeButton_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeButton()
    }
}
