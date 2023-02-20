//
//  CryptonosApp.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-07.
//

import SwiftUI

@main
struct CryptonosApp: App {
    @StateObject private var vm = HomeViewModel()
    @State private var showLauchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarBackButtonHidden()
                }
                .navigationViewStyle(.stack)
                .environmentObject(vm)
                
                ZStack {
                    if showLauchView {
                        LaunchView(showLaunchView: $showLauchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
