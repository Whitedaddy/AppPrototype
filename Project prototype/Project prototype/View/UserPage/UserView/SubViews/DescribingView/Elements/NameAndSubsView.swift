//
//  NameAndSubsView.swift
//  Project prototype
//
//  Created by MacBook on 23.03.2022.
//

import SwiftUI

struct NameAndSubsView: View {
    var body: some View {
        VStack {
            Text("Дмитрий Приемный")
                .font(.system(size: 15, weight: .bold, design: .monospaced))
                .foregroundColor(.black)
            Text("-999.9к")
            Text("подписчиков")
        }
        .foregroundColor(.gray)
    }
    
}

struct NameAndSubsView_Previews: PreviewProvider {
    static var previews: some View {
        NameAndSubsView()
    }
}
