//
//  File.swift
//  Project prototype
//
//  Created by MacBook on 16.03.2022.
//

import SwiftUI

struct TopView: View {

    let gradient = Gradient(colors: [.black,.white])

    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            VStack{
                Spacer()
                ZStack {
                    Circle()
                        .fill(Color.gray)
                    HStack {
                        Text("Folowers")
                            .padding(.leading, 20)
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 38))
                            .padding(.trailing, 20)
                    }
                }
                .frame(height: Get_Height(h: 0.15))
                
            }
        }
        .ignoresSafeArea()
        .frame(height: Get_Height(h: 0.3))
    }
}
