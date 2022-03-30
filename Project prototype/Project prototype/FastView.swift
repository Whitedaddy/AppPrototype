//
//  FastView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct FastView: View {
    let size: CGFloat
    let avatar: Image
    let color: Color
    let border: CGFloat
    
    var body: some View
    {
        ZStack
        {
            Circle()
                .fill(RadialGradient(colors: [.purple,.white], center: .center, startRadius: 0, endRadius: 100))
            avatar
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(color, lineWidth: border))
                .foregroundColor(.white)
        }
        .frame(width: Get_Height(h: size), height: Get_Height(h: size))
    }
}

struct FastView_Previews: PreviewProvider {
    static var previews: some View {
        FastView(size: 0.1, avatar: Image(systemName: "star"), color: .purple, border: 2)
    }
}
