//
//  TabView.swift
//  Project prototype
//
//  Created by MacBook on 07.04.2022.
//

import SwiftUI

struct TabView: View {
    
    let tabs = ["house.fill","livephoto","gear.circle.fill"]

    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) {image in
                Button(action: {})
                {   Image(systemName: image)
                        .resizable()
                        .frame(width: Get_Height(h: 0.05), height: Get_Height(h: 0.05))
                        .foregroundColor(.black)
                }
                if image != tabs.last {Spacer()}
            }
        }
        .padding()
        .background(Color("MyPurple"))
        .cornerRadius(20)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
