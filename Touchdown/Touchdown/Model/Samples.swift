//
//  Samples.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 06/10/23.
//

import Foundation

struct Samples {
    
    // MARK: - Player

    static var player: Player = Player(
        id: 1,
        image: "american-football-player-no1"
    )
    
    // MARK: - [Player]

    static var players: [Player] = [
        Player(
            id: 1,
            image: "american-football-player-no1"
        ),
        Player(
            id: 2,
            image: "american-football-player-no2"
        ),
        Player(
            id: 3,
            image: "american-football-player-no3"
        )
    ]
    
    // MARK: - Category
    
    static var category: Category = Category(
        id: 1,
        name: "Helmet",
        image: "icon-helmet"
    )
    
    // MARK: - [Category]

    static var categories: [Category] = [
        Category(
            id: 1,
            name: "Helmet",
            image: "icon-helmet"
        ),
        Category(
            id: 2,
            name: "Jersey",
            image: "icon-jersey"
        ),
        Category(
            id: 3,
            name: "Gloves",
            image: "icon-gloves"
        ),
        Category(
            id: 4,
            name: "Shoes",
            image: "icon-shoes"
        )
    
    ]
    
    // MARK: - Product
    
    static var product = Product(
        id: 1,
        name: "Blue helmet",
        image: "helmet-no6",
        price: 199,
        description: "The football helmet is a piece of protective equipment used mainly in gridiron football. It consists of a hard plastic shell with thick padding on the inside, a face mask made of one or more plastic-coated metal bars, and a chinstrap. Each position has a different type of face mask to balance protection and visibility, and some players add polycarbonate visors to their helmets, which are used to protect their eyes from glare and impacts. Helmets are a requirement at all levels of organized football.",
        color: [
            0.61,
            0.8,
            0.89
          ]
    )
    
    // MARK: - [Product]
    
    static var products = [
        Product(
            id: 1,
            name: "Blue helmet",
            image: "helmet-no6",
            price: 199,
            description: "The football helmet is a piece of protective equipment used mainly in gridiron football. It consists of a hard plastic shell with thick padding on the inside, a face mask made of one or more plastic-coated metal bars, and a chinstrap. Each position has a different type of face mask to balance protection and visibility, and some players add polycarbonate visors to their helmets, which are used to protect their eyes from glare and impacts. Helmets are a requirement at all levels of organized football.",
            color: [
                0.61,
                0.8,
                0.89
              ]
        ),
        Product(
            id: 2,
            name: "Yellow helmet",
            image: "helmet-no2",
            price: 199,
            description: "The football helmet is a piece of protective equipment used mainly in gridiron football. It consists of a hard plastic shell with thick padding on the inside, a face mask made of one or more plastic-coated metal bars, and a chinstrap. Each position has a different type of face mask to balance protection and visibility, and some players add polycarbonate visors to their helmets, which are used to protect their eyes from glare and impacts. Helmets are a requirement at all levels of organized football.",
            color: [
                0.97,
                0.87,
                0.49
              ]
        ),
        Product(
            id: 3,
            name: "Green helmet",
            image: "helmet-no3",
            price: 189,
            description: "The football helmet is a piece of protective equipment used mainly in gridiron football. It consists of a hard plastic shell with thick padding on the inside, a face mask made of one or more plastic-coated metal bars, and a chinstrap. Each position has a different type of face mask to balance protection and visibility, and some players add polycarbonate visors to their helmets, which are used to protect their eyes from glare and impacts. Helmets are a requirement at all levels of organized football.",
            color: [
                0.53,
                0.82,
                0.63
              ]
        )
    ]
    
    // MARK: - Brand
    
    static var brand = Brand(id: 1, image: "brand-no01")
    
    // MARK: - [Brand]
    
    static var brands = [
        Brand(id: 1, image: "brand-no01"),
        Brand(id: 2, image: "brand-no02"),
        Brand(id: 3, image: "brand-no03"),
        Brand(id: 4, image: "brand-no04"),
        Brand(id: 5, image: "brand-no05")
    ]
}
