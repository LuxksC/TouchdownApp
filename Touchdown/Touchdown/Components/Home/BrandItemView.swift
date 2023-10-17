//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 17/10/23.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(6)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 2)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Samples.brand)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(PreferencesManager.Colors.colorBackground)
    }
}
