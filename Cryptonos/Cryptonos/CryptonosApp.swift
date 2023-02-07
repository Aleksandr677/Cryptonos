//
//  CryptonosApp.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-07.
//

import SwiftUI

@main
struct CryptonosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}
