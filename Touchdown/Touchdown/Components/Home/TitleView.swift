//
//  TitleView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 17/10/23.
//

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 16)
        .padding(.bottom, 12)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Brands")
    }
}
