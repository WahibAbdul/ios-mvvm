//
//  HomeView.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @EnvironmentObject var viewModel: FotoViewModel
        
    var body: some View {
        NavigationView {
            Group{
                if viewModel.fotos.isEmpty {
                    ProgressView("Loading")
                }else {
                    ScrollView {
                        // Using LazyVGrid to load items when displayed for better performance.
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), content: {
                            ForEach(viewModel.fotos) { foto in
                                NavigationLink(destination: FotoViewer(foto: foto)) {
                                    KFImage(URL(string: foto.thumbnailUrl))
                                        .resizable()
                                        .scaledToFill()
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                            }
                            
                        })
                        .padding(12)
                    }
                }
            }            
                .navigationTitle("Fotos")
                .navigationBarTitleDisplayMode(.large)
                .task {
                    await viewModel.fetchFotos()
                }
        }
    }
}

#Preview {
    HomeView()
}
