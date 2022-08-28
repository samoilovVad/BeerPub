//
//  ViewController.swift
//  BeerPub
//
//  Created by Vadim Samoilov on 20.08.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelCheckRevenue: UILabel!
    @IBOutlet weak var labelFourth: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var buyFirst: UIButton!
    @IBOutlet weak var buySecond: UIButton!
    @IBOutlet weak var buyThird: UIButton!
    @IBOutlet weak var buyFourth: UIButton!
    @IBOutlet weak var revenueButton: UIButton!
    @IBOutlet weak var newShiftButton: UIButton!
    
    let customizeButton = CustomizeButton()
    let customizeLabel = CustomizeLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9228420854, green: 0.854423821, blue: 0.7227374315, alpha: 1)
 // MARK: set style
        // labels
        labelFirst.text = "\(Manager.instance.arrayOfBeers[0].name) \(Manager.instance.arrayOfBeers[0].country)\n0.5l"
        labelSecond.text = "\(Manager.instance.arrayOfBeers[1].name) \(Manager.instance.arrayOfBeers[1].country)\n0.5l"
        labelThird.text = "\(Manager.instance.arrayOfBeers[2].name) \(Manager.instance.arrayOfBeers[2].country)\n0.5l"
        labelFourth.text = "\(Manager.instance.arrayOfBeers[3].name) \(Manager.instance.arrayOfBeers[3].country)\n0.5l"
        for label in [labelFirst, labelCheckRevenue, labelThird, labelSecond, labelFourth] {
            guard let label = label else {return}
            customizeLabel.tune(label)
        }
        // set buttons styles
        for button in [buyFirst, buySecond, buyThird, buyFourth, revenueButton, newShiftButton] {
            guard let button = button else {return}
            customizeButton.tune(button)
        }
        // button titles
        buyFirst.setTitle("Buy\n\(Manager.instance.arrayOfBeers[0].price)$", for: .normal)
        buySecond.setTitle("Buy\n\(Manager.instance.arrayOfBeers[1].price)$", for: .normal)
        buyThird.setTitle("Buy\n\(Manager.instance.arrayOfBeers[2].price)$", for: .normal)
        buyFourth.setTitle("Buy\n\(Manager.instance.arrayOfBeers[3].price)$", for: .normal)
    }
    // MARK: action for buttons
    // Action for info button
    @IBAction func infoTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Info",
                                      message: setTextInfo(),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // Action for buy buttons
    @IBAction func buyFirstTapped(_ sender: Any) {
        buyFirst.layer.shadowOpacity = 0
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
        labelCheckRevenue.text = "Revenue: \(String(format: "%.2f", Manager.instance.priceCounter))$"
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
        
    }
    @IBAction func buySecondTapped(_ sender: Any) {
        buySecond.layer.shadowOpacity = 0
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
        labelCheckRevenue.text = "Revenue: \(String(format: "%.2f", Manager.instance.priceCounter))$"
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
    }
    @IBAction func buyThirdTapped(_ sender: Any) {
        buyThird.layer.shadowOpacity = 0
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
        labelCheckRevenue.text = "Revenue: \(String(format: "%.2f", Manager.instance.priceCounter))$"
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
    }
    @IBAction func buyFourthTapped(_ sender: Any) {
        buyFourth.layer.shadowOpacity = 0
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
        labelCheckRevenue.text = "Revenue: \(String(format: "%.2f", Manager.instance.priceCounter))$"
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
    }
    
    // Action for revenue button
    @IBAction func revenueTapped(_ sender: Any) {
        revenueButton.layer.shadowOpacity = 0
        let alert = UIAlertController(title: "Revenue of the day",
                                      message: "\(Manager.instance.priceCounter)$",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
    }
    // Action for new shift button
    @IBAction func newShiftTapped(_ sender: Any) {
        newShiftButton.layer.shadowOpacity = 0
        Manager.instance.priceCounter = 0.0
        let alert = UIAlertController(title: "Remainder of Volume",
                                      message: setTextInfo(),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        labelCheckRevenue.text = "Revenue: \(String(format: "%.2f", Manager.instance.priceCounter))$"
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(returnShadow), userInfo: nil, repeats: false)
        
    }
    
}

// MARK: set text info
extension ViewController {
    
    func setTextInfo() -> String? {
        var text = ""
        
        for i in Manager.instance.arrayOfBeers {
            text += "\(i.name) - \(i.remainderOfVolume) litres\n"
        }
        return text
    }
    
    // return shadow after action
    @objc func returnShadow() {
        buyFirst.layer.shadowOpacity = 1
        buySecond.layer.shadowOpacity = 1
        buyThird.layer.shadowOpacity = 1
        buyFourth.layer.shadowOpacity = 1
        revenueButton.layer.shadowOpacity = 1
        newShiftButton.layer.shadowOpacity = 1
    }
}



