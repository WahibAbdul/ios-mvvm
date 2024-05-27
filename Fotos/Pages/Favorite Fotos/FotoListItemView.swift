//
//  FotoListItemView.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/27/24.
//

import SwiftUI
import Kingfisher

struct FotoListItemView: View {
    // MARK: - Properties
    let foto: Foto
    let isFavorite: Bool
    let onFavoriteToggle: () -> Void
    
    // MARK: - View
    var body: some View {
        HStack(alignment: .top) {
            // Image
            KFImage(
                URL(string: foto.thumbnailUrl))
            .resizable()
            .scaledToFill()
            .frame(width: 90, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.trailing, 8)
            // Title
            Text(foto.title)
                .font(.title3)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.primary)
                .fontWeight(.medium)
                .lineLimit(3)
            Spacer()
            // Favorite Button
            Button(action: {
                onFavoriteToggle()
            }) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
            }
        }
    }
}
