//
//  HomeUseCase.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 04/10/23.
//

import Foundation

protocol HomeUseCaseProtocol {
    func getCategories(completionHandler: @escaping (MockResponse<[Category]>) -> Void)
    func getPlayers(completionHandler: @escaping (MockResponse<[Player]>) -> Void)
    func getProducts(completionHandler: @escaping (MockResponse<[Product]>) -> Void)
    func getBrands(completionHandler: @escaping (MockResponse<[Brand]>) -> Void)
}

final class HomeUseCase: HomeUseCaseProtocol {
    
    func getCategories(completionHandler: @escaping (MockResponse<[Category]>) -> Void) {
        Bundle.main.decode("category.json", completionHandler: completionHandler)
    }
    
    func getPlayers(completionHandler: @escaping (MockResponse<[Player]>) -> Void) {
        Bundle.main.decode("player.json", completionHandler: completionHandler)
    }
    
    func getProducts(completionHandler: @escaping (MockResponse<[Product]>) -> Void) {
        Bundle.main.decode("product.json", completionHandler: completionHandler)
    }
    
    func getBrands(completionHandler: @escaping (MockResponse<[Brand]>) -> Void) {
        Bundle.main.decode("brand.json", completionHandler: completionHandler)
    }
}
