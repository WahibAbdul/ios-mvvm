//
//  FotoViewer.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import SwiftUI
import Kingfisher

struct FotoViewer: View {
    @EnvironmentObject var viewModel: FotoViewModel
    
    // MARK: - Properties
    let foto: Foto
    
    // MARK: - Body
    var body: some View {
        VStack{
            KFImage(URL(string: foto.url))
                .resizable()
                .scaledToFill()
        }
        .navigationTitle("Foto")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(){
                Button(action: {
                    viewModel.toggleFavorite(foto: foto)
                }) {
                    Image(systemName: viewModel.isFavorte(foto: foto) ? "heart.fill" : "heart")
                }
            }
        }        
    }
}

#Preview {
    FotoViewer(foto: Foto(albumId: 1,
                          id: 1,
                          title: "accusamus beatae ad facilis cum similique qui sunt",
                          url: "https://via.placeholder.com/600/92c952",
                          thumbnailUrl: "https://via.placeholder.com/150/92c952"))
}
