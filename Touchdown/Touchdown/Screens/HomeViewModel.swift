//
//  HomeViewModel.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 05/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    // MARK: - Properties
    @Published private(set) var players: [Player] = []
    @Published private(set) var categories: [Category] = []
    @Published private(set) var products: [Product] = []
    @Published private(set) var brands: [Brand] = []
    @Published private(set) var isLoading: Bool = true
    @Published private(set) var errorMessage: String?
    private let dispatchGroup = DispatchGroup()
    
    // MARK: - UseCases
    private let homeUseCase: HomeUseCaseProtocol
    
    // MARK: - Initializer
    init(
        homeUseCase: HomeUseCaseProtocol = HomeUseCase()
    ) {
        self.homeUseCase = homeUseCase
        loadData()
    }
    
    // MARK: - Methods
    func loadData() {
        isLoading = true
        
        getCategories()
        getPlayers()
        getProducts()
        getBrands()
        
        dispatchGroup.notify(queue: .main) { [weak self] in
            guard let self else { return }
            self.isLoading = false
        }
    }
    
    // MARK: - Private Methods
    private func getCategories() {
        dispatchGroup.enter()
        
        homeUseCase.getCategories { [weak self] response in
            guard let self else { return }
            
            switch response {
            case .success(let response):
                self.categories = response
            case .failure(let message):
                self.errorMessage = message
            }
            
            self.dispatchGroup.leave()
        }
    }

    private func getPlayers() {
        dispatchGroup.enter()
        
        homeUseCase.getPlayers { [weak self] response in
            guard let self else { return }
            
            switch response {
            case .success(let response):
                self.players = response
            case .failure(let message):
                self.errorMessage = message
            }
            
            self.dispatchGroup.leave()
        }
    }
    
    private func getProducts() {
        dispatchGroup.enter()
        
        homeUseCase.getProducts { [weak self] response in
            guard let self else { return }
            
            switch response {
            case .success(let response):
                self.products = response
            case .failure(let message):
                self.errorMessage = message
            }
            
            self.dispatchGroup.leave()
        }
    }
    
    private func getBrands() {
        dispatchGroup.enter()
        
        homeUseCase.getBrands { [weak self] response in
            guard let self else { return }
            
            switch response {
            case .success(let response):
                self.brands = response
            case .failure(let message):
                self.errorMessage = message
            }
            
            self.dispatchGroup.leave()
        }
    }
}
