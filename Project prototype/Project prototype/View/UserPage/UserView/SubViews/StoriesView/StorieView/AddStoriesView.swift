//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 03.04.2022.
//

import SwiftUI

struct AddStoriesView: View {
    
    let color = Color("MyPurple")
    let image = Image(systemName: "plus.circle")

    var body: some View {
        VStack {
            Button(action: { }) {
                CirclePhoto(size: 0.09, avatar: image, color: color, border: 2)
            }
            Text("Добавить")
                .font(.callout)
        }
        .frame(width: Get_Width(w: 0.2), height: Get_Height(h: 0.15))
    }
}

struct AddStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        AddStoriesView()
    }
}
