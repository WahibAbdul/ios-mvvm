//
//  Foto.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import Foundation

struct Foto: Codable, Identifiable {
    let albumId, id: Int
    let title: String
    let url, thumbnailUrl: String    
}
