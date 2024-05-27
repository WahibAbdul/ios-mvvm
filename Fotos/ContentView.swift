//
//  ContentView.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Home")
                }
            FavoriteFotosView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }
        }
    }
}

#Preview {
    ContentView()
}
