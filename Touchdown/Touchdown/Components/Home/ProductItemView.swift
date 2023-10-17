//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 17/10/23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(12)
                .background(product.formatedColor.cornerRadius(12))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.heavy)
            
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Samples.product)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
