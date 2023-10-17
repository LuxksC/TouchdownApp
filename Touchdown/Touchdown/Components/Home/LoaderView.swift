//
//  LoaderView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 06/10/23.
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        ZStack {
            PreferencesManager.Colors.colorBackground.ignoresSafeArea()
            
            ProgressView() {
                Text("Loading ...")
                    .foregroundColor(.accentColor)
                    .fontWeight(.bold)
                    .padding(.top, 16)
            }
            .progressViewStyle(.circular)
            .tint(.accentColor)
            .controlSize(.large)
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
