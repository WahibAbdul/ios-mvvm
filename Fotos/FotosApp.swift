//
//  FotosApp.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/25/24.
//

import SwiftUI

@main
struct FotosApp: App {
    
    @StateObject private var viewModel = FotoViewModel(repository: FotoRepository())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)                
        }
    }
}
