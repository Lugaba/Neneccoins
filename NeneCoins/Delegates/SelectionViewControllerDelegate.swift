//
//  SelectionViewControllerDelegate.swift
//  NeneCoins
//
//  Created by Gabriel Ferreira de Carvalho on 09/02/22.
//

import Foundation

protocol SelectionViewControllerDelegate: AnyObject {
    func didSelect(coin: Coin)
}
