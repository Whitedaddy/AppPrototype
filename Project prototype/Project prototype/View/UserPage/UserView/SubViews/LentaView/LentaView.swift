//
//  LentaView.swift
//  Project prototype
//
//  Created by MacBook on 30.03.2022.
//

import SwiftUI

struct LentaView: View {
    var body: some View {
        VStack {
            ForEach ((1...10), id: \.self) {text in
                PostView(like: nil, subscription: String(text))
            }
        }
    }
}

struct LentaView_Previews: PreviewProvider {
    static var previews: some View {
        LentaView()
    }
}
