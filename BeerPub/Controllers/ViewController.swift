//
//  ViewController.swift
//  BeerPub
//
//  Created by Vadim Samoilov on 20.08.22.
//

import UIKit

class ViewController: UIViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9228420854, green: 0.854423821, blue: 0.7227374315, alpha: 1)
        
        // labels
        labelFirst.text = "\(Manager.instance.arrayOfBeers[0].name) \(Manager.instance.arrayOfBeers[0].country)\n0.5l"
        labelSecond.text = "\(Manager.instance.arrayOfBeers[1].name) \(Manager.instance.arrayOfBeers[1].country)\n0.5l"
        labelThird.text = "\(Manager.instance.arrayOfBeers[2].name) \(Manager.instance.arrayOfBeers[2].country)\n0.5l"
        labelFourth.text = "\(Manager.instance.arrayOfBeers[3].name) \(Manager.instance.arrayOfBeers[3].country)\n0.5l"
        // set buttons styles
        buyFirst.layer.cornerRadius = 20
        buySecond.layer.cornerRadius = 20
        buyThird.layer.cornerRadius = 20
        buyFourth.layer.cornerRadius = 20
        revenueButton.layer.cornerRadius = 20
        newShiftButton.layer.cornerRadius = 20
        // button titles
        buyFirst.setTitle("Buy\n\(Manager.instance.arrayOfBeers[0].price)$", for: .normal)
        buySecond.setTitle("Buy\n\(Manager.instance.arrayOfBeers[1].price)$", for: .normal)
        buyThird.setTitle("Buy\n\(Manager.instance.arrayOfBeers[2].price)$", for: .normal)
        buyFourth.setTitle("Buy\n\(Manager.instance.arrayOfBeers[3].price)$", for: .normal)
    }
    
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
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
    }
    @IBAction func buySecondTapped(_ sender: Any) {
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
    }
    @IBAction func buyThirdTapped(_ sender: Any) {
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
    }
    @IBAction func buyFourthTapped(_ sender: Any) {
        guard let title = (sender as! UIButton).titleLabel?.text else {return}
        Manager.instance.sellBeer(a: title)
    }
    
    // Action for revenue button
    @IBAction func revenueTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Revenue of the day",
                                      message: "\(Manager.instance.priceCounter)$",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    // Action for new shift button
    @IBAction func newShiftTapped(_ sender: Any) {
        Manager.instance.priceCounter = 0.0
        let alert = UIAlertController(title: "Remainder of Volume",
                                      message: setTextInfo(),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
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
}



