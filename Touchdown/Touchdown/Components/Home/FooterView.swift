//
//  FooterView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 05/10/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("The most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Lucas de Castro\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
