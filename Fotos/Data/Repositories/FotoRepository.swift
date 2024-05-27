//
//  FotoRepository.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import Foundation

/// Repository can be used to fetch data from api & local storage according
class FotoRepository {
    private let apiService = FotoApiService()
    func fetchFotos() async throws -> [Foto] {
        return try await apiService.fetchFotos()
    }
}
