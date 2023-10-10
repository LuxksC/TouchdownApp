//
//  MockResponse.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 04/10/23.
//

enum MockResponse<T: Codable> {
    case success(response: T)
    case failure(message: String?)
}
