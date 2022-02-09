//
//  SelectionTableViewDataSource.swift
//  NeneCoins
//
//  Created by Gabriel Ferreira de Carvalho on 08/02/22.
//

import Foundation
import UIKit

class SelectionTableViewDataSource: NSObject, UITableViewDataSource {
    let data: [Coin]
    
    init(coins: [Coin]) {
        self.data = coins
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SelectionView.cellIdentifier, for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row].name
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        
        cell.backgroundColor = .secondarySystemBackground
        return cell
    }
    
    
}
