//
//  PosViewImage.swift
//  Project prototype
//
//  Created by MacBook on 01.04.2022.
//

import SwiftUI

struct PosViewImage: View {
    
    @StateObject var loader: SingleImageDownloader
    
    init(url: String) {
        _loader = StateObject(wrappedValue: SingleImageDownloader(url: url))
    }
    
    var body: some View {
        ZStack {
            if loader.isLoading {
                ProgressView()
            }
            else if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct PosViewImage_Previews: PreviewProvider {
    static var previews: some View {
        PosViewImage(url: "https://img.labirint.ru/rcimg/59d7e814df5e5e820fd7cdae2937a007/1920x1080/comments_pic/1643/0_de524198d42ca970bc5e05909142af1b_1477324223.jpg?1477324354")
    }
}
