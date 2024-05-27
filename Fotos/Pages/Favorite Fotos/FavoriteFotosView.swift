//
//  FavoriteFotosView.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import SwiftUI
import Kingfisher

struct FavoriteFotosView: View {
    @EnvironmentObject var viewModel: FotoViewModel
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.favorites.isEmpty {
                    Text("No Favorites")
                } else {
                    ScrollView{
                        // Using LazyVStack to load items when displayed for better performance.
                        LazyVStack(spacing: 12, content: {
                            ForEach(viewModel.favorites) { foto in
                                NavigationLink {
                                    FotoViewer(foto: foto)
                                } label: {
                                    FotoListItemView(foto: foto, isFavorite: true) {
                                        withAnimation {                                            
                                            viewModel.toggleFavorite(foto: foto)
                                        }
                                    }
                                }

                            }
                        })
                    }
                    .padding(12)
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
