//
//  Measures.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 06/10/23.
//

import Foundation
import SwiftUI

public extension PreferencesManager {
    enum Measures {
        static var safeAreaInsets: UIEdgeInsets? {
            let keyWindow = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow})
                .first
            return keyWindow?.safeAreaInsets
        }
    }
}


