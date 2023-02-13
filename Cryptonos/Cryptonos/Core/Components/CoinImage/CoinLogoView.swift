//
//  CoinLogoView.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-13.
//

import SwiftUI

struct CoinLogoView: View {
    //MARK: - PROPERTIES
    let coin: CoinModel
    
    //MARK: - BODY
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

//MARK: - PREVIEW
struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {
        CoinLogoView(coin: dev.coin)
            .previewLayout(.sizeThatFits)
    }
}
