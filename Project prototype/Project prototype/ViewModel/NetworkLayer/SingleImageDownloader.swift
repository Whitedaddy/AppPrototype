//
//  SingleImageDownloader.swift
//  Project prototype
//
//  Created by MacBook on 01.04.2022.
//

import Foundation
import SwiftUI
import Combine


class SingleImageDownloader: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    var cancellables = Set<AnyCancellable>()
    
    let urlString: String
    
    init(url: String) {
        urlString = url
        dowmloadImage()
    }
    
    func dowmloadImage() {
        isLoading = true
        guard let url = URL(string: urlString) else {
            isLoading = false
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data)}
            .receive(on: DispatchQueue.main)
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedimage) in
                self?.image = returnedimage
            }
            .store(in: &cancellables)

    }
}
