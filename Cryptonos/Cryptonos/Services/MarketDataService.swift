//
//  MarketDataService.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-12.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData: MarketData? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion,
                  receiveValue: { [weak self] (globalData) in
                self?.marketData = globalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
