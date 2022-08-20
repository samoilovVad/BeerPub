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
    @IBOutlet weak var checkRemainder: UIButton!
    @IBOutlet weak var buyFirst: UIButton!
    @IBOutlet weak var buySecond: UIButton!
    @IBOutlet weak var buyThird: UIButton!
    @IBOutlet weak var buyFourth: UIButton!
    @IBOutlet weak var revenueButton: UIButton!
    @IBOutlet weak var newShiftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // labels
        labelFirst.text = "\(Manager.instance.arrayOfBeers[0].name) \(Manager.instance.arrayOfBeers[0].country)"
        labelSecond.text = "\(Manager.instance.arrayOfBeers[1].name) \(Manager.instance.arrayOfBeers[1].country)"
        labelThird.text = "\(Manager.instance.arrayOfBeers[2].name) \(Manager.instance.arrayOfBeers[2].country)"
        labelFourth.text = "\(Manager.instance.arrayOfBeers[3].name) \(Manager.instance.arrayOfBeers[3].country)"
        
    }

    @IBAction func infoTapped(_ sender: Any) {
    }
    @IBAction func checkRemainderTapped(_ sender: Any) {
    }
    @IBAction func buyFirstTapped(_ sender: Any) {
        
    }
    @IBAction func buySecondTapped(_ sender: Any) {
        print(sender)
    }
    @IBAction func buyThirdTapped(_ sender: Any) {
        print(sender)
    }
    @IBAction func buyFourthTapped(_ sender: Any) {
        print(sender)
    }
    @IBAction func revenueTapped(_ sender: Any) {
    }
    @IBAction func newShiftTapped(_ sender: Any) {
    }
    
}

// MARK: set style
extension ViewController {
    
    // labels

}


