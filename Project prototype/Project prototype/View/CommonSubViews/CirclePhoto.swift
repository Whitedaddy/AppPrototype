//
//  CirclePhoto.swift
//  Project prototype
//
//  Created by MacBook on 23.03.2022.
//

import SwiftUI


struct CirclePhoto: View
{
    let size: CGFloat
    var avatar: Image
    var body: some View
    {
        ZStack
        {
            Circle()
                .fill(RadialGradient(colors: [.purple,.white], center: .center, startRadius: 0, endRadius: 100))
            avatar
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.purple, lineWidth: 1))
                .foregroundColor(.white)
        }
        .frame(width: Get_Height(h: size), height: Get_Height(h: size))
    }
}

struct CirclePhoto_Previews: PreviewProvider {
    static var previews: some View {
        CirclePhoto(size: 0.1, avatar: Image(systemName: "star"))
    }
}