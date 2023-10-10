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
}

final class HomeUseCase: HomeUseCaseProtocol {
    
    func getCategories(completionHandler: @escaping (MockResponse<[Category]>) -> Void) {
        Bundle.main.decode("category.json", completionHandler: completionHandler)
    }
    
    func getPlayers(completionHandler: @escaping (MockResponse<[Player]>) -> Void) {
        Bundle.main.decode("player.json", completionHandler: completionHandler)
    }
}
