//
//  HomeView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 05/10/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties

    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    // MARK: - Body

    var body: some View {
//        if viewModel.isLoading {
//            LoaderView()
//        } else if let error = viewModel.errorMessage, !viewModel.isLoading {
//            ErrorView(message: error) { viewModel.loadData() }
//        } else {
//            contentView
//        }
        
        contentView
        
    }
    
    // MARK: - Content

    var contentView: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    PlayerCarrousselView(players: viewModel.players)
                        .frame(height: 240)
                        .padding(.top, (PreferencesManager.Measures.safeAreaInsets?.top ?? 0) + 60)
                    
                    CategoryGridView(categories: viewModel.categories)
                    
                    TitleView(title: "Helmets")
                    
                    ProductGridView(products: viewModel.products)
                    
                    TitleView(title: "Brands")
                    
                    BrandGridView(brands: viewModel.brands)
                    
                    FooterView()
                }
                
            }
        }
        .background(PreferencesManager.Colors.colorBackground)
        .ignoresSafeArea(.all, edges: .top)
        .safeAreaInset(edge: .top) {
            // How to consider safe area edges after iOS 15
            CustomNavigationView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .background(Color.white)
                .shadow(
                    color: Color.black.opacity(0.1),
                    radius: 5,
                    x: 0,
                    y: 5
                )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
        HomeView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
