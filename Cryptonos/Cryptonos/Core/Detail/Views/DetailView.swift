//
//  DetailView.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-15.
//

import SwiftUI

struct DetailLoadingView: View {
    //MARK: - PROPERTIES
    @Binding var coin: CoinModel?
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    //MARK: - PROPERTIES
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("Initializing Detail View for \(coin.name)")
    }
    
    //MARK: - BODY
    var body: some View {
        Text(coin.name)
    }
}

//MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
