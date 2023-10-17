//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 17/10/23.
//

import SwiftUI

struct ProductGridView: View {
    let products: [Product]
    
    var body: some View {
        LazyVGrid(
            columns: PreferencesManager.Measures.gridLayout,
            alignment: .center,
            spacing: PreferencesManager.Measures.rowSpacing
        ) {
            ForEach(products) { product in
                ProductItemView(product: product)
            }
        }
        .padding()
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: Samples.products)
    }
}
