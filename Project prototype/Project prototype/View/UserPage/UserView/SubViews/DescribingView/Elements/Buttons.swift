//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 16.03.2022.
//

import SwiftUI

struct Buttons: View {
    
    let gradient = Gradient(colors: [Color("MyPurple"),.purple])
//    LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)

    
    var body: some View {
        HStack {
            Button(action: {}, label: {LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)})
                .frame(width: Get_Width(w: 0.35))
                .cornerRadius(15)
                .overlay(Text("Подписаться")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .light, design: .rounded)) )
            
            Button(action: {}, label: {LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)})
                .frame(width: Get_Height(h: 0.06))
                .cornerRadius(15)
                .mask(RoundedRectangle(cornerRadius: 15).strokeBorder(lineWidth: 3))
                .overlay(Image(systemName: "message")
                            .foregroundColor(.gray)
                            .font(.title))

        }
        .frame(height: Get_Height(h: 0.05))
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
