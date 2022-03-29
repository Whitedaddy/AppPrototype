//
//  RatingView.swift
//  Project prototype
//
//  Created by MacBook on 23.03.2022.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .foregroundColor(.black)
                .font(.title)
            Text("-5.0")
                .font(.headline)
        }
        .foregroundColor(.gray)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
