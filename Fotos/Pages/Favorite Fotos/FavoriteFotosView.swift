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
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), content: {
                            ForEach(viewModel.favorites) { foto in
                                KFImage(
                                    URL(string: foto.thumbnailUrl))
                                .resizable()
                                .scaledToFit()
                            }
                        })
                        .padding(.horizontal, 12)
                    }
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FavoriteFotosView()
}
