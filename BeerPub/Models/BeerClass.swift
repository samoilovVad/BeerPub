//
//  BeerClass.swift
//  BeerPub
//
//  Created by Vadim Samoilov on 20.08.22.
//

import Foundation

class Beer {
    var name: String
    var price: Float
    var country: String
    var remainderOfVolume: Float
    
    init(name: String, price: Float, country: String, remainderOfVolume: Float) {
        self.name = name
        self.price = price
        self.country = country
        self.remainderOfVolume = remainderOfVolume
    }
}

