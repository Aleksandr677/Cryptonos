//
//  HomeView.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-07.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    @State private var showPortfolio: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            //background layer
            Color.theme.background.ignoresSafeArea()
            
            //content layer
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
        } //ZStack
    }
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarBackButtonHidden()
        }
    }
}

//MARK: - EXTENTIONS
extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none, value: showPortfolio)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
