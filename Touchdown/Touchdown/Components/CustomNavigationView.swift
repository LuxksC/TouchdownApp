//
//  CustomNavigationView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 05/10/23.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        HStack {
            Button(
                action: {
                    print("SearchButton")
            }, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
            })
            
            Spacer()
            
            LogoView()
            
            Spacer()
            
            Button(
                action: {
                    print("CartButton")
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.title)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 12, height: 12, alignment: .center)
                        .offset(x: 14, y: -9)
                }
            })
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
