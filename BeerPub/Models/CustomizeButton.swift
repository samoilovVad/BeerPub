//
//  TuneButton.swift
//  BeerPub
//
//  Created by Vadim Samoilov on 28.08.22.
//

import Foundation
import UIKit

struct CustomizeButton {
    func tune(_ button: UIButton) {
        button.layer.cornerRadius = 20
        button.tintColor = .black
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowRadius = 10
        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        button.layer.shadowOpacity = 1
    }
}
