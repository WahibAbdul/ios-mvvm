//
//  BaseViewModel.swift
//  Fotos
//
//  Created by Abdul Wahib on 5/27/24.
//

import Foundation

class BaseViewModel: ObservableObject {
    @Published private var loading = false
    @Published private var errorMessage: String?
    
    func toggleLoading(value: Bool) {
        DispatchQueue.main.async {
            self.loading = value
        }
    }
    
    func setErrorMessage(message: String) {
        DispatchQueue.main.async {
            self.errorMessage = message
        }
    }
    
    func isLoading() -> Bool {
        return loading
    }
    
    func getErrorMessage() -> String? {
        return errorMessage
    }
}
