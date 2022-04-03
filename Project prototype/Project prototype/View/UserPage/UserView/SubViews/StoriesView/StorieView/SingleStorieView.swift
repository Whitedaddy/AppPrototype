//
//  SwiftUIView.swift
//  Project prototype
//
//  Created by MacBook on 03.04.2022.
//

import SwiftUI

struct SingleStorieView: View {
    
    var hit: SmallImage

    var body: some View {
        VStack {
            StorieCircleView(url: hit.previewURL)
            Text(hit.user)
                .font(.callout)
                .fixedSize(horizontal: false, vertical: false)
                .lineLimit(1)
        }
        .frame(width: Get_Width(w: 0.2), height: Get_Height(h: 0.15))
    }
}

struct SingleStorieView_Previews: PreviewProvider {
    static var previews: some View {
        SingleStorieView(hit: SmallImage(id: 1, previewURL: "https://img.labirint.ru/rcimg/59d7e814df5e5e820fd7cdae2937a007/1920x1080/comments_pic/1643/0_de524198d42ca970bc5e05909142af1b_1477324223.jpg?1477324354", user: "Hello"))
    }
}
