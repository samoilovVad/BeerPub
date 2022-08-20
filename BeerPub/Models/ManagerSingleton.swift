//
//  ManagerSingleton.swift
//  BeerPub
//
//  Created by Vadim Samoilov on 20.08.22.
//

import Foundation

class Manager {
    static let instance = Manager()
    private init() {}
    
    var priceCounter : Float = 0.0
    var arrayOfBeers = [
        Beer(name: "Newcastle Brown Ale", price: 2.75, country: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", remainderOfVolume: 50.0),
        Beer(name: "Petrus Roodbruin", price: 2.9, country: "🇧🇪", remainderOfVolume: 50.0),
        Beer(name: "Spaten Premium Lager", price: 3.5, country: "🇩🇪", remainderOfVolume: 50.0),
        Beer(name: "Breznycki Lezak", price: 2.4, country: "🇨🇿", remainderOfVolume: 50.0)
    ]
    
    func sellBeer(a: String) {
        switch a {
        case "Buy\n\(arrayOfBeers[0].price)$": priceCounter += arrayOfBeers[0].price; arrayOfBeers[0].remainderOfVolume -= 0.5
        case "Buy\n\(arrayOfBeers[1].price)$": priceCounter += arrayOfBeers[1].price; arrayOfBeers[1].remainderOfVolume -= 0.5
        case "Buy\n\(arrayOfBeers[2].price)$": priceCounter += arrayOfBeers[2].price; arrayOfBeers[2].remainderOfVolume -= 0.5
        case "Buy\n\(arrayOfBeers[3].price)$": priceCounter += arrayOfBeers[3].price; arrayOfBeers[3].remainderOfVolume -= 0.5
        default : print("Error")
        }
    }
}
