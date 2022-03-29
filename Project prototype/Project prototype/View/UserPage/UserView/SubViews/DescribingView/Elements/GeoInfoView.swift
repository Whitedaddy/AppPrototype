//
//  GeoInfoView.swift
//  Project prototype
//
//  Created by MacBook on 23.03.2022.
//

import SwiftUI

struct GeoInfoView: View {
    var body: some View {
        HStack {
            Image(systemName: "location.circle")
                .foregroundColor(.black)
                .font(.title)
            Text("0 km")
        }
        .foregroundColor(.gray)
    }
}

struct GeoInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GeoInfoView()
    }
}
