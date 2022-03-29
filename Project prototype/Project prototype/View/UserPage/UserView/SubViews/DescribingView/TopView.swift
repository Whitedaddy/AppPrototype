//
//  File.swift
//  Project prototype
//
//  Created by MacBook on 16.03.2022.
//

import SwiftUI

struct TopView: View {
 
    var body: some View {
        ZStack {
            VStack {
                Image("DefaultBackground")
                    .resizable()
                    .frame(width:Get_Width(w: 0.95), height: Get_Height(h: 0.13))
                    .mask(RoundedRectangle(cornerRadius: 25))
                Spacer()
            }
            VStack {
                CirclePhoto(size: 0.12, avatar: Image(systemName: "person.crop.circle.fill"))
                HStack {
                    GeoInfoView()
                    NameAndSubsView()
                    RatingView()
                }
                Buttons()
            }
        }
        .padding(0)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

