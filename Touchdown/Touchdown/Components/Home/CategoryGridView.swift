//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 11/10/23.
//

import SwiftUI

struct CategoryGridView: View {
    let categories: [Category]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(
                rows: PreferencesManager.Measures.gridLayout,
                alignment: .center,
                spacing: PreferencesManager.Measures.columSpacing,
                pinnedViews: []
            ) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: Samples.categories)
            .previewLayout(.sizeThatFits)
            .background(PreferencesManager.Colors.colorBackground)
    }
}
