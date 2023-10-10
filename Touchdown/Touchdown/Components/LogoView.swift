//
//  LogoView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 05/10/23.
//

import SwiftUI

struct LogoView: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
        .opacity(isAnimating ? 1.0 : 0)
        .offset(y: isAnimating ? 0 : -18)
        .onAppear {
            withAnimation(.easeOut) {
                isAnimating = true
            }
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
