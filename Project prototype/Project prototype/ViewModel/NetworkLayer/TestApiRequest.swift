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
    let ghostImage = BigImage(id: 1, pageURL: "", tags: "Network troubles", webformatURL: "")
    var cancellables = Set<AnyCancellable>()
    
    @Published var bigImages: [BigImage] = []
    @Published var smallImages: [SmallImage] = []
    @Published var page: Int = 0

    
    func GetRegularImages (searh: String, page: Int, perPage: String)
    {
        let apiURL = "https://pixabay.com/api/?key="+apiKey+"&q="+searh+"&page="+String(page)+"&per_page="+perPage
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
            } receiveValue: { [weak self] parsedImages in
                self?.bigImages.append(contentsOf: parsedImages.hits)
                print(parsedImages.total)
            }
            .store(in: &cancellables)

    }
    
    func GetSmallImages (searh: String, page: String, perPage: String)
    {
        let apiURL = "https://pixabay.com/api/?key="+apiKey+"&q="+searh+"&page="+page+"&per_page="+perPage
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
            .decode(type: SmallImages.self, decoder: JSONDecoder())
            .sink { (_) in
                
            } receiveValue: { [weak self] littleImages in
                self?.smallImages = littleImages.hits
            }
            .store(in: &cancellables)

    }
}
