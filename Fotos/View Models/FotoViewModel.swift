//
//  FotoViewModel.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import Combine
import Foundation

class FotoViewModel: BaseViewModel {
    @Published var fotos: [Foto] = []
    @Published var favorites: [Foto] = []
    
    let repository: FotoRepository
    
    init(repository: FotoRepository) {
        self.repository = repository
    }
    
    func fetchFotos() async {
        if !fotos.isEmpty { return }
        defer { toggleLoading(value: false) }
        do {
            toggleLoading(value: true)
            let data = try await repository.fetchFotos()
            DispatchQueue.main.async { self.fotos = data }
        }catch {
            setErrorMessage(message: "Unable to load data!")
        }
    }
    
    func isFavorte(foto: Foto) -> Bool {
        return favorites.contains { obj in
            foto.id == obj.id
        }
    }
    
    func toggleFavorite(foto: Foto) {
        return isFavorte(foto: foto) ? removeFromFavorites(foto: foto) : addToFavorites(foto: foto)
    }
    
    func addToFavorites(foto: Foto) {
        favorites.append(foto)
    }
    
    func removeFromFavorites(foto: Foto) {
        favorites.removeAll { obj in
            obj.id == foto.id
        }
    }
    
}
