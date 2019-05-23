//
//  Card.swift
//  Concentration
//
//  Created by Roman Gorshkov on 02/03/2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var isFaceUp = false
    var isMatched = false
    private var id: Int
    
    private static var idFactory = 0
    
    private static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    init() {
        self.id = Card.getUniqueId()
    }
}
