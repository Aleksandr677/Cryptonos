//
//  DetailViewModel.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-17.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetail
            .sink { returnedCoinDetails in
                print("Received coin detail data: \(returnedCoinDetails)")
            }
            .store(in: &cancellables)
    }
}
