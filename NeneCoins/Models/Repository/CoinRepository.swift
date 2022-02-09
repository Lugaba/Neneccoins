//
//  CoinRepository.swift
//  NeneCoins
//
//  Created by Gabriel Ferreira de Carvalho on 07/02/22.
//

import Foundation

class CoinRepository {
    
    static var shared: CoinRepository = CoinRepository()
    
    private let coins: [Coin] = [
        Coin(name: "Rebeccoin", abbreviation: "RBC", conversionFactor: 12.51),
        Coin(name: "Real", abbreviation: "R$", conversionFactor: 1),
        Coin(name: "Bahiaccoin", abbreviation: "BHC", conversionFactor: 5.71),
        Coin(name: "Carolccoin", abbreviation: "CLC", conversionFactor: 10.45),
        Coin(name: "Chevisccoin", abbreviation: "CVC", conversionFactor: 9.14),
        Coin(name: "Nathccoin", abbreviation: "NTC", conversionFactor: 10.13)]
    
    func fetchAllCoins() -> [Coin] {
        return coins
    }
    
    func fetchInitialData() -> (fromCoin: Coin, toCoin: Coin) {
        return (coins[0], coins[1])
    }
}
