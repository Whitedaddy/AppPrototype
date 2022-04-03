//
//  SingleStorie.swift
//  Project prototype
//
//  Created by MacBook on 03.04.2022.
//

import SwiftUI

struct StorieCircleView: View {
    
    @StateObject var loader: SingleImageDownloader
    
    let color = Color("MyPurple")
    let border: CGFloat = 3
   
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
                    .clipShape(Circle())
                    .overlay(Circle().stroke(color, lineWidth: border))
            }
        }
    }
}

struct StorieCircleView_Previews: PreviewProvider {
    static var previews: some View {
        StorieCircleView(url: "https://img.labirint.ru/rcimg/59d7e814df5e5e820fd7cdae2937a007/1920x1080/comments_pic/1643/0_de524198d42ca970bc5e05909142af1b_1477324223.jpg?1477324354")
    }
}
