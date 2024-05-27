//
//  FotoApiService.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import Foundation

class FotoApiService {
    func fetchFotos() async throws -> [Foto] {
        let url = URL(string: "http://jsonplaceholder.typicode.com/photos")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Foto].self, from: data)
    }
}
