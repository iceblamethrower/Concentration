//
//  Card.swift
//  Concentration
//
//  Created by Roman Gorshkov on 02/03/2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import Foundation

public struct Card {
    var isFaceUp = false
    var isMatched = false
    var id: Int
    
    private static var idFactory = 0
    
    private static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
    }
    
    init() {
        self.id = Card.getUniqueId()
    }
}
