//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 11/10/23.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(category.image)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
            
            Text(category.name.uppercased())
                .fontWeight(.light)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 2)
        )
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Samples.category)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(PreferencesManager.Colors.colorBackground)
    }
}
