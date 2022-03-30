//
//  TestApiRequest.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import Foundation
import Combine


class ImageDownloader: ObservableObject {
    
    let apiKey = "26099283-48c3653394e25a69e75ca7763"
    let ghostImage = BigImage(id: 1, pageURL: "", tags: "Network troubles")
    var cancellables = Set<AnyCancellable>()
    
    @Published var images: [BigImage] = []
    
    func GetImages (searh: String, page: Int)
    {
        let apiURL = "https://pixabay.com/api/?key="+apiKey+"&q="+searh+"&page="+String(page)
        guard let requestUrl = URL(string: apiURL) else { return }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTaskPublisher(for: request)
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) -> Data  in
                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300
                else    { throw URLError(.badServerResponse) }
                return data
            }
            .decode(type: BigImages.self, decoder: JSONDecoder())
            .sink { completion in
                print("Completion: \(completion)")
            } receiveValue: { [weak self] parsedsongs in
                self?.images = parsedsongs.hits
            }
            .store(in: &cancellables)

    }
}
