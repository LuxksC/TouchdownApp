//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 17/10/23.
//

import SwiftUI

struct BrandGridView: View {
    let brands: [Brand]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(
                rows: PreferencesManager.Measures.gridLayout,
                spacing: PreferencesManager.Measures.columSpacing
            ) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding()
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView(brands: Samples.brands)
            .previewLayout(.sizeThatFits)
            .padding(32)
            .frame(height: 300)
    }
}
