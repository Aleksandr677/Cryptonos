//
//  UIApplication.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-11.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
