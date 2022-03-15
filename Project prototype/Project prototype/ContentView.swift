//
//  ContentView.swift
//  Project prototype
//
//  Created by MacBook on 15.03.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        VStack {
            TopView()
            
            
            
            Spacer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
