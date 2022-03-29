//
//  TestApiRequest.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import Foundation
import Combine


class ImageDownloader {
    
    let apiKey = "26099283-48c3653394e25a69e75ca7763"
    let apiSearchRequest = "minimalism+wallpapers"
//    let ghostImage = Hit(id: 1, pageURL: "", tags: "Network troubles", webformatURL: "")
    var cancellables = Set<AnyCancellable>()
    
    func GetSingleSong (page: Int)
    {
        let apiURL = "https://pixabay.com/api/?key="+apiKey+"&q="+apiSearchRequest+"&page="+String(page)
        guard let requestUrl = URL(string: apiURL) else { return }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTaskPublisher(for: request)
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) -> Data  in
                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300
                else    { throw URLError(.badServerResponse) }
                if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
                   print(JSONString)
                }
                return data
            }
            .decode(type: SearchedImages.self, decoder: JSONDecoder())
            .sink { completion in
                print("Completion: \(completion)")
            } receiveValue: { [weak self] parsedsong in
                
            }
            .store(in: &cancellables)

    }
}
