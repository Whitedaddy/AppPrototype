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
    let avatar: Image
    let color: Color
    let border: CGFloat
    
    var body: some View
    {
        ZStack
        {
            avatar
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(color, lineWidth: border))
                .foregroundColor(color)
        }
        .frame(width: Get_Height(h: size), height: Get_Height(h: size))
    }
}

struct CirclePhoto_Previews: PreviewProvider {
    static var previews: some View {
        CirclePhoto(size: 0.1, avatar: Image(systemName: "plus.circle"), color: Color("MyPurple"), border: 2)
    }
}
