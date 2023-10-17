//
//  SectionView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 11/10/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTY

    @State var rotateClockwise: Bool
    
    // MARK: - BODY

    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(PreferencesManager.Colors.colorGray.cornerRadius(20))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
    }
}
