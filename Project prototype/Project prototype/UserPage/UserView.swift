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
            TopView()
            SubscribeButton()
                .padding(.top, 20)
            
            Spacer()
        }
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
